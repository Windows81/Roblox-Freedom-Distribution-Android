.class Lcom/roblox/client/game/ActivityGame$3;
.super Lcom/roblox/engine/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame;Landroid/content/Context;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$3;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {p0, p2}, Lcom/roblox/engine/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/engine/a/b;
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame$3;->a:Lcom/roblox/client/game/ActivityGame;

    .line 268
    invoke-static {v0}, Lcom/roblox/client/game/ActivityGame;->c(Lcom/roblox/client/game/ActivityGame;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/ActivityGame$3;->a:Lcom/roblox/client/game/ActivityGame;

    .line 269
    invoke-virtual {v1}, Lcom/roblox/client/game/ActivityGame;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/ActivityGame$3;->a:Lcom/roblox/client/game/ActivityGame;

    .line 271
    invoke-virtual {v2}, Lcom/roblox/client/game/ActivityGame;->L()Lcom/roblox/client/p/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/p/a;->b()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    .line 267
    invoke-static {v0, v1, v3, v2}, Lcom/roblox/engine/a/b;->a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/graphics/Rect;)Lcom/roblox/engine/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
