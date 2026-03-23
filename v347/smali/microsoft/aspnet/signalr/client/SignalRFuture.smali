.class public Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field mCancelInProgress:Z

.field private mDoneLock:Ljava/lang/Object;

.field private mErrorCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmicrosoft/aspnet/signalr/client/ErrorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorLock:Ljava/lang/Object;

.field private mErrorQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field mIsCancelled:Z

.field mIsDone:Z

.field private mLastError:Ljava/lang/Throwable;

.field private final mOnCancelled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmicrosoft/aspnet/signalr/client/Action",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mResultSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mIsCancelled:Z

    .line 24
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mCancelInProgress:Z

    .line 25
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mIsDone:Z

    .line 26
    iput-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResult:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnCancelled:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnDone:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mDoneLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorCallback:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorQueue:Ljava/util/Queue;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mLastError:Ljava/lang/Throwable;

    .line 36
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResultSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnCancelled:Ljava/util/List;

    monitor-enter v1

    .line 57
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mIsCancelled:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mCancelInProgress:Z

    .line 59
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnCancelled:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mCancelInProgress:Z

    .line 63
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResultSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 66
    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->cancel()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public done(Lmicrosoft/aspnet/signalr/client/Action;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/Action",
            "<TV;>;)",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnDone:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmicrosoft/aspnet/signalr/client/Action;->run(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 157
    return-object p0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {p0, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public errorWasTriggered()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mLastError:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 111
    const-wide/32 v0, 0x7fffffff

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResultSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->errorWasTriggered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mLastError:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Operation was cancelled"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResult:Ljava/lang/Object;

    return-object v0

    .line 128
    :cond_2
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mIsCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mIsDone:Z

    return v0
.end method

.method public onCancelled(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnCancelled:Ljava/util/List;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mCancelInProgress:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnCancelled:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/ErrorCallback;",
            ")",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lmicrosoft/aspnet/signalr/client/ErrorCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
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

    .line 179
    return-object p0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mDoneLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResult:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mIsDone:Z

    .line 79
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnDone:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mOnDone:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-interface {v0, p1}, Lmicrosoft/aspnet/signalr/client/Action;->run(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    invoke-virtual {p0, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResultSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 91
    return-void
.end method

.method public triggerError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mLastError:Ljava/lang/Throwable;

    .line 191
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mResultSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 192
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    .line 194
    invoke-interface {v0, p1}, Lmicrosoft/aspnet/signalr/client/ErrorCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 197
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->mErrorQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    return-void
.end method
