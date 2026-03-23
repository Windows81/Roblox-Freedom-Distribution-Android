.class public Lcom/roblox/client/pushnotification/f;
.super Lcom/roblox/client/pushnotification/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/pushnotification/a",
        "<",
        "Lcom/roblox/client/pushnotification/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/a;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/pushnotification/b/d;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "EXTRA_NOTIFICATION_USER_ID"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    const-string v1, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/support/v4/app/z$c;Lcom/roblox/client/pushnotification/b/d;)Landroid/support/v4/app/z$c;
    .locals 4

    .prologue
    const v3, 0x7f0e019e

    const v2, 0x7f0e019d

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 79
    const v0, 0x7f07005c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "friend_request_received_accepted"

    invoke-direct {p0, p3, p1, v2}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/z$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    .line 80
    const v0, 0x7f070768

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "friend_request_received_ignored"

    invoke-direct {p0, p3, p1, v2}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/z$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    .line 85
    :goto_0
    return-object p2

    .line 82
    :cond_0
    const v0, 0x7f07005d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "friend_request_received_accepted"

    invoke-direct {p0, p3, p1, v2}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/z$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    .line 83
    const v0, 0x7f070769

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "friend_request_received_ignored"

    invoke-direct {p0, p3, p1, v2}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/z$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$c;

    goto :goto_0
.end method

.method private a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Notification;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 60
    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    const-string v2, "actions"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 64
    const-string v3, "action_divider"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 65
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 67
    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/d;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 150
    return-object p1
.end method

.method protected bridge synthetic a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/roblox/client/pushnotification/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/f;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/d;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 137
    const-string v0, "friend_request_received"

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "friend_request_received_cleared"

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Landroid/support/v4/app/z$c;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/pushnotification/f;->a(Landroid/content/Context;Landroid/support/v4/app/z$c;Lcom/roblox/client/pushnotification/b/d;)Landroid/support/v4/app/z$c;

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/z$c;->a()Landroid/app/Notification;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 42
    invoke-direct {p0, v1}, Lcom/roblox/client/pushnotification/f;->a(Landroid/app/Notification;)V

    .line 45
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 46
    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 48
    :cond_2
    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/d;Lcom/roblox/client/pushnotification/b/d;)Z
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/d;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/roblox/client/pushnotification/b/d;

    check-cast p2, Lcom/roblox/client/pushnotification/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;Lcom/roblox/client/pushnotification/b/d;)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/d;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 156
    const-string v0, "EXTRA_CATEGORY"

    const-string v1, "FriendRequestReceived"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v0, "EXTRA_STACKED_NOTIFICATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    :goto_0
    return-object p1

    .line 160
    :cond_0
    const-string v0, "EXTRA_NOTIFICATION_USER_ID"

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/d;->a()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    const-string v0, "EXTRA_STACKED_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected bridge synthetic b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/roblox/client/pushnotification/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/f;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/d;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 113
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v3}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/f;->a(Lcom/roblox/client/pushnotification/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/roblox/client/pushnotification/f;->a:Lcom/roblox/client/pushnotification/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/d;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "FriendRequestReceived"

    return-object v0
.end method

.method protected g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 145
    const-class v0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    return-object v0
.end method
