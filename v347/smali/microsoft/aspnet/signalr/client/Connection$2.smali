.class Lmicrosoft/aspnet/signalr/client/Connection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/Connection;->handleFutureError(Lmicrosoft/aspnet/signalr/client/SignalRFuture;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/Connection;

.field final synthetic val$mustCleanCurrentConnection:Z

.field final synthetic val$that:Lmicrosoft/aspnet/signalr/client/Connection;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/Connection;Lmicrosoft/aspnet/signalr/client/Connection;Z)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$2;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/Connection$2;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    iput-boolean p3, p0, Lmicrosoft/aspnet/signalr/client/Connection$2;->val$mustCleanCurrentConnection:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$2;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFutureError() onError() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 327
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$2;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    iget-boolean v1, p0, Lmicrosoft/aspnet/signalr/client/Connection$2;->val$mustCleanCurrentConnection:Z

    invoke-virtual {v0, p1, v1}, Lmicrosoft/aspnet/signalr/client/Connection;->onError(Ljava/lang/Throwable;Z)V

    .line 328
    return-void
.end method
