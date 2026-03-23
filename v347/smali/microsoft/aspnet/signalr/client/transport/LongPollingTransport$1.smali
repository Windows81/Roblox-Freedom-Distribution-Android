.class Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->poll(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

.field final synthetic val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

.field final synthetic val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

.field final synthetic val$connectionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$connectionUrl:Ljava/lang/String;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    iput-object p4, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lmicrosoft/aspnet/signalr/client/http/Response;)V
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->throwOnInvalidStatusCode(Lmicrosoft/aspnet/signalr/client/http/Response;)V

    .line 101
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$connectionUrl:Ljava/lang/String;

    const-string v2, "poll"

    if-eq v0, v2, :cond_0

    .line 102
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->setResult(Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    const-string v2, "Response received"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 106
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    const-string v2, "Read response to the end"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 107
    invoke-interface {p1}, Lmicrosoft/aspnet/signalr/client/http/Response;->readToEnd()Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_1
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trigger onData with data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v2, v3, v4}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 113
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-interface {v2, v0}, Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;->onData(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    invoke-interface {v0}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getState()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    if-ne v0, v2, :cond_2

    .line 116
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    const-string v2, "Continue polling"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 117
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    const-string v4, "poll"

    iget-object v5, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-static {v2, v3, v4, v5}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$200(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->setFuture(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 126
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v2}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v2

    invoke-virtual {v2}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-virtual {v2, v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->log(Ljava/lang/Throwable;)V

    .line 122
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v2}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
