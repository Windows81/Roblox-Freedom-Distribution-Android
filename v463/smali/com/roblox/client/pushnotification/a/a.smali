.class public Lcom/roblox/client/pushnotification/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/roblox/client/pushnotification/l$a;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;

    invoke-direct {v0, p2, p3, p4}, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/roblox/client/l;->a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;

    move-result-object p2

    if-nez p2, :cond_1

    .line 47
    invoke-static {}, Lcom/roblox/client/ae/l;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/roblox/platform/http/c/i;->b(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;

    move-result-object p2

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/roblox/platform/http/c/i;->a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Le/b;

    move-result-object p2

    .line 53
    :cond_1
    :goto_0
    new-instance p3, Lcom/roblox/client/pushnotification/a/a$1;

    invoke-direct {p3, p0, p5, p1}, Lcom/roblox/client/pushnotification/a/a$1;-><init>(Lcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;Landroid/content/Context;)V

    invoke-interface {p2, p3}, Le/b;->a(Le/d;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;Lcom/roblox/client/pushnotification/b/j;Lcom/roblox/client/pushnotification/j;)V
    .locals 6

    move-object v0, p4

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    .line 124
    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/pushnotification/r$a;->a(Lcom/roblox/client/pushnotification/b/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/j;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;)V
    .locals 6

    .line 86
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/roblox/platform/http/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/b;

    move-result-object p3

    new-instance p4, Lcom/roblox/client/pushnotification/a/a$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/a/a$2;-><init>(Lcom/roblox/client/pushnotification/a/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;)V

    invoke-interface {p3, p4}, Le/b;->a(Le/d;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/l$a;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/roblox/client/pushnotification/l$a;)V

    return-void
.end method

.method a(Lcom/roblox/client/pushnotification/l$a;Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-interface {p1, p2, p3}, Lcom/roblox/client/pushnotification/l$a;->a(Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V

    return-void
.end method
