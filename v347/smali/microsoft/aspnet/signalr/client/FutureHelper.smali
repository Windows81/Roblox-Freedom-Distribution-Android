.class public Lmicrosoft/aspnet/signalr/client/FutureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyHandlers(Lmicrosoft/aspnet/signalr/client/SignalRFuture;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<*>;",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lmicrosoft/aspnet/signalr/client/FutureHelper$1;

    invoke-direct {v0, p0}, Lmicrosoft/aspnet/signalr/client/FutureHelper$1;-><init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    invoke-virtual {p1, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->onCancelled(Ljava/lang/Runnable;)V

    .line 34
    new-instance v0, Lmicrosoft/aspnet/signalr/client/FutureHelper$2;

    invoke-direct {v0, p1}, Lmicrosoft/aspnet/signalr/client/FutureHelper$2;-><init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    invoke-virtual {p0, v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->onError(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    .line 41
    return-void
.end method

.method public static copyHandlers(Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;",
            "Lmicrosoft/aspnet/signalr/client/SignalRFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lmicrosoft/aspnet/signalr/client/FutureHelper;->copyHandlers(Lmicrosoft/aspnet/signalr/client/SignalRFuture;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    .line 55
    new-instance v0, Lmicrosoft/aspnet/signalr/client/FutureHelper$3;

    invoke-direct {v0, p1}, Lmicrosoft/aspnet/signalr/client/FutureHelper$3;-><init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    invoke-virtual {p0, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->onTimeout(Lmicrosoft/aspnet/signalr/client/ErrorCallback;)V

    .line 62
    return-void
.end method
