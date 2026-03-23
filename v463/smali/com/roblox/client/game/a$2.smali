.class Lcom/roblox/client/game/a$2;
.super Lcom/roblox/engine/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/a;->at()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/a;Landroid/content/Context;Lcom/roblox/engine/a/a$a;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/roblox/client/game/a$2;->a:Lcom/roblox/client/game/a;

    invoke-direct {p0, p2, p3}, Lcom/roblox/engine/a/a;-><init>(Landroid/content/Context;Lcom/roblox/engine/a/a$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/engine/a/b;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/roblox/client/game/a$2;->a:Lcom/roblox/client/game/a;

    invoke-virtual {v0}, Lcom/roblox/client/game/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/roblox/client/game/a$2;->a:Lcom/roblox/client/game/a;

    .line 253
    invoke-static {v1}, Lcom/roblox/client/game/a;->a(Lcom/roblox/client/game/a;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/game/a$2;->a:Lcom/roblox/client/game/a;

    .line 255
    invoke-static {v2}, Lcom/roblox/client/game/a;->c(Lcom/roblox/client/game/a;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/game/a$2;->a:Lcom/roblox/client/game/a;

    .line 256
    invoke-virtual {v3}, Lcom/roblox/client/game/a;->r()Landroidx/fragment/app/c;

    move-result-object v3

    check-cast v3, Lcom/roblox/client/q;

    invoke-virtual {v3}, Lcom/roblox/client/q;->L()Lcom/roblox/client/p/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/p/a;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 252
    invoke-static {v1, v0, v2, v3}, Lcom/roblox/engine/a/b;->a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/graphics/Rect;)Lcom/roblox/engine/a/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
