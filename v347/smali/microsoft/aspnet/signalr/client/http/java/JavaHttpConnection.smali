.class public Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/http/HttpConnection;


# static fields
.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"


# instance fields
.field private mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

.field private mSkipCookie:Z


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    .line 35
    iput-boolean p2, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mSkipCookie:Z

    .line 36
    return-void
.end method

.method static synthetic access$000(Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
    .locals 6

    .prologue
    .line 41
    const-string v0, "User-Agent"

    invoke-static {}, Lmicrosoft/aspnet/signalr/client/Platform;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmicrosoft/aspnet/signalr/client/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    const-string v1, "Create new thread for HTTP Connection"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 44
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JavaHttpConnection.execute() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/http/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 45
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       cookie:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/http/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v3, "Cookie"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v1, v0, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 46
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       user-agent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmicrosoft/aspnet/signalr/client/http/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v3, "User-Agent"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v1, v0, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 48
    new-instance v3, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-direct {v3}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;-><init>()V

    .line 50
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    iget-boolean v5, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->mSkipCookie:Z

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;-><init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;Z)V

    .line 51
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;

    invoke-direct {v1, p0, v0, v0}, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;-><init>(Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;Ljava/lang/Runnable;Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;)V

    .line 62
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$2;

    invoke-direct {v0, p0, v1}, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$2;-><init>(Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;)V

    invoke-virtual {v3, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->onCancelled(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v1}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;->start()V

    .line 72
    return-object v3
.end method
