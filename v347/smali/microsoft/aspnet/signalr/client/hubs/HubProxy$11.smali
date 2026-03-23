.class Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;->on(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler5",
        "<TE1;TE2;TE3;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

.field final synthetic val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;->this$0:Lmicrosoft/aspnet/signalr/client/hubs/HubProxy;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 481
    move-object v4, p4

    check-cast v4, Ljava/lang/Void;

    move-object v5, p5

    check-cast v5, Ljava/lang/Void;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Void;)V

    return-void
.end method

.method public run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Void;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;TE3;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/hubs/HubProxy$11;->val$handler:Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;

    invoke-interface {v0, p1, p2, p3}, Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    return-void
.end method
