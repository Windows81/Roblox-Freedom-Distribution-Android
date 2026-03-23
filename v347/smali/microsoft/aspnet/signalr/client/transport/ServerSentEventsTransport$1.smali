.class Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->start(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

.field final synthetic val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lmicrosoft/aspnet/signalr/client/http/Response;)V
    .locals 4

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    const-string v1, "Response received"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 83
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->throwOnInvalidStatusCode(Lmicrosoft/aspnet/signalr/client/http/Response;)V

    .line 85
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->setResult(Ljava/lang/Object;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    const-string v2, "Read the response content by line"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 91
    :cond_0
    :goto_0
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found new data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 98
    const-string v1, "data: initialized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    const-string v1, "Initialization message found"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 107
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v1

    invoke-virtual {v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 117
    :cond_1
    return-void

    .line 101
    :cond_2
    const/4 v1, 0x6

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger onData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 104
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/ServerSentEventsTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-interface {v1, v0}, Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;->onData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
