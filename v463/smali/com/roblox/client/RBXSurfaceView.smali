.class public Lcom/roblox/client/RBXSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field protected a:Lcom/roblox/client/components/l;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 18
    iput-object p2, p0, Lcom/roblox/client/RBXSurfaceView;->b:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/roblox/client/RBXSurfaceView;->a()V

    .line 32
    iput-object p1, p0, Lcom/roblox/client/RBXSurfaceView;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 42
    new-instance v0, Lcom/roblox/client/components/l;

    invoke-direct {v0}, Lcom/roblox/client/components/l;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RBXSurfaceView;->a:Lcom/roblox/client/components/l;

    .line 43
    invoke-static {}, Lcom/roblox/client/b;->bL()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/l;->a(I)V

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/roblox/client/RBXSurfaceView;->a:Lcom/roblox/client/components/l;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/l;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/roblox/client/RBXSurfaceView;->b:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method
