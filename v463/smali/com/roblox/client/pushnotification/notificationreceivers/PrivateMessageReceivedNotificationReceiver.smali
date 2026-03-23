.class public Lcom/roblox/client/pushnotification/notificationreceivers/PrivateMessageReceivedNotificationReceiver;
.super Lcom/roblox/client/pushnotification/notificationreceivers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string p1, "EXTRA_NOTIFICATION_TYPE"

    const-string v0, "PrivateMessageReceived"

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_STACKED_NOTIFICATION"

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    const-string p1, "EXTRA_CONVERSATION_ID"

    .line 15
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    return-object p2
.end method
