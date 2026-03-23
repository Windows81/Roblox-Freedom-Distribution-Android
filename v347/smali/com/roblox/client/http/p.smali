.class public Lcom/roblox/client/http/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;

    invoke-direct {v1, p1, p2, p3}, Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/e;->a(Lcom/roblox/platform/http/postbody/notifications/PushMarkCategoryAsReadPostBody;)Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/http/p$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/http/p$1;-><init>(Lcom/roblox/client/http/p;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 30
    return-void
.end method
