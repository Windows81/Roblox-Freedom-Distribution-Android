package microsoft.aspnet.signalr.client.transport;

import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.SignalRFuture;
import microsoft.aspnet.signalr.client.http.HttpConnection;
import microsoft.aspnet.signalr.client.http.HttpConnectionFuture;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.http.Response;

/* JADX INFO: loaded from: classes.dex */
public class ServerSentEventsTransport extends HttpClientTransport {
    private static final String DATA_INITIALIZED = "data: initialized";
    private static final String END_OF_SSE_MESSAGE = "\n\n";
    private static final int SSE_DATA_PREFIX_LENGTH = 6;
    private SignalRFuture<Void> mConnectionFuture;

    public ServerSentEventsTransport(Logger logger) {
        super(logger);
    }

    public ServerSentEventsTransport(Logger logger, HttpConnection httpConnection) {
        super(logger, httpConnection);
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public String getName() {
        return "serverSentEvents";
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public boolean supportKeepAlive() {
        return true;
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> start(ConnectionBase connectionBase, ConnectionType connectionType, final DataResultCallback dataResultCallback) {
        log("Start the communication with the server", LogLevel.Information);
        String str = connectionBase.getUrl() + (connectionType == ConnectionType.InitialConnection ? "connect" : "reconnect") + TransportHelper.getReceiveQueryString(this, connectionBase);
        Request request = new Request(Constants.HTTP_GET);
        request.setUrl(str);
        request.setHeaders(connectionBase.getHeaders());
        request.addHeader("Accept", "text/event-stream");
        connectionBase.prepareRequest(request);
        log("Execute the request", LogLevel.Verbose);
        this.mConnectionFuture = this.mHttpConnection.execute(request, new HttpConnectionFuture.ResponseCallback() { // from class: microsoft.aspnet.signalr.client.transport.ServerSentEventsTransport.1
            @Override // microsoft.aspnet.signalr.client.http.HttpConnectionFuture.ResponseCallback
            public void onResponse(Response response) {
                try {
                    ServerSentEventsTransport.this.log("Response received", LogLevel.Verbose);
                    ServerSentEventsTransport.this.throwOnInvalidStatusCode(response);
                    ServerSentEventsTransport.this.mConnectionFuture.setResult(null);
                    StringBuilder sb = new StringBuilder();
                    ServerSentEventsTransport.this.log("Read the response content by line", LogLevel.Verbose);
                    while (true) {
                        String line = response.readLine();
                        if (line != null) {
                            sb.append(line);
                            sb.append("\n");
                            String string = sb.toString();
                            if (string.endsWith(ServerSentEventsTransport.END_OF_SSE_MESSAGE)) {
                                String strTrim = string.trim();
                                ServerSentEventsTransport.this.log("Found new data: " + strTrim, LogLevel.Verbose);
                                if (strTrim.equals(ServerSentEventsTransport.DATA_INITIALIZED)) {
                                    ServerSentEventsTransport.this.log("Initialization message found", LogLevel.Verbose);
                                } else {
                                    String strTrim2 = strTrim.substring(6).trim();
                                    ServerSentEventsTransport.this.log("Trigger onData: " + strTrim2, LogLevel.Verbose);
                                    dataResultCallback.onData(strTrim2);
                                }
                                sb = new StringBuilder();
                            }
                        } else {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    if (!ServerSentEventsTransport.this.mConnectionFuture.isCancelled()) {
                        ServerSentEventsTransport.this.mConnectionFuture.triggerError(th);
                    }
                }
            }
        });
        return this.mConnectionFuture;
    }
}
