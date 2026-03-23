.class Landroid/support/v4/view/w$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/w;->a(Landroid/support/v4/view/z;)Landroid/support/v4/view/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/z;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/view/w;


# direct methods
.method constructor <init>(Landroid/support/v4/view/w;Landroid/support/v4/view/z;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Landroid/support/v4/view/w$2;->c:Landroid/support/v4/view/w;

    iput-object p2, p0, Landroid/support/v4/view/w$2;->a:Landroid/support/v4/view/z;

    iput-object p3, p0, Landroid/support/v4/view/w$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Landroid/support/v4/view/w$2;->a:Landroid/support/v4/view/z;

    iget-object v1, p0, Landroid/support/v4/view/w$2;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/z;->a(Landroid/view/View;)V

    .line 782
    return-void
.end method
