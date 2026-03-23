.class public Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;
.super Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;
.source "SourceFile"


# static fields
.field private static final gson:Lcom/google/gson/e;


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

.field private mPrefix:Ljava/lang/String;

.field mWebSocketClient:Lorg/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->gson:Lcom/google/gson/e;

    return-void
.end method

.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    return-object v0
.end method

.method static synthetic access$100(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->isJSONValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isJSONValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 225
    :try_start_0
    sget-object v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->gson:Lcom/google/gson/e;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/t; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "webSockets"

    return-object v0
.end method

.method public send(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 2
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
    .line 219
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    invoke-virtual {v0, p2}, Lorg/a/a/a;->send(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;-><init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    return-object v0
.end method

.method public start(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 10
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
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 68
    sget-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->InitialConnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    if-ne p2, v0, :cond_1

    const-string v0, "connect"

    .line 70
    :goto_0
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->getName()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getConnectionToken()Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_1
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getGroupsToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getGroupsToken()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_2
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getConnectionData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getConnectionData()Ljava/lang/String;

    move-result-object v3

    .line 79
    :goto_3
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "signalr/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v8, 0x3f

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "connectionData="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "UTF-8"

    .line 80
    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&connectionToken="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    .line 81
    invoke-static {v7, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&groupsToken="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    .line 82
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&messageId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 83
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 84
    invoke-static {v6, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :try_start_1
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 90
    :goto_4
    :try_start_2
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    const/4 v1, 0x1

    .line 92
    :try_start_3
    const-string v2, "https://"

    const-string v3, "wss://"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_5
    move v8, v1

    .line 100
    :goto_6
    new-instance v1, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    invoke-direct {v1, v4}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;-><init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    iput-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    .line 104
    :try_start_4
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    const-string v4, "Cookie"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const-string v4, ".ROBLOSECURITY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Lmicrosoft/aspnet/signalr/client/Platform;->getFallbackCookie()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lmicrosoft/aspnet/signalr/client/Platform;->getFallbackCookie()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".ROBLOSECURITY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "WST.start() replacing cookie"

    sget-object v4, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v1, v4}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 122
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lmicrosoft/aspnet/signalr/client/Platform;->getFallbackCookie()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 68
    :cond_1
    const-string v0, "reconnect"

    goto/16 :goto_0

    .line 72
    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    .line 73
    :cond_3
    const-string v2, ""

    goto/16 :goto_2

    .line 74
    :cond_4
    const-string v3, ""

    goto/16 :goto_3

    .line 93
    :cond_5
    :try_start_5
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 94
    const-string v1, "http://"

    const-string v2, "ws://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    move v1, v5

    goto/16 :goto_5

    .line 96
    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v5

    move-object v0, v4

    .line 97
    :goto_8
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v8, v1

    goto/16 :goto_6

    .line 105
    :catch_1
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 107
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 108
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    .line 214
    :goto_9
    return-object v0

    .line 127
    :cond_6
    new-instance v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;

    new-instance v3, Lorg/a/b/c;

    invoke-direct {v3}, Lorg/a/b/c;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;-><init>(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/net/URI;Lorg/a/b/a;Ljava/util/Map;ILmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    .line 196
    if-eqz v8, :cond_7

    .line 197
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 199
    :try_start_6
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/a/a/a;->setSocket(Ljava/net/Socket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 205
    :cond_7
    :goto_a
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a;->connect()V

    .line 207
    new-instance v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$2;

    invoke-direct {v0, p0}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$2;-><init>(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)V

    invoke-interface {p1, v0}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->closed(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mConnectionFuture:Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    goto :goto_9

    .line 200
    :catch_2
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 96
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move v1, v5

    goto :goto_8

    :catch_4
    move-exception v1

    move-object v2, v1

    move v1, v5

    goto :goto_8

    :catch_5
    move-exception v2

    goto :goto_8

    :cond_8
    move v1, v5

    goto/16 :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public supportKeepAlive()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
