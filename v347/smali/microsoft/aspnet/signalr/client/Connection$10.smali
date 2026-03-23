.class Lmicrosoft/aspnet/signalr/client/Connection$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;


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
    .line 683
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$10;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$10;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    const-string v1, "Received data: "

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Connection;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 687
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$10;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0, p1}, Lmicrosoft/aspnet/signalr/client/Connection;->access$000(Lmicrosoft/aspnet/signalr/client/Connection;Ljava/lang/String;)V

    .line 688
    return-void
.end method
