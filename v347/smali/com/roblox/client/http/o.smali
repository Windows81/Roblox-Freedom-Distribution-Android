.class public Lcom/roblox/client/http/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/e;->a()Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/http/o$1;

    invoke-direct {v1}, Lcom/roblox/client/http/o$1;-><init>()V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 48
    return-void
.end method
