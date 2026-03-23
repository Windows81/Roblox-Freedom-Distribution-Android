.class public Lcom/roblox/client/http/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/i;->a()Le/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/http/n$1;

    invoke-direct {v1}, Lcom/roblox/client/http/n$1;-><init>()V

    invoke-interface {v0, v1}, Le/b;->a(Le/d;)V

    return-void
.end method
