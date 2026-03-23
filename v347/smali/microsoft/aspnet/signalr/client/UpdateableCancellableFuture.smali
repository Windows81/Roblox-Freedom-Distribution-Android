.class public Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;
.super Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<*>;"
        }
    .end annotation
.end field

.field mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mSync:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    invoke-super {p0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->cancel()V

    .line 38
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->cancel()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 42
    :cond_0
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFuture(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->mFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->cancel()V

    .line 32
    :cond_0
    return-void

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
