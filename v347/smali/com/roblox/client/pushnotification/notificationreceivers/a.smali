.class public abstract Lcom/roblox/client/pushnotification/notificationreceivers/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 106
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 108
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/content/Context;Lcom/roblox/client/game/a;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-virtual {p0, p1, v0, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/roblox/client/startup/e;->j:Lcom/roblox/client/startup/e;

    invoke-static {p1, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    invoke-virtual {p0, p1, v0, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/roblox/client/http/q;

    invoke-direct {v0}, Lcom/roblox/client/http/q;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/http/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 66
    const-string v0, "EXTRA_STACKED_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "rbx.push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marking single notifcation as read with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v0, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "rbx.push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marking stacked notifications as read with last id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_CATEGORY"

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_ID"

    .line 75
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v0, v1, v2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/pushnotification/i;->b()V

    .line 63
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;)V

    .line 141
    const-string v0, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    const-string v1, "actionTaken"

    invoke-static {p2}, Lcom/roblox/client/util/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "FriendRequestReceived"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 145
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 95
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    const-string v1, "GcmPlatform"

    invoke-virtual {v0, p2, v1}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "EXTRA_NOTIFICATION_ID"

    .line 96
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v2, p7

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 95
    invoke-static/range {v0 .. v6}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    const-string v1, "GcmPlatform"

    invoke-virtual {v0, p2, v1}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "EXTRA_NOTIFICATION_ID"

    .line 90
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/roblox/client/util/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v2, p5

    move v5, p4

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/roblox/client/http/p;

    invoke-direct {v0}, Lcom/roblox/client/http/p;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/http/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 112
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    const-string v0, "rbx.push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleared notifications of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, v5}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;)V

    .line 118
    const-string v1, "dismissed"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 119
    return-void
.end method

.method protected c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 123
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    const-string v0, "rbx.push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0, v5}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Intent;Landroid/content/Context;)V

    .line 132
    const-string v1, "clicked"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    .line 133
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 31
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/i/c$b;->b:Lcom/roblox/client/i/c$b;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V

    .line 32
    invoke-static {p1}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    .line 36
    if-eqz p2, :cond_0

    .line 37
    const-string v0, "EXTRA_INTENT_ACTION_TYPE_CODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v0, "EXTRA_INTENT_ACTION_TYPE_CODE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
