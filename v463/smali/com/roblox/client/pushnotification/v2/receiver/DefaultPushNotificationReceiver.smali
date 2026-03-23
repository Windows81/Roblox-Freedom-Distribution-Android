.class public Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    const-string v1, "DefaultNotification"

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_NOTIFICATION_CUSTOM_DATA"

    .line 113
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 52
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->d()Z

    move-result v0

    const-string v1, "rbx.push"

    if-eqz v0, :cond_1

    const-string v0, "loadTheApp: (v2) ...(logged in) launch Main."

    .line 53
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    new-instance v1, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver$1;-><init>(Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    sget p1, Lcom/roblox/client/q;->k:I

    if-nez p1, :cond_0

    const/16 p1, 0x3e8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const-string v0, "loadTheApp: (v2) ...(not logged in) launch Splash."

    .line 69
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/roblox/client/startup/e;->j:Lcom/roblox/client/startup/e;

    invoke-static {p1, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0, p2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/os/Bundle;)V

    :cond_2
    const v0, 0x10008000

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 82
    new-instance v0, Lcom/roblox/client/http/p;

    invoke-direct {v0}, Lcom/roblox/client/http/p;-><init>()V

    const-string v1, "EXTRA_NOTIFICATION_ID"

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {v0, p2, p1}, Lcom/roblox/client/http/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V
    .locals 8

    .line 88
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    const-string v1, "GcmPlatform"

    invoke-virtual {v0, p2, v1}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "EXTRA_NOTIFICATION_ID"

    .line 89
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v4, p5

    move v7, p4

    .line 88
    invoke-static/range {v2 .. v7}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    .line 94
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleared notifications of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "dismissed"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    .line 103
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 105
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Landroid/content/Intent;Landroid/content/Context;)V

    const-string v2, "clicked"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 108
    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 36
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 37
    invoke-static {p1}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const-string v0, "EXTRA_INTENT_ACTION_TYPE_CODE"

    const/4 v1, -0x1

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
