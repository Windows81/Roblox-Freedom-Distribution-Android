.class Landroidx/core/h/v$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/v;->a(Landroid/view/View;Landroidx/core/h/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/h/w;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/h/v;


# direct methods
.method constructor <init>(Landroidx/core/h/v;Landroidx/core/h/w;Landroid/view/View;)V
    .locals 0

    .line 740
    iput-object p1, p0, Landroidx/core/h/v$1;->c:Landroidx/core/h/v;

    iput-object p2, p0, Landroidx/core/h/v$1;->a:Landroidx/core/h/w;

    iput-object p3, p0, Landroidx/core/h/v$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 743
    iget-object p1, p0, Landroidx/core/h/v$1;->a:Landroidx/core/h/w;

    iget-object v0, p0, Landroidx/core/h/v$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/h/w;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 748
    iget-object p1, p0, Landroidx/core/h/v$1;->a:Landroidx/core/h/w;

    iget-object v0, p0, Landroidx/core/h/v$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/h/w;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 753
    iget-object p1, p0, Landroidx/core/h/v$1;->a:Landroidx/core/h/w;

    iget-object v0, p0, Landroidx/core/h/v$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/h/w;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
