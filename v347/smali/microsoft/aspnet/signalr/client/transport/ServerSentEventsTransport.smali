.class public Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;
.super Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;
.source "SourceFile"


# static fields
.field private static final DATA_INITIALIZED:Ljava/lang/String; = "data: initialized"

.field private static final END_OF_SSE_MESSAGE:Ljava/lang/String; = "\n\n"

.field private static final SSE_DATA_PREFIX_LENGTH:I = 0x6


# instance fields
.field private mConnectionFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "serverSentEvents"

    return-object v0
.end method

.method public start(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 3
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
    const-string v0, "Start the communication with the server"

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->InitialConnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    if-ne p2, v0, :cond_0

    const-string v0, "connect"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-static {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/TransportHelper;->getReceiveQueryString(Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/Request;

    const-string v2, "GET"

    invoke-direct {v1, v2}, Lmicrosoft/aspnet/signalr/client/http/Request;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setUrl(Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setHeaders(Ljava/util/Map;)V

    .line 72
    const-string v0, "Accept"

    const-string v2, "text/event-stream"

    invoke-virtual {v1, v0, v2}, Lmicrosoft/aspnet/signalr/client/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, v1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V

    .line 76
    const-string v0, "Execute the request"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 77
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    new-instance v2, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;

    invoke-direct {v2, p0, p3}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;-><init>(Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)V

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/http/HttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 120
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    return-object v0

    .line 65
    :cond_0
    const-string v0, "reconnect"

    goto :goto_0
.end method

.method public supportKeepAlive()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
