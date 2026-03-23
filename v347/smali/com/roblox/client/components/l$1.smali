.class final Lcom/roblox/client/components/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/l;->a(Landroid/view/View;FFI)Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:F


# direct methods
.method constructor <init>(Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/roblox/client/components/l$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/roblox/client/components/l$1;->b:F

    iput p3, p0, Lcom/roblox/client/components/l$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/roblox/client/components/l$1;->a:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/l$1;->c:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/l$1;->a:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/l$1;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    return-void
.end method
