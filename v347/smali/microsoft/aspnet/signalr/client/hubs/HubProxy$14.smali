.class Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field final synthetic val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 511
    move-object v1, p1

    check-cast v1, Ljava/lang/Void;

    move-object v2, p2

    check-cast v2, Ljava/lang/Void;

    move-object v3, p3

    check-cast v3, Ljava/lang/Void;

    move-object v4, p4

    check-cast v4, Ljava/lang/Void;

    move-object v5, p5

    check-cast v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;->run(Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method

.method public run(Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$14;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;

    invoke-interface {v0}, Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler;->run()V

    .line 516
    return-void
.end method
