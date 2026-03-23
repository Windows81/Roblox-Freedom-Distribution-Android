.class public abstract Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;


# static fields
.field protected static final BUFFER_SIZE:I = 0x400


# instance fields
.field protected mAbortFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

.field private mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

.field protected mStartedAbort:Z


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lmicrosoft/aspnet/signalr/client/Platform;->createHttpConnection(Lmicrosoft/aspnet/signalr/client/Logger;)Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/HttpConnection;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mStartedAbort:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mAbortFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    .line 53
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    .line 54
    return-void
.end method


# virtual methods
.method public abort(Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/ConnectionBase;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mStartedAbort:Z

    if-nez v0, :cond_0

    .line 143
    const-string v0, "Started aborting"

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mStartedAbort:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "abort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/TransportHelper;->getSendQueryString(Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/Request;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lmicrosoft/aspnet/signalr/client/http/Request;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setUrl(Ljava/lang/String;)V

    .line 151
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setHeaders(Ljava/util/Map;)V

    .line 153
    invoke-interface {p1, v1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V

    .line 155
    const-string v0, "Execute request"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 156
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    new-instance v2, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$3;

    invoke-direct {v2, p0}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$3;-><init>(Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;)V

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/http/HttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mAbortFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 165
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mAbortFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 178
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 168
    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/Throwable;)V

    .line 169
    const-string v0, "Finishing abort -- Throwable"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mStartedAbort:Z

    .line 172
    new-instance v0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 173
    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 175
    monitor-exit p0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 178
    :cond_0
    :try_start_3
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mAbortFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 214
    return-void
.end method

.method protected log(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 218
    return-void
.end method

.method public negotiate(Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/ConnectionBase;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<",
            "Lmicrosoft/aspnet/signalr/client/transport/NegotiationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-string v0, "Start the negotiation with the server"

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "negotiate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lmicrosoft/aspnet/signalr/client/transport/TransportHelper;->getNegotiateQueryString(Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/Request;

    const-string v2, "GET"

    invoke-direct {v1, v2}, Lmicrosoft/aspnet/signalr/client/http/Request;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setUrl(Ljava/lang/String;)V

    .line 64
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setHeaders(Ljava/util/Map;)V

    .line 65
    const-string v0, "GET"

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/Request;->setVerb(Ljava/lang/String;)V

    .line 67
    invoke-interface {p1, v1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V

    .line 69
    new-instance v0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 71
    const-string v2, "Execute the request"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 72
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    new-instance v3, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$1;

    invoke-direct {v3, p0, v0, p1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$1;-><init>(Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;Lmicrosoft/aspnet/signalr/client/SignalRFuture;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V

    invoke-interface {v2, v1, v3}, Lmicrosoft/aspnet/signalr/client/http/HttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    move-result-object v1

    .line 92
    invoke-static {v1, v0}, Lmicrosoft/aspnet/signalr/client/FutureHelper;->copyHandlers(Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    .line 94
    return-object v0
.end method

.method protected rblog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, p1, v0}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 223
    return-void
.end method

.method public send(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 3
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
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start sending data to the server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 102
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/Request;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/Request;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lmicrosoft/aspnet/signalr/client/http/Request;->setFormContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/TransportHelper;->getSendQueryString(Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/Request;->setUrl(Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/Request;->setHeaders(Ljava/util/Map;)V

    .line 106
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {p1, v0}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->prepareRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)V

    .line 110
    const-string v1, "Execute the request"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {p0, v1, v2}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 111
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->mHttpConnection:Lmicrosoft/aspnet/signalr/client/http/HttpConnection;

    new-instance v2, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$2;

    invoke-direct {v2, p0, p3}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport$2;-><init>(Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)V

    invoke-interface {v1, v0, v2}, Lmicrosoft/aspnet/signalr/client/http/HttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 130
    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/HttpClientTransport;->log(Ljava/lang/Throwable;)V

    .line 132
    new-instance v0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 133
    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected throwOnInvalidStatusCode(Lmicrosoft/aspnet/signalr/client/http/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmicrosoft/aspnet/signalr/client/http/InvalidHttpStatusCodeException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->getStatus()I

    move-result v0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_3

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->readToEnd()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 193
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {p1, v0}, Lmicrosoft/aspnet/signalr/client/http/Response;->getHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "]; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    :cond_2
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/InvalidHttpStatusCodeException;

    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->getStatus()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lmicrosoft/aspnet/signalr/client/http/InvalidHttpStatusCodeException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_3
    return-void
.end method
