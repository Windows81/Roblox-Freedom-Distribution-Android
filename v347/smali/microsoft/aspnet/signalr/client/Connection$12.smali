.class Lmicrosoft/aspnet/signalr/client/Connection$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/Connection;->startTransport(Lmicrosoft/aspnet/signalr/client/KeepAliveData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/Action",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/Connection;

.field final synthetic val$that:Lmicrosoft/aspnet/signalr/client/Connection;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/Connection;Lmicrosoft/aspnet/signalr/client/Connection;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/Connection$12;->run(Ljava/lang/Void;)V

    return-void
.end method

.method public run(Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$600(Lmicrosoft/aspnet/signalr/client/Connection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Entered startLock after transport was started"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 711
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    iget-object v3, v3, Lmicrosoft/aspnet/signalr/client/Connection;->mState:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 712
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    sget-object v2, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Reconnecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    sget-object v3, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    invoke-static {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->access$1000(Lmicrosoft/aspnet/signalr/client/Connection;Lmicrosoft/aspnet/signalr/client/ConnectionState;Lmicrosoft/aspnet/signalr/client/ConnectionState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Starting Heartbeat monitor"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 715
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$1200(Lmicrosoft/aspnet/signalr/client/Connection;)Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    move-result-object v0

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v2}, Lmicrosoft/aspnet/signalr/client/Connection;->access$1100(Lmicrosoft/aspnet/signalr/client/Connection;)Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    move-result-object v2

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->start(Lmicrosoft/aspnet/signalr/client/KeepAliveData;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V

    .line 717
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Reconnected"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 718
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->onReconnected()V

    .line 729
    :cond_0
    :goto_0
    monitor-exit v1

    .line 730
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    sget-object v2, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    sget-object v3, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    invoke-static {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->access$1000(Lmicrosoft/aspnet/signalr/client/Connection;Lmicrosoft/aspnet/signalr/client/ConnectionState;Lmicrosoft/aspnet/signalr/client/ConnectionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Starting Heartbeat monitor"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 723
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$1200(Lmicrosoft/aspnet/signalr/client/Connection;)Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    move-result-object v0

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v2}, Lmicrosoft/aspnet/signalr/client/Connection;->access$1100(Lmicrosoft/aspnet/signalr/client/Connection;)Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    move-result-object v2

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->start(Lmicrosoft/aspnet/signalr/client/KeepAliveData;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V

    .line 725
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v2, "Connected"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 726
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->onConnected()V

    .line 727
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$12;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$200(Lmicrosoft/aspnet/signalr/client/Connection;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
