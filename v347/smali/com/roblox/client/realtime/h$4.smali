.class Lcom/roblox/client/realtime/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/hubs/SubscriptionHandler1",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/realtime/h;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/roblox/client/realtime/h$4;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/roblox/client/realtime/h$4;->a:Lcom/roblox/client/realtime/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RbxSignalRImpl SubscriptionHandler1[subscriptionStatus]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;Ljava/lang/String;)V

    .line 176
    const-string v0, "ConnectionLost"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/roblox/client/realtime/h$4;->a:Lcom/roblox/client/realtime/h;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/h;->stop()V

    .line 179
    iget-object v0, p0, Lcom/roblox/client/realtime/h$4;->a:Lcom/roblox/client/realtime/h;

    invoke-virtual {v0}, Lcom/roblox/client/realtime/h;->b()V

    .line 180
    iget-object v0, p0, Lcom/roblox/client/realtime/h$4;->a:Lcom/roblox/client/realtime/h;

    invoke-static {v0}, Lcom/roblox/client/realtime/h;->e(Lcom/roblox/client/realtime/h;)V

    .line 182
    :cond_0
    return-void
.end method

.method public synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/realtime/h$4;->a(Ljava/lang/String;)V

    return-void
.end method
