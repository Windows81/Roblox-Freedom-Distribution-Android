package microsoft.aspnet.signalr.client.transport;

import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.ConnectionState;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.ErrorCallback;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.SignalRFuture;
import microsoft.aspnet.signalr.client.UpdateableCancellableFuture;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.http.Response;

/* JADX INFO: loaded from: classes.dex */
public class LongPollingTransport extends HttpClientTransport {
    private UpdateableCancellableFuture<Void> mConnectionFuture;
    private Object mPollSync;

    public LongPollingTransport(Logger logger) {
        super(logger);
        this.mPollSync = new Object();
    }

    public LongPollingTransport(Logger logger, HttpConnection httpConnection) {
        super(logger, httpConnection);
        this.mPollSync = new Object();
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public String getName() {
        return "longPolling";
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public boolean supportKeepAlive() {
        return false;
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> start(ConnectionBase connectionBase, ConnectionType connectionType, DataResultCallback dataResultCallback) {
        return poll(connectionBase, connectionType == ConnectionType.InitialConnection ? "connect" : "reconnect", dataResultCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SignalRFuture<Void> poll(final ConnectionBase connectionBase, final String str, final DataResultCallback dataResultCallback) {
        UpdateableCancellableFuture<Void> updateableCancellableFuture;
        synchronized (this.mPollSync) {
            log("Start the communication with the server", LogLevel.Information);
            String str2 = connectionBase.getUrl() + str + TransportHelper.getReceiveQueryString(this, connectionBase);
            Request request = new Request(Constants.HTTP_GET);
            request.setUrl(str2);
            request.setHeaders(connectionBase.getHeaders());
            connectionBase.prepareRequest(request);
            log("Execute the request", LogLevel.Verbose);
            this.mConnectionFuture = new UpdateableCancellableFuture<>(null);
            final HttpConnectionFuture httpConnectionFutureExecute = this.mHttpConnection.execute(request, new HttpConnectionFuture.ResponseCallback() { // from class: microsoft.aspnet.signalr.client.transport.LongPollingTransport.1
                @Override // microsoft.aspnet.signalr.client.http.HttpConnectionFuture.ResponseCallback
                public void onResponse(Response response) {
                    synchronized (LongPollingTransport.this.mPollSync) {
                        try {
                            LongPollingTransport.this.throwOnInvalidStatusCode(response);
                            if (str != "poll") {
                                LongPollingTransport.this.mConnectionFuture.setResult(null);
                            }
                            LongPollingTransport.this.log("Response received", LogLevel.Verbose);
                            LongPollingTransport.this.log("Read response to the end", LogLevel.Verbose);
                            String toEnd = response.readToEnd();
                            if (toEnd != null) {
                                toEnd = toEnd.trim();
                            }
                            LongPollingTransport.this.log("Trigger onData with data: " + toEnd, LogLevel.Verbose);
                            dataResultCallback.onData(toEnd);
                        } catch (Throwable th) {
                            if (!LongPollingTransport.this.mConnectionFuture.isCancelled()) {
                                LongPollingTransport.this.log(th);
                                LongPollingTransport.this.mConnectionFuture.triggerError(th);
                            }
                        }
                        if (!LongPollingTransport.this.mConnectionFuture.isCancelled() && connectionBase.getState() == ConnectionState.Connected) {
                            LongPollingTransport.this.log("Continue polling", LogLevel.Verbose);
                            LongPollingTransport.this.mConnectionFuture.setFuture(LongPollingTransport.this.poll(connectionBase, "poll", dataResultCallback));
                        }
                    }
                }
            });
            httpConnectionFutureExecute.onTimeout(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.transport.LongPollingTransport.2
                @Override // microsoft.aspnet.signalr.client.ErrorCallback
                public void onError(Throwable th) {
                    synchronized (LongPollingTransport.this.mPollSync) {
                        if (str.equals("poll")) {
                            LongPollingTransport.this.mConnectionFuture.setFuture(LongPollingTransport.this.poll(connectionBase, "poll", dataResultCallback));
                        } else {
                            httpConnectionFutureExecute.triggerError(th);
                        }
                    }
                }
            });
            httpConnectionFutureExecute.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.transport.LongPollingTransport.3
                @Override // microsoft.aspnet.signalr.client.ErrorCallback
                public void onError(Throwable th) {
                    synchronized (LongPollingTransport.this.mPollSync) {
                        LongPollingTransport.this.mConnectionFuture.triggerError(th);
                    }
                }
            });
            this.mConnectionFuture.setFuture(httpConnectionFutureExecute);
            updateableCancellableFuture = this.mConnectionFuture;
        }
        return updateableCancellableFuture;
    }
}
