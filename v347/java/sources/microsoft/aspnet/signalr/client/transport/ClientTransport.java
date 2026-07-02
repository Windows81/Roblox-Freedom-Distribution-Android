package microsoft.aspnet.signalr.client.transport;

import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.SignalRFuture;

/* JADX INFO: loaded from: classes.dex */
public interface ClientTransport {
    SignalRFuture<Void> abort(ConnectionBase connectionBase);

    String getName();

    SignalRFuture<NegotiationResponse> negotiate(ConnectionBase connectionBase);

    SignalRFuture<Void> send(ConnectionBase connectionBase, String str, DataResultCallback dataResultCallback);

    SignalRFuture<Void> start(ConnectionBase connectionBase, ConnectionType connectionType, DataResultCallback dataResultCallback);

    boolean supportKeepAlive();
}
