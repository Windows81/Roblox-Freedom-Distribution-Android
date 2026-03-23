.class public Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;
.super Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;
.source "SourceFile"


# instance fields
.field private mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPollSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mPollSync:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mPollSync:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mPollSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->poll(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v0

    return-object v0
.end method

.method private poll(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/ConnectionBase;",
            "Ljava/lang/String;",
            "Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v6, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mPollSync:Ljava/lang/Object;

    monitor-enter v6

    .line 80
    :try_start_0
    const-string v0, "Start the communication with the server"

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/TransportHelper;->getReceiveQueryString(Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/Request;

    const-string v2, "GET"

    invoke-direct {v1, v2}, Lmicrosoft/aspnet/signalr/client/http/Request;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setUrl(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setHeaders(Ljava/util/Map;)V

    .line 88
    invoke-interface {p1, v1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V

    .line 90
    const-string v0, "Execute the request"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 91
    new-instance v0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;-><init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    .line 93
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    new-instance v2, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;-><init>(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/http/HttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    move-result-object v5

    .line 129
    new-instance v0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;-><init>(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;)V

    invoke-virtual {v5, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->onTimeout(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)V

    .line 144
    new-instance v0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$3;

    invoke-direct {v0, p0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$3;-><init>(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)V

    invoke-virtual {v5, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->onError(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 154
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    invoke-virtual {v0, v5}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->setFuture(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    .line 156
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    monitor-exit v6

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "longPolling"

    return-object v0
.end method

.method public start(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/ConnectionBase;",
            "Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;",
            "Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->InitialConnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    if-ne p2, v0, :cond_0

    const-string v0, "connect"

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->poll(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "reconnect"

    goto :goto_0
.end method

.method public supportKeepAlive()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
