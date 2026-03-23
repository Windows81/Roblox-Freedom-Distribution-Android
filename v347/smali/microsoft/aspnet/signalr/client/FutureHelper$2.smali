.class final Lmicrosoft/aspnet/signalr/client/FutureHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/FutureHelper;->copyHandlers(Lmicrosoft/aspnet/signalr/client/SignalRFuture;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$targetFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/FutureHelper$2;->val$targetFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/FutureHelper$2;->val$targetFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method
