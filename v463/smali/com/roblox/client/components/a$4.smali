.class Lcom/roblox/client/components/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/a;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/roblox/client/components/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/a;Landroid/view/View;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/roblox/client/components/a$4;->b:Lcom/roblox/client/components/a;

    iput-object p2, p0, Lcom/roblox/client/components/a$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/roblox/client/components/a$4;->b:Lcom/roblox/client/components/a;

    iget-object v1, p0, Lcom/roblox/client/components/a$4;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/roblox/client/components/a;->b(Lcom/roblox/client/components/a;Landroid/view/View;I)V

    return-void
.end method
