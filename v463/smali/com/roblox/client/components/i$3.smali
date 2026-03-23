.class Lcom/roblox/client/components/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/i;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/i;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/roblox/client/components/i$3;->a:Lcom/roblox/client/components/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/roblox/client/components/i$3;->a:Lcom/roblox/client/components/i;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/roblox/client/components/i;->a(Lcom/roblox/client/components/i;I)I

    .line 172
    iget-object p1, p0, Lcom/roblox/client/components/i$3;->a:Lcom/roblox/client/components/i;

    invoke-static {p1}, Lcom/roblox/client/components/i;->a(Lcom/roblox/client/components/i;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
