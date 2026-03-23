.class public Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mHasBeenWarned:Z

.field private mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

.field private mOnTimeout:Ljava/lang/Runnable;

.field private mOnWarning:Ljava/lang/Runnable;

.field private mStopped:Z

.field private mSync:Ljava/lang/Object;

.field private mTimedOut:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mTimedOut:Z

    .line 27
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mHasBeenWarned:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mStopped:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mSync:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mStopped:Z

    return v0
.end method

.method static synthetic access$200(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Lmicrosoft/aspnet/signalr/client/KeepAliveData;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    return-object v0
.end method

.method static synthetic access$300(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mTimedOut:Z

    return v0
.end method

.method static synthetic access$302(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mTimedOut:Z

    return p1
.end method

.method static synthetic access$400(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mOnTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mHasBeenWarned:Z

    return v0
.end method

.method static synthetic access$502(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mHasBeenWarned:Z

    return p1
.end method

.method static synthetic access$600(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mOnWarning:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public beat()V
    .locals 4

    .prologue
    .line 114
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->setLastKeepAlive(J)V

    .line 118
    :cond_0
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKeepAliveData()Lmicrosoft/aspnet/signalr/client/KeepAliveData;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    return-object v0
.end method

.method public getOnTimeout()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mOnTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOnWarning()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mOnWarning:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setKeepAliveData(Lmicrosoft/aspnet/signalr/client/KeepAliveData;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    .line 161
    return-void
.end method

.method public setOnTimeout(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mOnTimeout:Ljava/lang/Runnable;

    .line 147
    return-void
.end method

.method public setOnWarning(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mOnWarning:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method public start(Lmicrosoft/aspnet/signalr/client/KeepAliveData;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V
    .locals 8

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keepAliveData cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->stop()V

    .line 50
    :cond_1
    iget-object v7, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mSync:Ljava/lang/Object;

    monitor-enter v7

    .line 51
    :try_start_0
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mTimedOut:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mHasBeenWarned:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mStopped:Z

    .line 57
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mKeepAliveData:Lmicrosoft/aspnet/signalr/client/KeepAliveData;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/KeepAliveData;->getCheckInterval()J

    move-result-wide v2

    .line 59
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 60
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;

    invoke-direct {v1, p0, p2}, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor$1;-><init>(Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;Lmicrosoft/aspnet/signalr/client/ConnectionBase;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 92
    monitor-exit v7

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mStopped:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mStopped:Z

    .line 102
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/HeartbeatMonitor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 106
    :cond_0
    monitor-exit v1

    .line 108
    :cond_1
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
