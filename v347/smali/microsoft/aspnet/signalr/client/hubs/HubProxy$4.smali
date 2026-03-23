.class Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field final synthetic val$sendFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$4;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$4;->val$sendFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$4;->val$sendFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 287
    return-void
.end method
