.class public abstract Lcom/roblox/client/pushnotification/notificationreceivers/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 116
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->d()Z

    move-result v0

    const-string v1, "rbx.push"

    if-eqz v0, :cond_0

    const-string v0, "loadTheApp: ...(logged in) launch Main."

    .line 51
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/l;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    invoke-virtual {p0, p1, v0, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "loadTheApp: ...(not logged in) launch Splash."

    .line 57
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lcom/roblox/client/startup/e;->j:Lcom/roblox/client/startup/e;

    invoke-static {p1, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-virtual {p0, p1, v0, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const v0, 0x10008000

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/l;->a(Landroid/os/Bundle;)V

    .line 67
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/roblox/client/http/p;

    invoke-direct {v0}, Lcom/roblox/client/http/p;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/http/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const-string v0, "EXTRA_STACKED_NOTIFICATION"

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "rbx.push"

    const-string v2, "EXTRA_NOTIFICATION_ID"

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marking single notifcation as read with id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "marking stacked notifications as read with last id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "EXTRA_NOTIFICATION_TYPE"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EXTRA_CATEGORY"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p2, v0, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/pushnotification/i;->b()V

    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    .line 147
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;)V

    const-string p1, "EXTRA_NOTIFICATION_ID"

    .line 150
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    invoke-static {p2}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "actionTaken"

    const/4 v6, 0x1

    const-string v7, "FriendRequestReceived"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    .line 104
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    const-string v1, "GcmPlatform"

    move-object v2, p2

    invoke-virtual {v0, p2, v1}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "EXTRA_NOTIFICATION_ID"

    move-object v1, p3

    .line 105
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object/from16 v4, p7

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 104
    invoke-static/range {v2 .. v8}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V
    .locals 8

    .line 98
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    const-string v1, "GcmPlatform"

    invoke-virtual {v0, p2, v1}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "EXTRA_NOTIFICATION_ID"

    .line 99
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v4, p5

    move v7, p4

    .line 98
    invoke-static/range {v2 .. v7}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/roblox/client/http/o;

    invoke-direct {v0}, Lcom/roblox/client/http/o;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/http/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    .line 121
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleared notifications of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, v6}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;)V

    const-string v2, "dismissed"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 127
    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method protected c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    .line 132
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0, v6}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Landroid/content/Intent;Landroid/content/Context;)V

    const-string v2, "clicked"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 141
    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 33
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 34
    invoke-static {p1}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const-string v0, "EXTRA_INTENT_ACTION_TYPE_CODE"

    const/4 v1, -0x1

    .line 39
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
