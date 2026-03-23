.class final Lcom/roblox/client/components/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/g;->a(Landroid/view/View;FFI)Landroid/view/animation/AlphaAnimation;
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

    .line 16
    iput-object p1, p0, Lcom/roblox/client/components/g$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/roblox/client/components/g$1;->b:F

    iput p3, p0, Lcom/roblox/client/components/g$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/roblox/client/components/g$1;->a:Landroid/view/View;

    iget v0, p0, Lcom/roblox/client/components/g$1;->c:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 19
    iget-object p1, p0, Lcom/roblox/client/components/g$1;->a:Landroid/view/View;

    iget v0, p0, Lcom/roblox/client/components/g$1;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
