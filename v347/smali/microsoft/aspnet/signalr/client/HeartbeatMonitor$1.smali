.class Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->start(Lmicrosoft/aspnet/signalr/client/KeepAliveData;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

.field final synthetic val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$000(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$100(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    invoke-interface {v0}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getState()Lmicrosoft/aspnet/signalr/client/ConnectionState;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    if-ne v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$200(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    move-result-object v0

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->getLastKeepAlive()J

    move-result-wide v2

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 70
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$200(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    move-result-object v0

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->getTimeout()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 71
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$300(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$302(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Z)Z

    .line 74
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$400(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_0
    :goto_0
    monitor-exit v1

    .line 90
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$200(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    move-result-object v0

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->getTimeoutWarning()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 77
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$500(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$502(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Z)Z

    .line 81
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$600(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 84
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$502(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Z)Z

    .line 85
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;->this$0:Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->access$302(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
