.class public Lcom/roblox/client/http/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;

    invoke-direct {v1, p1, p2, p3}, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/i;->a(Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;)Le/b;

    move-result-object p1

    new-instance p2, Lcom/roblox/client/http/o$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/http/o$1;-><init>(Lcom/roblox/client/http/o;)V

    invoke-interface {p1, p2}, Le/b;->a(Le/d;)V

    return-void
.end method
