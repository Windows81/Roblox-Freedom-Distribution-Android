.class public Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
.super Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mTimeoutCallback:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

.field private mTimeoutLock:Ljava/lang/Object;

.field private mTimeoutQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutQueue:Ljava/util/Queue;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onTimeout(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutCallback:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutCallback:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutCallback:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lmicrosoft/aspnet/signalr/client/ErrorCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    return-void
.end method

.method public triggerTimeout(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutCallback:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutCallback:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    invoke-interface {v0, p1}, Lmicrosoft/aspnet/signalr/client/ErrorCallback;->onError(Ljava/lang/Throwable;)V

    .line 55
    :goto_0
    monitor-exit v1

    .line 56
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->mTimeoutQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
