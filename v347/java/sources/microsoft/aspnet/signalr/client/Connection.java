package microsoft.aspnet.signalr.client;

import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.k;
import com.google.gson.p;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import microsoft.aspnet.signalr.client.http.Request;
import microsoft.aspnet.signalr.client.transport.AutomaticTransport;
import microsoft.aspnet.signalr.client.transport.ClientTransport;
import microsoft.aspnet.signalr.client.transport.ConnectionType;
import microsoft.aspnet.signalr.client.transport.DataResultCallback;
import microsoft.aspnet.signalr.client.transport.NegotiationResponse;
import microsoft.aspnet.signalr.client.transport.TransportHelper;

/* JADX INFO: loaded from: classes.dex */
public class Connection implements ConnectionBase {
    public static final Version PROTOCOL_VERSION = new Version("1.3");
    private SignalRFuture<Void> mAbortFuture;
    private boolean mAborting;
    private UpdateableCancellableFuture<Void> mConnectionFuture;
    private String mConnectionId;
    private String mConnectionToken;
    private Credentials mCredentials;
    private String mGroupsToken;
    protected e mGson;
    private Map<String, String> mHeaders;
    private HeartbeatMonitor mHeartbeatMonitor;
    protected p mJsonParser;
    private KeepAliveData mKeepAliveData;
    private Logger mLogger;
    private String mMessageId;
    private Runnable mOnClosed;
    private Runnable mOnConnected;
    private Runnable mOnConnectionSlow;
    private ErrorCallback mOnError;
    private MessageReceivedHandler mOnReceived;
    private Runnable mOnReconnected;
    private Runnable mOnReconnecting;
    private StateChangedCallback mOnStateChanged;
    private String mQueryString;
    private Object mStartLock;
    protected ConnectionState mState;
    private Object mStateLock;
    private ClientTransport mTransport;
    private String mUrl;

    public Connection(String str) {
        this(str, (String) null);
    }

    public Connection(String str, String str2) {
        this(str, str2, new NullLogger());
    }

    public Connection(String str, Logger logger) {
        this(str, null, logger);
    }

    public Connection(String str, String str2, Logger logger) {
        this.mHeaders = new HashMap();
        this.mAborting = false;
        this.mAbortFuture = new SignalRFuture<>();
        this.mStateLock = new Object();
        this.mStartLock = new Object();
        if (str == null) {
            throw new IllegalArgumentException("URL cannot be null");
        }
        if (logger == null) {
            throw new IllegalArgumentException("Logger cannot be null");
        }
        str = str.endsWith("/") ? str : str + "/";
        log("Initialize the connection", LogLevel.Information);
        log(new StringBuilder().append("Connection data: ").append(str).append(" - ").append(str2).toString() == null ? "" : str2, LogLevel.Verbose);
        this.mUrl = str;
        this.mQueryString = str2;
        this.mLogger = logger;
        this.mJsonParser = new p();
        f fVar = new f();
        fVar.a(Date.class, new DateSerializer());
        this.mGson = fVar.a();
        this.mState = ConnectionState.Disconnected;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public Logger getLogger() {
        return this.mLogger;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public ConnectionState getState() {
        return this.mState;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getUrl() {
        return this.mUrl;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getConnectionToken() {
        return this.mConnectionToken;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getConnectionId() {
        return this.mConnectionId;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getQueryString() {
        return this.mQueryString;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getMessageId() {
        return this.mMessageId;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void setMessageId(String str) {
        this.mMessageId = str;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getGroupsToken() {
        return this.mGroupsToken;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void setGroupsToken(String str) {
        this.mGroupsToken = str;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void reconnecting(Runnable runnable) {
        this.mOnReconnecting = runnable;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void reconnected(Runnable runnable) {
        this.mOnReconnected = runnable;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void connected(Runnable runnable) {
        this.mOnConnected = runnable;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void error(ErrorCallback errorCallback) {
        this.mOnError = errorCallback;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void received(MessageReceivedHandler messageReceivedHandler) {
        this.mOnReceived = messageReceivedHandler;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void connectionSlow(Runnable runnable) {
        this.mOnConnectionSlow = runnable;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void closed(Runnable runnable) {
        this.mOnClosed = runnable;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void stateChanged(StateChangedCallback stateChangedCallback) {
        this.mOnStateChanged = stateChangedCallback;
    }

    public SignalRFuture<Void> start() {
        return start(new AutomaticTransport(this.mLogger));
    }

    public SignalRFuture<Void> send(Object obj) {
        String strB = null;
        if (obj != null) {
            if (obj instanceof k) {
                strB = obj.toString();
            } else {
                strB = this.mGson.b(obj);
            }
        }
        return send(strB);
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public SignalRFuture<Void> send(String str) {
        log("Sending: " + str, LogLevel.Information);
        if (this.mState == ConnectionState.Disconnected || this.mState == ConnectionState.Connecting) {
            onError(new InvalidStateException(this.mState), false);
            return new SignalRFuture<>();
        }
        log("Invoking send on transport", LogLevel.Verbose);
        SignalRFuture<Void> signalRFutureSend = this.mTransport.send(this, str, new DataResultCallback() { // from class: microsoft.aspnet.signalr.client.Connection.1
            @Override // microsoft.aspnet.signalr.client.transport.DataResultCallback
            public void onData(String str2) {
                this.processReceivedData(str2);
            }
        });
        handleFutureError(signalRFutureSend, false);
        return signalRFutureSend;
    }

    private void handleFutureError(SignalRFuture<?> signalRFuture, final boolean z) {
        signalRFuture.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.Connection.2
            @Override // microsoft.aspnet.signalr.client.ErrorCallback
            public void onError(Throwable th) {
                Connection.this.log("handleFutureError() onError() " + th.toString(), LogLevel.Critical);
                this.onError(th, z);
            }
        });
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public SignalRFuture<Void> start(ClientTransport clientTransport) {
        UpdateableCancellableFuture<Void> updateableCancellableFuture;
        synchronized (this.mStartLock) {
            log("Entered startLock in start -- state:" + this.mState.name(), LogLevel.Verbose);
            if (!changeState(ConnectionState.Disconnected, ConnectionState.Connecting)) {
                log("Couldn't change state from disconnected to connecting.", LogLevel.Verbose);
                updateableCancellableFuture = this.mConnectionFuture;
            } else {
                log("Start the connection, using " + clientTransport.getName() + " transport", LogLevel.Information);
                this.mTransport = clientTransport;
                this.mConnectionFuture = new UpdateableCancellableFuture<>(null);
                handleFutureError(this.mConnectionFuture, true);
                log("Start negotiation", LogLevel.Verbose);
                SignalRFuture<NegotiationResponse> signalRFutureNegotiate = clientTransport.negotiate(this);
                try {
                    signalRFutureNegotiate.done(new Action<NegotiationResponse>() { // from class: microsoft.aspnet.signalr.client.Connection.3
                        @Override // microsoft.aspnet.signalr.client.Action
                        public void run(NegotiationResponse negotiationResponse) throws Exception {
                            Connection.this.log("Negotiation completed", LogLevel.Information);
                            if (!Connection.verifyProtocolVersion(negotiationResponse.getProtocolVersion())) {
                                InvalidProtocolVersionException invalidProtocolVersionException = new InvalidProtocolVersionException(negotiationResponse.getProtocolVersion());
                                Connection.this.onError(invalidProtocolVersionException, true);
                                Connection.this.mConnectionFuture.triggerError(invalidProtocolVersionException);
                                return;
                            }
                            Connection.this.mConnectionId = negotiationResponse.getConnectionId();
                            Connection.this.mConnectionToken = negotiationResponse.getConnectionToken();
                            Connection.this.log("ConnectionId: " + Connection.this.mConnectionId, LogLevel.Verbose);
                            Connection.this.log("ConnectionToken: " + Connection.this.mConnectionToken, LogLevel.Verbose);
                            KeepAliveData keepAliveData = null;
                            if (negotiationResponse.getKeepAliveTimeout() > 0.0d) {
                                Connection.this.log("Keep alive timeout: " + negotiationResponse.getKeepAliveTimeout(), LogLevel.Verbose);
                                keepAliveData = new KeepAliveData((long) (negotiationResponse.getKeepAliveTimeout() * 1000.0d));
                            }
                            Connection.this.startTransport(keepAliveData, false);
                        }
                    });
                    signalRFutureNegotiate.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.Connection.4
                        @Override // microsoft.aspnet.signalr.client.ErrorCallback
                        public void onError(Throwable th) {
                            Connection.this.mConnectionFuture.triggerError(th);
                        }
                    });
                } catch (Exception e) {
                    onError(e, true);
                }
                handleFutureError(signalRFutureNegotiate, true);
                this.mConnectionFuture.setFuture(signalRFutureNegotiate);
                updateableCancellableFuture = this.mConnectionFuture;
            }
        }
        return updateableCancellableFuture;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean changeState(ConnectionState connectionState, ConnectionState connectionState2) {
        boolean z = false;
        synchronized (this.mStateLock) {
            if (this.mState == connectionState) {
                this.mState = connectionState2;
                if (this.mOnStateChanged != null) {
                    try {
                        this.mOnStateChanged.stateChanged(connectionState, connectionState2);
                    } catch (Throwable th) {
                        onError(th, false);
                    }
                }
                z = true;
            }
        }
        return z;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public Credentials getCredentials() {
        return this.mCredentials;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void setCredentials(Credentials credentials) {
        this.mCredentials = credentials;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void prepareRequest(Request request) {
        if (this.mCredentials != null) {
            log("Preparing request with credentials data", LogLevel.Information);
            this.mCredentials.prepareRequest(request);
        }
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public String getConnectionData() {
        return null;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void stop() {
        synchronized (this.mStartLock) {
            log("Entered startLock in stop", LogLevel.Verbose);
            if (this.mAborting) {
                log("Abort already started.", LogLevel.Verbose);
                return;
            }
            if (this.mState == ConnectionState.Disconnected) {
                log("Connection already in disconnected state. Exiting abort", LogLevel.Verbose);
                return;
            }
            log("Stopping the connection", LogLevel.Information);
            this.mAborting = true;
            log("Starting abort operation", LogLevel.Verbose);
            this.mAbortFuture = this.mTransport.abort(this);
            if (this.mAbortFuture == null) {
                log("stop() mAbortFuture is null", LogLevel.Critical);
                disconnect();
                this.mAborting = false;
            } else {
                this.mAbortFuture.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.Connection.5
                    @Override // microsoft.aspnet.signalr.client.ErrorCallback
                    public void onError(Throwable th) {
                        synchronized (Connection.this.mStartLock) {
                            Connection.this.log("Abort error", LogLevel.Verbose);
                            this.onError(th, false);
                            Connection.this.disconnect();
                            Connection.this.mAborting = false;
                        }
                    }
                });
                this.mAbortFuture.onCancelled(new Runnable() { // from class: microsoft.aspnet.signalr.client.Connection.6
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (Connection.this.mStartLock) {
                            Connection.this.log("Abort cancelled", LogLevel.Verbose);
                            Connection.this.mAborting = false;
                        }
                    }
                });
                this.mAbortFuture.done(new Action<Void>() { // from class: microsoft.aspnet.signalr.client.Connection.7
                    @Override // microsoft.aspnet.signalr.client.Action
                    public void run(Void r5) throws Exception {
                        synchronized (Connection.this.mStartLock) {
                            Connection.this.log("Abort completed", LogLevel.Information);
                            Connection.this.disconnect();
                            Connection.this.mAborting = false;
                        }
                    }
                });
            }
        }
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void disconnect() {
        synchronized (this.mStateLock) {
            log("Entered stateLock in disconnect [state:" + this.mState + "]", LogLevel.Verbose);
            if (this.mState != ConnectionState.Disconnected) {
                log("Disconnecting", LogLevel.Information);
                ConnectionState connectionState = this.mState;
                this.mState = ConnectionState.Disconnected;
                if (this.mOnStateChanged != null) {
                    try {
                        this.mOnStateChanged.stateChanged(connectionState, ConnectionState.Disconnected);
                    } catch (Throwable th) {
                        onError(th, false);
                    }
                }
                if (this.mHeartbeatMonitor != null) {
                    log("Stopping Heartbeat monitor", LogLevel.Verbose);
                    this.mHeartbeatMonitor.stop();
                }
                this.mHeartbeatMonitor = null;
                if (this.mConnectionFuture != null) {
                    log("Stopping the connection", LogLevel.Verbose);
                    this.mConnectionFuture.cancel();
                    this.mConnectionFuture = new UpdateableCancellableFuture<>(null);
                }
                if (this.mAbortFuture != null) {
                    log("Cancelling abort", LogLevel.Verbose);
                    this.mAbortFuture.cancel();
                }
                this.mConnectionId = null;
                this.mConnectionToken = null;
                this.mCredentials = null;
                this.mGroupsToken = null;
                this.mHeaders.clear();
                this.mMessageId = null;
                this.mTransport = null;
                onClosed();
            }
        }
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public e getGson() {
        return this.mGson;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void setGson(e eVar) {
        this.mGson = eVar;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public p getJsonParser() {
        return this.mJsonParser;
    }

    protected void onReconnecting() {
        if (this.mOnReconnecting != null) {
            this.mOnReconnecting.run();
        }
    }

    protected void onReconnected() {
        if (this.mOnReconnected != null) {
            this.mOnReconnected.run();
        }
    }

    protected void onConnected() {
        if (this.mOnConnected != null) {
            this.mOnConnected.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean verifyProtocolVersion(String str) {
        if (str == null) {
            return false;
        }
        try {
            if (str.equals("")) {
                return false;
            }
            return new Version(str).equals(PROTOCOL_VERSION);
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startTransport(KeepAliveData keepAliveData, boolean z) {
        synchronized (this.mStartLock) {
            log("Entered startLock in startTransport", LogLevel.Verbose);
            if (this.mTransport == null) {
                log("Transport is null. Exiting startTransport", LogLevel.Verbose);
                return;
            }
            log("Starting the transport", LogLevel.Information);
            if (z) {
                if (this.mHeartbeatMonitor != null) {
                    log("Stopping heartbeat monitor", LogLevel.Verbose);
                    this.mHeartbeatMonitor.stop();
                }
                changeState(ConnectionState.Connected, ConnectionState.Reconnecting);
                onReconnecting();
            }
            this.mHeartbeatMonitor = new HeartbeatMonitor();
            this.mHeartbeatMonitor.setOnWarning(new Runnable() { // from class: microsoft.aspnet.signalr.client.Connection.8
                @Override // java.lang.Runnable
                public void run() {
                    Connection.this.log("Slow connection detected", LogLevel.Information);
                    if (Connection.this.mOnConnectionSlow != null) {
                        Connection.this.mOnConnectionSlow.run();
                    }
                }
            });
            this.mHeartbeatMonitor.setOnTimeout(new Runnable() { // from class: microsoft.aspnet.signalr.client.Connection.9
                @Override // java.lang.Runnable
                public void run() {
                    Connection.this.log("Timeout", LogLevel.Information);
                    Connection.this.reconnect();
                }
            });
            ConnectionType connectionType = z ? ConnectionType.Reconnection : ConnectionType.InitialConnection;
            log("Starting transport for " + connectionType.toString(), LogLevel.Verbose);
            SignalRFuture<Void> signalRFutureStart = this.mTransport.start(this, connectionType, new DataResultCallback() { // from class: microsoft.aspnet.signalr.client.Connection.10
                @Override // microsoft.aspnet.signalr.client.transport.DataResultCallback
                public void onData(String str) {
                    Connection.this.log("Received data: ", LogLevel.Verbose);
                    Connection.this.processReceivedData(str);
                }
            });
            handleFutureError(signalRFutureStart, true);
            this.mConnectionFuture.setFuture(signalRFutureStart);
            signalRFutureStart.onError(new ErrorCallback() { // from class: microsoft.aspnet.signalr.client.Connection.11
                @Override // microsoft.aspnet.signalr.client.ErrorCallback
                public void onError(Throwable th) {
                    Connection.this.mConnectionFuture.triggerError(th);
                }
            });
            this.mKeepAliveData = keepAliveData;
            try {
                signalRFutureStart.done(new Action<Void>() { // from class: microsoft.aspnet.signalr.client.Connection.12
                    @Override // microsoft.aspnet.signalr.client.Action
                    public void run(Void r5) throws Exception {
                        synchronized (Connection.this.mStartLock) {
                            Connection.this.log("Entered startLock after transport was started", LogLevel.Verbose);
                            Connection.this.log("Current state: " + Connection.this.mState, LogLevel.Verbose);
                            if (!Connection.this.changeState(ConnectionState.Reconnecting, ConnectionState.Connected)) {
                                if (Connection.this.changeState(ConnectionState.Connecting, ConnectionState.Connected)) {
                                    Connection.this.log("Starting Heartbeat monitor", LogLevel.Verbose);
                                    Connection.this.mHeartbeatMonitor.start(Connection.this.mKeepAliveData, this);
                                    Connection.this.log("Connected", LogLevel.Information);
                                    Connection.this.onConnected();
                                    Connection.this.mConnectionFuture.setResult(null);
                                }
                            } else {
                                Connection.this.log("Starting Heartbeat monitor", LogLevel.Verbose);
                                Connection.this.mHeartbeatMonitor.start(Connection.this.mKeepAliveData, this);
                                Connection.this.log("Reconnected", LogLevel.Information);
                                Connection.this.onReconnected();
                            }
                        }
                    }
                });
            } catch (Exception e) {
                onError(e, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processReceivedData(String str) {
        if (this.mHeartbeatMonitor != null) {
            this.mHeartbeatMonitor.beat();
        }
        MessageResult messageResultProcessReceivedData = TransportHelper.processReceivedData(str, this);
        if (messageResultProcessReceivedData.disconnect()) {
            disconnect();
        } else if (messageResultProcessReceivedData.reconnect()) {
            reconnect();
        }
    }

    protected k processMessage(k kVar) throws Exception {
        return kVar;
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void onError(Throwable th, boolean z) {
        log(th);
        if (z) {
            if (this.mState == ConnectionState.Connected) {
                log("Triggering reconnect", LogLevel.Verbose);
                reconnect();
                return;
            }
            log("Triggering disconnect", LogLevel.Verbose);
            disconnect();
            if (this.mOnError != null) {
                this.mOnError.onError(th);
                return;
            }
            return;
        }
        if (this.mOnError != null) {
            this.mOnError.onError(th);
        }
    }

    protected void onClosed() {
        if (this.mOnClosed != null) {
            this.mOnClosed.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reconnect() {
        if (this.mState == ConnectionState.Connected) {
            log("Stopping Heartbeat monitor", LogLevel.Verbose);
            this.mHeartbeatMonitor.stop();
            log("Restarting the transport", LogLevel.Information);
            startTransport(this.mHeartbeatMonitor.getKeepAliveData(), true);
        }
    }

    protected void log(String str, LogLevel logLevel) {
        if ((str != null) & (this.mLogger != null)) {
            this.mLogger.log(getSourceNameForLog() + " - " + str, logLevel);
        }
    }

    protected void log(Throwable th) {
        this.mLogger.log(getSourceNameForLog() + " - Error: " + th.toString(), LogLevel.Critical);
    }

    protected String getSourceNameForLog() {
        return "Connection";
    }

    @Override // microsoft.aspnet.signalr.client.ConnectionBase
    public void onReceived(k kVar) {
        if (this.mOnReceived != null && getState() == ConnectionState.Connected) {
            log("Invoking messageReceived with: " + kVar, LogLevel.Verbose);
            try {
                this.mOnReceived.onMessageReceived(kVar);
            } catch (Throwable th) {
                onError(th, false);
            }
        }
    }
}
