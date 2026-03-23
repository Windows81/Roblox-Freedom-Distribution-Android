.class public Lcom/roblox/client/pushnotification/k;
.super Lcom/roblox/client/pushnotification/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/pushnotification/a<",
        "Lcom/roblox/client/pushnotification/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 0

    .line 10
    check-cast p2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/k;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "private_message_received"

    return-object p1

    :cond_0
    const-string p1, "private_message_received_cleared"

    return-object p1
.end method

.method public a(Lcom/roblox/client/pushnotification/b/f;Lcom/roblox/client/pushnotification/b/f;)Z
    .locals 3

    .line 14
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/f;->a()J

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

    .line 10
    check-cast p1, Lcom/roblox/client/pushnotification/b/f;

    check-cast p2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/k;->a(Lcom/roblox/client/pushnotification/b/f;Lcom/roblox/client/pushnotification/b/f;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    const-string v1, "EXTRA_STACKED_NOTIFICATION"

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const-string p2, "EXTRA_CATEGORY"

    const-string v0, "PrivateMessageReceived"

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v2

    const-string p2, "EXTRA_CONVERSATION_ID"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 0

    .line 10
    check-cast p2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/k;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_SentPrivateMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/k;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {v2}, Lcom/roblox/client/pushnotification/b/f;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Label_NewPrivateMessages:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v2}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public e()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    iget-object v1, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    .line 28
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "PrivateMessageReceived"

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

    .line 56
    const-class v0, Lcom/roblox/client/pushnotification/notificationreceivers/PrivateMessageReceivedNotificationReceiver;

    return-object v0
.end method
