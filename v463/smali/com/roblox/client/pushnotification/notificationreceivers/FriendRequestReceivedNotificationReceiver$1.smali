.class Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->b(Landroid/content/Intent;Landroid/content/Context;)V
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

    .line 56
    iput-object p1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 82
    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->b:Landroid/content/Intent;

    invoke-static {v2}, Lcom/roblox/client/ae/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "Accept"

    const/4 v6, 0x1

    const-string v7, "FriendRequestReceived"

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

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

    .line 59
    new-instance p1, Lcom/roblox/platform/http/returntypes/b;

    invoke-direct {p1, p2}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 60
    invoke-virtual {p1}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result p2

    if-nez p2, :cond_1

    .line 61
    sget p2, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Response_UnableToCompleteAction:I

    .line 62
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

    .line 63
    iget p1, p1, Lcom/roblox/platform/http/returntypes/b;->a:I

    const/16 v1, 0x191

    if-ne p1, v1, :cond_0

    .line 64
    sget p2, Lcom/roblox/client/o$j;->Application_Logout_Response_SorryLoggedOut:I

    const-string v0, "unauthenticated"

    .line 67
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a(ILjava/lang/String;)V

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 74
    sget p1, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Response_UnableToCompleteAction:I

    const-string p2, "client_failure"

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a(ILjava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->c:Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;

    iget-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver$1;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/pushnotification/notificationreceivers/FriendRequestReceivedNotificationReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
