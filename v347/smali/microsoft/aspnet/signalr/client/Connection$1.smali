.class Lmicrosoft/aspnet/signalr/client/Connection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/Connection;->send(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/Connection;

.field final synthetic val$that:Lmicrosoft/aspnet/signalr/client/Connection;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/Connection;Lmicrosoft/aspnet/signalr/client/Connection;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/Connection$1;->this$0:Lmicrosoft/aspnet/signalr/client/Connection;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/Connection$1;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/Connection$1;->val$that:Lmicrosoft/aspnet/signalr/client/Connection;

    invoke-static {v0, p1}, Lmicrosoft/aspnet/signalr/client/Connection;->access$000(Lmicrosoft/aspnet/signalr/client/Connection;Ljava/lang/String;)V

    .line 304
    return-void
.end method
