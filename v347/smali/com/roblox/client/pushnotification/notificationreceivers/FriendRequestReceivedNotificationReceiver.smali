.class public Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;
.super Lcom/roblox/client/pushnotification/notificationreceivers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 54
    const-string v0, "EXTRA_NOTIFICATION_USER_ID"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 55
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v2, Lcom/roblox/client/http/h;

    invoke-direct {v2}, Lcom/roblox/client/http/h;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->acceptFriendRequestUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;

    invoke-direct {v4, v0, v1}, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;-><init>(J)V

    const/4 v0, 0x0

    new-instance v1, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;-><init>(Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/roblox/client/http/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    goto :goto_0
.end method

.method private c(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 85
    const-string v0, "EXTRA_NOTIFICATION_USER_ID"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;I)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;)V

    .line 135
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v2, Lcom/roblox/client/http/h;

    invoke-direct {v2}, Lcom/roblox/client/http/h;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->declineFriendRequest()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;

    invoke-direct {v4, v0, v1}, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;-><init>(J)V

    const/4 v0, 0x0

    new-instance v1, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;-><init>(Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/roblox/client/http/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 139
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    const-string v1, "FriendRequestReceived"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v0, "EXTRA_NOTIFICATION_USER_ID"

    const-string v1, "EXTRA_NOTIFICATION_USER_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 141
    return-object p2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "friend_request_received_accepted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string v0, "rbx.push"

    const-string v1, "FRRNR.onReceive() INTENT_ACTION_RECEIVED_FRIEND_REQUEST_ACCEPTED"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "FriendRequestReceived"

    const-string v1, "Accept"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;I)V

    .line 42
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->b(Landroid/content/Intent;Landroid/content/Context;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "friend_request_received_ignored"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "FriendRequestReceived"

    const-string v1, "Decline"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method
