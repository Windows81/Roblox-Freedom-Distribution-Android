package microsoft.aspnet.signalr.client.transport;

import java.io.IOException;
import java.util.Iterator;
import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.FutureHelper;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.Platform;
import microsoft.aspnet.signalr.client.SignalRFuture;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;
import microsoft.aspnet.signalr.client.http.InvalidHttpStatusCodeException;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.http.Response;

/* JADX INFO: loaded from: classes.dex */
public abstract class HttpClientTransport implements ClientTransport {
    protected static final int BUFFER_SIZE = 1024;
    protected SignalRFuture<Void> mAbortFuture;
    protected HttpConnection mHttpConnection;
    private Logger mLogger;
    protected boolean mStartedAbort;

    public HttpClientTransport(Logger logger) {
        this(logger, Platform.createHttpConnection(logger));
    }

    public HttpClientTransport(Logger logger, HttpConnection httpConnection) {
        this.mStartedAbort = false;
        this.mAbortFuture = null;
        if (logger == null) {
            throw new IllegalArgumentException("logger");
        }
        this.mHttpConnection = httpConnection;
        this.mLogger = logger;
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<NegotiationResponse> negotiate(final ConnectionBase connectionBase) {
        log("Start the negotiation with the server", LogLevel.Information);
        String str = connectionBase.getUrl() + "negotiate" + TransportHelper.getNegotiateQueryString(connectionBase);
        Request request = new Request(Constants.HTTP_GET);
        request.setUrl(str);
        request.setHeaders(connectionBase.getHeaders());
        request.setVerb(Constants.HTTP_GET);
        connectionBase.prepareRequest(request);
        final SignalRFuture<NegotiationResponse> signalRFuture = new SignalRFuture<>();
        log("Execute the request", LogLevel.Verbose);
        FutureHelper.copyHandlers(this.mHttpConnection.execute(request, new HttpConnectionFuture.ResponseCallback() { // from class: microsoft.aspnet.signalr.client.transport.HttpClientTransport.1
            @Override // microsoft.aspnet.signalr.client.http.HttpConnectionFuture.ResponseCallback
            public void onResponse(Response response) {
                try {
                    HttpClientTransport.this.log("Response received", LogLevel.Verbose);
                    HttpClientTransport.this.throwOnInvalidStatusCode(response);
                    HttpClientTransport.this.log("Read response data to the end", LogLevel.Verbose);
                    String toEnd = response.readToEnd();
                    HttpClientTransport.this.log("Trigger onSuccess with negotiation data: " + toEnd, LogLevel.Verbose);
                    signalRFuture.setResult(new NegotiationResponse(toEnd, connectionBase.getJsonParser()));
                } catch (Throwable th) {
                    HttpClientTransport.this.log(th);
                    signalRFuture.triggerError(new NegotiationException("There was a problem in the negotiation with the server", th));
                }
            }
        }), (SignalRFuture<?>) signalRFuture);
        return signalRFuture;
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> send(ConnectionBase connectionBase, String str, final DataResultCallback dataResultCallback) {
        try {
            log("Start sending data to the server: " + str, LogLevel.Information);
            Request request = new Request(Constants.HTTP_POST);
            request.setFormContent("data", str);
            request.setUrl(connectionBase.getUrl() + "send" + TransportHelper.getSendQueryString(this, connectionBase));
            request.setHeaders(connectionBase.getHeaders());
            request.addHeader("Content-Type", "application/x-www-form-urlencoded");
            connectionBase.prepareRequest(request);
            log("Execute the request", LogLevel.Verbose);
            return this.mHttpConnection.execute(request, new HttpConnectionFuture.ResponseCallback() { // from class: microsoft.aspnet.signalr.client.transport.HttpClientTransport.2
                @Override // microsoft.aspnet.signalr.client.http.HttpConnectionFuture.ResponseCallback
                public void onResponse(Response response) throws Exception {
                    HttpClientTransport.this.log("Response received", LogLevel.Verbose);
                    HttpClientTransport.this.throwOnInvalidStatusCode(response);
                    HttpClientTransport.this.log("Read response to the end", LogLevel.Verbose);
                    String toEnd = response.readToEnd();
                    if (toEnd != null) {
                        HttpClientTransport.this.log("Trigger onData with data: " + toEnd, LogLevel.Verbose);
                        dataResultCallback.onData(toEnd);
                    }
                }
            });
        } catch (Throwable th) {
            log(th);
            SignalRFuture<Void> signalRFuture = new SignalRFuture<>();
            signalRFuture.triggerError(th);
            return signalRFuture;
        }
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> abort(ConnectionBase connectionBase) {
        SignalRFuture<Void> signalRFuture;
        synchronized (this) {
            if (!this.mStartedAbort) {
                log("Started aborting", LogLevel.Information);
                this.mStartedAbort = true;
                try {
                    String str = connectionBase.getUrl() + "abort" + TransportHelper.getSendQueryString(this, connectionBase);
                    Request request = new Request(Constants.HTTP_POST);
                    request.setUrl(str);
                    request.setHeaders(connectionBase.getHeaders());
                    connectionBase.prepareRequest(request);
                    log("Execute request", LogLevel.Verbose);
                    this.mAbortFuture = this.mHttpConnection.execute(request, new HttpConnectionFuture.ResponseCallback() { // from class: microsoft.aspnet.signalr.client.transport.HttpClientTransport.3
                        @Override // microsoft.aspnet.signalr.client.http.HttpConnectionFuture.ResponseCallback
                        public void onResponse(Response response) {
                            HttpClientTransport.this.log("Finishing abort", LogLevel.Verbose);
                            HttpClientTransport.this.mStartedAbort = false;
                        }
                    });
                    signalRFuture = this.mAbortFuture;
                } catch (Throwable th) {
                    log(th);
                    log("Finishing abort -- Throwable", LogLevel.Verbose);
                    this.mStartedAbort = false;
                    signalRFuture = new SignalRFuture<>();
                    signalRFuture.triggerError(th);
                }
            } else {
                signalRFuture = this.mAbortFuture;
            }
        }
        return signalRFuture;
    }

    protected void throwOnInvalidStatusCode(Response response) throws InvalidHttpStatusCodeException, IOException {
        String toEnd;
        if (response.getStatus() < 200 || response.getStatus() > 299) {
            try {
                toEnd = response.readToEnd();
            } catch (IOException e) {
                toEnd = "";
            }
            StringBuilder sb = new StringBuilder();
            for (String str : response.getHeaders().keySet()) {
                sb.append("[");
                sb.append(str);
                sb.append(": ");
                Iterator<String> it = response.getHeader(str).iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append("; ");
                }
                sb.append("]; ");
            }
            throw new InvalidHttpStatusCodeException(response.getStatus(), toEnd, sb.toString());
        }
    }

    protected void log(String str, LogLevel logLevel) {
        this.mLogger.log(getName() + " - " + str, logLevel);
    }

    protected void log(Throwable th) {
        this.mLogger.log(getName() + " - Error: " + th.toString(), LogLevel.Critical);
    }

    protected void rblog(String str) {
        log(str, LogLevel.Verbose);
    }
}
