package microsoft.aspnet.signalr.client.transport;

import java.util.ArrayList;
import java.util.List;
import microsoft.aspnet.signalr.client.Action;
import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.ErrorCallback;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.NullLogger;
import microsoft.aspnet.signalr.client.SignalRFuture;
import microsoft.aspnet.signalr.client.http.HttpConnection;

/* JADX INFO: loaded from: classes.dex */
public class AutomaticTransport extends HttpClientTransport {
    private ClientTransport mRealTransport;
    private List<ClientTransport> mTransports;

    public AutomaticTransport() {
        this(new NullLogger());
    }

    public AutomaticTransport(Logger logger) {
        super(logger);
        initialize(logger);
    }

    public AutomaticTransport(Logger logger, HttpConnection httpConnection) {
        super(logger, httpConnection);
        initialize(logger);
    }

    private void initialize(Logger logger) {
        this.mTransports = new ArrayList();
        this.mTransports.add(new WebsocketTransport(logger));
        this.mTransports.add(new LongPollingTransport(logger));
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public String getName() {
        return this.mRealTransport == null ? "AutomaticTransport" : this.mRealTransport.getName();
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public boolean supportKeepAlive() {
        if (this.mRealTransport != null) {
            return this.mRealTransport.supportKeepAlive();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resolveTransport(final ConnectionBase connectionBase, final ConnectionType connectionType, final DataResultCallback dataResultCallback, final int i, final SignalRFuture<Void> signalRFuture) {
        final ClientTransport clientTransport = this.mRealTransport != null ? this.mRealTransport : this.mTransports.get(i);
        final SignalRFuture<Void> signalRFutureStart = clientTransport.start(connectionBase, connectionType, dataResultCallback);
        signalRFutureStart.done(new Action<Void>() { // from class: microsoft.aspnet.signalr.client.transport.AutomaticTransport.1
            @Override // microsoft.aspnet.signalr.client.Action
            public void run(Void r3) throws Exception {
                AutomaticTransport.this.mRealTransport = clientTransport;
                signalRFuture.setResult(null);
            }
        });
        final ErrorCallback errorCallback = new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.transport.AutomaticTransport.2
            @Override // microsoft.aspnet.signalr.client.ErrorCallback
            public void onError(Throwable th) {
                if (AutomaticTransport.this.mRealTransport != null) {
                    signalRFuture.triggerError(th);
                    return;
                }
                AutomaticTransport.this.log(String.format("Auto: Faild to connect using transport %s. %s", clientTransport.getName(), th.toString()), LogLevel.Information);
                int i2 = i + 1;
                if (i2 < AutomaticTransport.this.mTransports.size()) {
                    AutomaticTransport.this.resolveTransport(connectionBase, connectionType, dataResultCallback, i2, signalRFuture);
                } else {
                    signalRFuture.triggerError(th);
                }
            }
        };
        signalRFutureStart.onError(errorCallback);
        signalRFuture.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.transport.AutomaticTransport.3
            @Override // java.lang.Runnable
            public void run() {
                if (AutomaticTransport.this.mRealTransport != null) {
                    signalRFutureStart.cancel();
                } else {
                    errorCallback.onError(new Exception("Operation cancelled"));
                }
            }
        });
    }

    @Override // microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> start(ConnectionBase connectionBase, ConnectionType connectionType, DataResultCallback dataResultCallback) {
        SignalRFuture<Void> signalRFuture = new SignalRFuture<>();
        resolveTransport(connectionBase, connectionType, dataResultCallback, 0, signalRFuture);
        return signalRFuture;
    }

    @Override // microsoft.aspnet.signalr.client.transport.HttpClientTransport, microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> send(ConnectionBase connectionBase, String str, DataResultCallback dataResultCallback) {
        if (this.mRealTransport != null) {
            return this.mRealTransport.send(connectionBase, str, dataResultCallback);
        }
        return null;
    }

    @Override // microsoft.aspnet.signalr.client.transport.HttpClientTransport, microsoft.aspnet.signalr.client.transport.ClientTransport
    public SignalRFuture<Void> abort(ConnectionBase connectionBase) {
        if (this.mRealTransport != null) {
            return this.mRealTransport.abort(connectionBase);
        }
        return null;
    }
}
