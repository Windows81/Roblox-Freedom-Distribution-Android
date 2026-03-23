.class public Lcom/roblox/client/pushnotification/v2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/v2/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/roblox/client/pushnotification/v2/a/b;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/v2/a;->b(Landroid/content/Context;Lcom/roblox/client/pushnotification/v2/a/b;)Landroidx/core/app/i$c;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/core/app/i$c;->b()Landroid/app/Notification;

    move-result-object v0

    .line 22
    invoke-static {p1}, Landroidx/core/app/l;->a(Landroid/content/Context;)Landroidx/core/app/l;

    move-result-object p1

    .line 23
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->i()I

    move-result p2

    invoke-virtual {p1, v1, p2, v0}, Landroidx/core/app/l;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b(Landroid/content/Context;Lcom/roblox/client/pushnotification/v2/a/b;)Landroidx/core/app/i$c;
    .locals 3

    .line 29
    new-instance v0, Landroidx/core/app/i$c;

    const-string v1, "channel_games"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/i$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-interface {p2, p1}, Lcom/roblox/client/pushnotification/v2/a/b;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Landroid/app/PendingIntent;)Landroidx/core/app/i$c;

    .line 37
    invoke-interface {p2, p1}, Lcom/roblox/client/pushnotification/v2/a/b;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->b(Landroid/app/PendingIntent;)Landroidx/core/app/i$c;

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->d(I)Landroidx/core/app/i$c;

    .line 41
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->f(I)Landroidx/core/app/i$c;

    const/4 v2, 0x2

    .line 42
    invoke-virtual {v0, v2}, Landroidx/core/app/i$c;->c(I)Landroidx/core/app/i$c;

    .line 44
    invoke-interface {p2, p1}, Lcom/roblox/client/pushnotification/v2/a/b;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/i$c;->a(I)Landroidx/core/app/i$c;

    .line 45
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/i$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 46
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/i$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 47
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Z)Landroidx/core/app/i$c;

    .line 48
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->b(I)Landroidx/core/app/i$c;

    .line 49
    invoke-interface {p2, p1}, Lcom/roblox/client/pushnotification/v2/a/b;->d(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/i$c;->a(Landroid/net/Uri;)Landroidx/core/app/i$c;

    .line 51
    new-instance p1, Landroidx/core/app/i$b;

    invoke-direct {p1}, Landroidx/core/app/i$b;-><init>()V

    invoke-interface {p2}, Lcom/roblox/client/pushnotification/v2/a/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/i$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$b;

    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Landroidx/core/app/i$c;->a(Landroidx/core/app/i$d;)Landroidx/core/app/i$c;

    return-object v0
.end method
