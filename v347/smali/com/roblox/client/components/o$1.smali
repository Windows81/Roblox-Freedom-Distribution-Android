.class Lcom/roblox/client/components/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/o;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/o;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/roblox/client/components/o$1;->a:Lcom/roblox/client/components/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/roblox/client/components/o$1;->a:Lcom/roblox/client/components/o;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/roblox/client/components/o;->a(Lcom/roblox/client/components/o;F)F

    .line 142
    iget-object v0, p0, Lcom/roblox/client/components/o$1;->a:Lcom/roblox/client/components/o;

    invoke-static {v0}, Lcom/roblox/client/components/o;->a(Lcom/roblox/client/components/o;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 143
    return-void
.end method
