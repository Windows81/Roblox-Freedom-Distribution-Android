.class Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->c:Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/l;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->c:Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->b:Landroid/content/Intent;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/roblox/client/pushnotification/l;->a(Landroid/os/Bundle;)V

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
