.class public Lcom/roblox/client/pushnotification/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/roblox/client/pushnotification/l$a;)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;

    invoke-direct {v0, p2, p3, p4}, Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/roblox/client/util/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/platform/http/c/e;->b(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Ld/b;

    move-result-object v0

    .line 50
    :goto_0
    new-instance v1, Lcom/roblox/client/pushnotification/a/a$1;

    invoke-direct {v1, p0, p5, p1}, Lcom/roblox/client/pushnotification/a/a$1;-><init>(Lcom/roblox/client/pushnotification/a/a;Lcom/roblox/client/pushnotification/l$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 72
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/platform/http/c/e;->a(Lcom/roblox/platform/http/postbody/notifications/RegisterPushNotificationPostBody;)Ld/b;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;Lcom/roblox/client/pushnotification/b/j;Lcom/roblox/client/pushnotification/j;)V
    .locals 6

    .prologue
    .line 121
    move-object v0, p4

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/pushnotification/r$a;->a(Lcom/roblox/client/pushnotification/b/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/j;)V

    .line 122
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;)V
    .locals 7

    .prologue
    .line 83
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/roblox/platform/http/c/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;

    move-result-object v6

    new-instance v0, Lcom/roblox/client/pushnotification/a/a$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/a/a$2;-><init>(Lcom/roblox/client/pushnotification/a/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/pushnotification/r$a;)V

    invoke-interface {v6, v0}, Ld/b;->a(Ld/d;)V

    .line 114
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/pushnotification/l$a;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/a/a;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/roblox/client/pushnotification/l$a;)V

    .line 39
    return-void
.end method

.method a(Lcom/roblox/client/pushnotification/l$a;Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    invoke-interface {p1, p2, p3}, Lcom/roblox/client/pushnotification/l$a;->a(Lcom/roblox/client/pushnotification/b/n;Landroid/content/Context;)V

    .line 78
    return-void
.end method
