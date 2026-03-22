package microsoft.aspnet.signalr.client.http.java;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.http.StreamResponse;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class NetworkRunnable implements Runnable {
    HttpConnectionFuture.ResponseCallback mCallback;
    HttpConnectionFuture mFuture;
    Logger mLogger;
    Request mRequest;
    boolean mSkipCookie;
    HttpURLConnection mConnection = null;
    InputStream mResponseStream = null;
    Object mCloseLock = new Object();

    public NetworkRunnable(Logger logger, Request request, HttpConnectionFuture httpConnectionFuture, HttpConnectionFuture.ResponseCallback responseCallback, boolean z) {
        this.mLogger = logger;
        this.mRequest = request;
        this.mFuture = httpConnectionFuture;
        this.mCallback = responseCallback;
        this.mSkipCookie = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        int responseCode = -1;
        try {
            if (!this.mFuture.isCancelled()) {
                if (this.mRequest == null) {
                    this.mFuture.triggerError(new IllegalArgumentException("request"));
                    return;
                }
                this.mLogger.log("Execute the HTTP Request", LogLevel.Verbose);
                this.mRequest.log(this.mLogger);
                this.mConnection = createHttpURLConnection(this.mRequest, this.mLogger, this.mSkipCookie);
                this.mLogger.log("Request executed", LogLevel.Verbose);
                responseCode = this.mConnection.getResponseCode();
                if (responseCode < 400) {
                    this.mResponseStream = this.mConnection.getInputStream();
                } else {
                    this.mResponseStream = this.mConnection.getErrorStream();
                }
            }
            if (this.mResponseStream != null && !this.mFuture.isCancelled()) {
                this.mCallback.onResponse(new StreamResponse(this.mResponseStream, responseCode, this.mConnection.getHeaderFields()));
                this.mFuture.setResult(null);
            }
        } catch (Throwable th) {
            if (!this.mFuture.isCancelled()) {
                if (this.mConnection != null) {
                    this.mConnection.disconnect();
                }
                this.mLogger.log("Error executing request: " + th.getMessage(), LogLevel.Critical);
                this.mFuture.triggerError(th);
            }
        } finally {
            closeStreamAndConnection();
        }
    }

    void closeStreamAndConnection() {
        try {
            if (this.mConnection != null) {
                this.mConnection.disconnect();
            }
            if (this.mResponseStream != null) {
                this.mResponseStream.close();
            }
        } catch (Exception e) {
        }
    }

    static HttpURLConnection createHttpURLConnection(Request request, Logger logger, boolean z) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(request.getUrl()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setRequestMethod(request.getVerb());
        Map<String, String> headers = request.getHeaders();
        httpURLConnection.setRequestProperty("User-Agent", headers.get("User-Agent"));
        for (String str : headers.keySet()) {
            if (str.equals("Cookie") && z) {
                logger.log("NR.createHttpURLConnection() skipping duplicate cookies", LogLevel.Information);
            } else {
                httpURLConnection.setRequestProperty(str, headers.get(str));
            }
        }
        if (request.getContent() != null) {
            httpURLConnection.setDoOutput(true);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
            outputStreamWriter.write(request.getContent());
            outputStreamWriter.close();
        }
        return httpURLConnection;
    }
}
