.class Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->c(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/d<",
        "Lc/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;I)V

    .line 150
    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->b:Landroid/content/Intent;

    invoke-static {v2}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "Decline"

    const/4 v6, 0x0

    const-string v7, "FriendRequestReceived"

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Le/l<",
            "Lc/ad;",
            ">;)V"
        }
    .end annotation

    .line 99
    new-instance p1, Lcom/roblox/platform/http/returntypes/b;

    invoke-direct {p1, p2}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 100
    invoke-virtual {p1}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 103
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$g;->friend_request_ignored_layout:I

    invoke-direct {p1, p2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 105
    new-instance p2, Landroidx/core/app/i$c;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    const-string v1, "channel_general"

    invoke-direct {p2, v0, v1}, Landroidx/core/app/i$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Lcom/roblox/client/o$e;->ic_launcher_transparent:I

    .line 106
    invoke-virtual {p2, v0}, Landroidx/core/app/i$c;->a(I)Landroidx/core/app/i$c;

    move-result-object p2

    .line 107
    invoke-virtual {p2, p1}, Landroidx/core/app/i$c;->a(Landroid/widget/RemoteViews;)Landroidx/core/app/i$c;

    move-result-object p1

    const/4 p2, 0x1

    .line 108
    invoke-virtual {p1, p2}, Landroidx/core/app/i$c;->a(Z)Landroidx/core/app/i$c;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1}, Landroidx/core/app/i$c;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x1770

    .line 116
    new-instance p2, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2$1;-><init>(Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 123
    :cond_0
    sget p2, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Response_UnableToCompleteAction:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/roblox/platform/http/returntypes/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "error_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/platform/http/returntypes/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget p1, p1, Lcom/roblox/platform/http/returntypes/b;->a:I

    const/16 v1, 0x191

    if-ne p1, v1, :cond_1

    .line 126
    sget p2, Lcom/roblox/client/o$j;->Application_Logout_Response_SorryLoggedOut:I

    const-string v0, "unauthenticated"

    .line 130
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a(ILjava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a()V

    :goto_0
    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 137
    sget p1, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Response_UnableToCompleteAction:I

    const-string p2, "client_failure"

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a(ILjava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$2;->a()V

    return-void
.end method
