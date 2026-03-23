.class Lmicrosoft/aspnet/signalr/client/Connection$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/Connection;->startTransport(Lmicrosoft/aspnet/signalr/client/KeepAliveData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/Connection;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/Connection;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$8;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$8;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v1, "Slow connection detected"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 663
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$8;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$800(Lmicrosoft/aspnet/signalr/client/Connection;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$8;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/Connection;->access$800(Lmicrosoft/aspnet/signalr/client/Connection;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 666
    :cond_0
    return-void
.end method
