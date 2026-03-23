.class public Lcom/roblox/client/RBXSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/RBXSurfaceView;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
