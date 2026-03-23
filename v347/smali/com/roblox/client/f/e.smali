.class public Lcom/roblox/client/f/e;
.super Lcom/roblox/client/f/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/roblox/client/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->c(Z)V

    .line 19
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/roblox/client/f/d;->onPause()V

    .line 13
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/d;->e()V

    .line 14
    return-void
.end method
