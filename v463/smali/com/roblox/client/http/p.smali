.class public Lcom/roblox/client/http/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

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

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;

    invoke-direct {v1, p1, p2}, Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/i;->a(Lcom/roblox/platform/http/postbody/notifications/PushMarkAsReadPostBody;)Le/b;

    move-result-object p1

    new-instance p2, Lcom/roblox/client/http/p$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/http/p$1;-><init>(Lcom/roblox/client/http/p;)V

    invoke-interface {p1, p2}, Le/b;->a(Le/d;)V

    return-void
.end method
