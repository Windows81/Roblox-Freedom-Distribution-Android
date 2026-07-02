package microsoft.aspnet.signalr.client.http.android;

import android.annotation.SuppressLint;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.Platform;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.http.StreamResponse;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

/* JADX INFO: loaded from: classes.dex */
public class AndroidHttpConnection implements HttpConnection {
    private Logger mLogger;

    public AndroidHttpConnection(Logger logger) {
        if (logger == null) {
            throw new IllegalArgumentException("logger");
        }
        this.mLogger = logger;
    }

    @Override // microsoft.aspnet.signalr.client.http.HttpConnection
    public HttpConnectionFuture execute(final Request request, final HttpConnectionFuture.ResponseCallback responseCallback) {
        this.mLogger.log("Create new AsyncTask for HTTP Connection", LogLevel.Verbose);
        final HttpConnectionFuture httpConnectionFuture = new HttpConnectionFuture();
        final RequestTask requestTask = new RequestTask() { // from class: microsoft.aspnet.signalr.client.http.android.AndroidHttpConnection.1
            AndroidHttpClient mClient;
            InputStream mResponseStream;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                if (request == null) {
                    httpConnectionFuture.triggerError(new IllegalArgumentException("request"));
                }
                this.mClient = AndroidHttpClient.newInstance(Platform.getUserAgent());
                this.mResponseStream = null;
                try {
                    AndroidHttpConnection.this.mLogger.log("Create an Android-specific request", LogLevel.Verbose);
                    request.log(AndroidHttpConnection.this.mLogger);
                    BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequestCreateRealRequest = AndroidHttpConnection.createRealRequest(request);
                    URI uri = new URI(request.getUrl());
                    HttpHost httpHost = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
                    AndroidHttpConnection.this.mLogger.log("Execute the HTTP Request", LogLevel.Verbose);
                    try {
                        HttpResponse httpResponseExecute = this.mClient.execute(httpHost, basicHttpEntityEnclosingRequestCreateRealRequest);
                        AndroidHttpConnection.this.mLogger.log("Request executed", LogLevel.Verbose);
                        this.mResponseStream = httpResponseExecute.getEntity().getContent();
                        Header[] allHeaders = httpResponseExecute.getAllHeaders();
                        HashMap map = new HashMap();
                        for (Header header : allHeaders) {
                            String name = header.getName();
                            if (map.containsKey(name)) {
                                ((List) map.get(name)).add(header.getValue());
                            } else {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(header.getValue());
                                map.put(name, arrayList);
                            }
                        }
                        responseCallback.onResponse(new StreamResponse(this.mResponseStream, httpResponseExecute.getStatusLine().getStatusCode(), map));
                        httpConnectionFuture.setResult(null);
                        closeStreamAndClient();
                    } catch (SocketTimeoutException e) {
                        closeStreamAndClient();
                        AndroidHttpConnection.this.mLogger.log("Timeout executing request: " + e.getMessage(), LogLevel.Information);
                        httpConnectionFuture.triggerTimeout(e);
                    }
                } catch (Exception e2) {
                    closeStreamAndClient();
                    AndroidHttpConnection.this.mLogger.log("Error executing request: " + e2.getMessage(), LogLevel.Critical);
                    httpConnectionFuture.triggerError(e2);
                }
                return null;
            }

            @Override // microsoft.aspnet.signalr.client.http.android.AndroidHttpConnection.RequestTask
            protected void closeStreamAndClient() {
                if (this.mResponseStream != null) {
                    try {
                        this.mResponseStream.close();
                    } catch (IOException e) {
                    }
                }
                if (this.mClient != null) {
                    this.mClient.close();
                }
            }
        };
        httpConnectionFuture.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.http.android.AndroidHttpConnection.2
            @Override // java.lang.Runnable
            public void run() {
                AndroidHttpConnection.this.executeTask(new AsyncTask<Void, Void, Void>() { // from class: microsoft.aspnet.signalr.client.http.android.AndroidHttpConnection.2.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public Void doInBackground(Void... voidArr) {
                        requestTask.closeStreamAndClient();
                        return null;
                    }
                });
            }
        });
        executeTask(requestTask);
        return httpConnectionFuture;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void executeTask(AsyncTask<Void, Void, Void> asyncTask) {
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            asyncTask.execute(new Void[0]);
        }
    }

    private abstract class RequestTask extends AsyncTask<Void, Void, Void> {
        protected abstract void closeStreamAndClient();

        private RequestTask() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BasicHttpEntityEnclosingRequest createRealRequest(Request request) throws UnsupportedEncodingException {
        BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest(request.getVerb(), request.getUrl());
        if (request.getContent() != null) {
            basicHttpEntityEnclosingRequest.setEntity(new StringEntity(request.getContent()));
        }
        Map<String, String> headers = request.getHeaders();
        for (String str : headers.keySet()) {
            basicHttpEntityEnclosingRequest.addHeader(str, headers.get(str));
        }
        return basicHttpEntityEnclosingRequest;
    }
}
