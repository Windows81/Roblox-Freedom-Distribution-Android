.class public Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestAcceptedNotificationReceiver;
.super Lcom/roblox/client/pushnotification/notificationreceivers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 12
    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    const-string v1, "FriendRequestAccepted"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v0, "EXTRA_NOTIFICATION_USER_ID"

    const-string v1, "EXTRA_NOTIFICATION_USER_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14
    return-object p2
.end method
