.class Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->invoke(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->access$000(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;)Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;

    move-result-object v0

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$6;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/hubs/HubConnection;->removeCallback(Ljava/lang/String;)V

    .line 381
    return-void
.end method
