.class public Lcom/roblox/client/pushnotification/v2/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/v2/a/b;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "version"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/ae/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->a:I

    const-string v0, "notificationType"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->b:Ljava/lang/String;

    const-string v0, "notificationId"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->c:Ljava/lang/String;

    const-string v0, "body"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->d:Ljava/lang/String;

    const-string v0, "title"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->e:Ljava/lang/String;

    const-string v0, "iconUrl"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->f:Ljava/lang/String;

    const-string v0, "tag"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->g:Ljava/lang/String;

    const-string v0, "sound"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->h:Ljava/lang/String;

    const-string v0, "badge"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/ae/j;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->i:I

    const-string v0, "data"

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/roblox/client/pushnotification/v2/a/a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "push_notification_opened"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    const-class v1, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/v2/a/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_INTENT_ACTION_TYPE_CODE"

    const/4 v2, 0x2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/v2/a/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/v2/a/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_CUSTOM_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/v2/a/a;->i()I

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->i:I

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "push_notification_cleared"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    const-class v1, Lcom/roblox/client/pushnotification/v2/receiver/DefaultPushNotificationReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/v2/a/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_INTENT_ACTION_TYPE_CODE"

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/v2/a/a;->i()I

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;)I
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/roblox/client/pushnotification/v2/a/a;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 113
    sget p1, Lcom/roblox/client/o$e;->notification_icon:I

    return p1

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 119
    sget p1, Lcom/roblox/client/o$e;->notification_icon:I

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/roblox/client/pushnotification/v2/a/a;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    sget-object p1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object p1

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/pushnotification/v2/a/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->a:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/roblox/client/pushnotification/v2/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
