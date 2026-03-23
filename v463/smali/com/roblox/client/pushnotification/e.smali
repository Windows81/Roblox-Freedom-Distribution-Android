.class public Lcom/roblox/client/pushnotification/e;
.super Lcom/roblox/client/pushnotification/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/pushnotification/a<",
        "Lcom/roblox/client/pushnotification/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/c;)Landroid/content/Intent;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 0

    .line 14
    check-cast p2, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/e;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/c;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "friend_request_accepted"

    return-object p1

    :cond_0
    const-string p1, "friend_request_accepted_cleared"

    return-object p1
.end method

.method public a(Lcom/roblox/client/pushnotification/b/c;Lcom/roblox/client/pushnotification/b/c;)Z
    .locals 3

    .line 18
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/c;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/c;->a()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 14
    check-cast p1, Lcom/roblox/client/pushnotification/b/c;

    check-cast p2, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/e;->a(Lcom/roblox/client/pushnotification/b/c;Lcom/roblox/client/pushnotification/b/c;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/c;)Landroid/content/Intent;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    const-string v1, "EXTRA_STACKED_NOTIFICATION"

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string p2, "EXTRA_NOTIFICATION_TYPE"

    const-string v0, "FriendRequestAccepted"

    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_CATEGORY"

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/c;->a()J

    move-result-wide v2

    const-string p2, "EXTRA_NOTIFICATION_USER_ID"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 0

    .line 14
    check-cast p2, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/e;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/c;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v4, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v4}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/c;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 41
    :goto_0
    iget-object v4, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v4}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_SingleFriendAcceptedRequest:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 44
    :cond_1
    iget-object v4, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v4}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_TwoFriendsAcceptedRequests:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 47
    :cond_2
    iget-object v4, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v4}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_ThreeFriendsAcceptedRequests:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 50
    :cond_3
    iget-object v4, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v4}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_MoreThanThreeFriendsAcceptedRequests:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()J
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/roblox/client/pushnotification/e;->a:Lcom/roblox/client/pushnotification/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "FriendRequestAccepted"

    return-object v0
.end method

.method protected g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 72
    const-class v0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestAcceptedNotificationReceiver;

    return-object v0
.end method
