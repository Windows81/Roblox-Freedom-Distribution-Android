.class public Lcom/roblox/client/pushnotification/k;
.super Lcom/roblox/client/pushnotification/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/pushnotification/a",
        "<",
        "Lcom/roblox/client/pushnotification/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 61
    return-object p1
.end method

.method protected bridge synthetic a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 10
    check-cast p2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/k;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 48
    const-string v0, "private_message_received"

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "private_message_received_cleared"

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/f;Lcom/roblox/client/pushnotification/b/f;)Z
    .locals 4

    .prologue
    .line 14
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/roblox/client/pushnotification/b/f;

    check-cast p2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/k;->a(Lcom/roblox/client/pushnotification/b/f;Lcom/roblox/client/pushnotification/b/f;)Z

    move-result v0

    return v0
.end method

.method protected b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 67
    const-string v0, "EXTRA_CATEGORY"

    const-string v1, "PrivateMessageReceived"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v0, "EXTRA_STACKED_NOTIFICATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    :goto_0
    return-object p1

    .line 71
    :cond_0
    const-string v0, "EXTRA_CONVERSATION_ID"

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72
    const-string v0, "EXTRA_STACKED_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected bridge synthetic b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 10
    check-cast p2, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/k;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/f;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    iget-object v0, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/k;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/k;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v2}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
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

    .prologue
    .line 42
    const-string v0, "PrivateMessageReceived"

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
    .line 56
    const-class v0, Lcom/roblox/client/pushnotification/notificationreceivers/PrivateMessageReceivedNotificationReceiver;

    return-object v0
.end method
