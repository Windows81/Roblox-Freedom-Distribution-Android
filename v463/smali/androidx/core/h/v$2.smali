.class Landroidx/core/h/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/v;->a(Landroidx/core/h/y;)Landroidx/core/h/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/h/y;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/h/v;


# direct methods
.method constructor <init>(Landroidx/core/h/v;Landroidx/core/h/y;Landroid/view/View;)V
    .locals 0

    .line 778
    iput-object p1, p0, Landroidx/core/h/v$2;->c:Landroidx/core/h/v;

    iput-object p2, p0, Landroidx/core/h/v$2;->a:Landroidx/core/h/y;

    iput-object p3, p0, Landroidx/core/h/v$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 781
    iget-object p1, p0, Landroidx/core/h/v$2;->a:Landroidx/core/h/y;

    iget-object v0, p0, Landroidx/core/h/v$2;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/h/y;->a(Landroid/view/View;)V

    return-void
.end method
