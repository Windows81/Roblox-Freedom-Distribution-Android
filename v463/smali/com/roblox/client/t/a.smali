.class public abstract Lcom/roblox/client/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroidx/fragment/app/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/roblox/client/t/a;->a:Landroidx/fragment/app/c;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/roblox/client/t/a;->a:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    instance-of v2, v0, Lcom/roblox/client/q;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/roblox/client/q;

    invoke-virtual {v0}, Lcom/roblox/client/q;->D()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected b()I
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/roblox/client/t/a;->a:Landroidx/fragment/app/c;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/t/a;->a:Landroidx/fragment/app/c;

    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/c;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/t/a;->a:Landroidx/fragment/app/c;

    check-cast v3, Lcom/roblox/client/q;

    .line 33
    invoke-virtual {v3}, Lcom/roblox/client/q;->L()Lcom/roblox/client/p/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/p/a;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 30
    invoke-static {v1, v2, v0, v3}, Lcom/roblox/engine/a/b;->a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/graphics/Rect;)Lcom/roblox/engine/a/b;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/roblox/client/t/a;->a:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$d;->mainTabWidgetHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 37
    invoke-static {}, Lcom/roblox/client/b;->cj()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget v1, v0, Lcom/roblox/engine/a/b;->b:I

    iget v2, v0, Lcom/roblox/engine/a/b;->g:I

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/roblox/engine/a/b;->c:I

    sub-int/2addr v1, v0

    return v1

    .line 40
    :cond_0
    iget v2, v0, Lcom/roblox/engine/a/b;->b:I

    iget v3, v0, Lcom/roblox/engine/a/b;->g:I

    sub-int/2addr v2, v3

    iget v0, v0, Lcom/roblox/engine/a/b;->c:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2
.end method
