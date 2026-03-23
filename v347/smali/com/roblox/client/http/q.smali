.class public Lcom/roblox/client/http/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v1}, Lcom/roblox/client/pushnotification/q;-><init>()V

    .line 27
    invoke-virtual {v1, p1, v0}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v1

    new-instance v2, Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;

    invoke-direct {v2, v0, p2}, Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/roblox/platform/http/c/e;->a(Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/http/q$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/http/q$1;-><init>(Lcom/roblox/client/http/q;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 39
    return-void
.end method
