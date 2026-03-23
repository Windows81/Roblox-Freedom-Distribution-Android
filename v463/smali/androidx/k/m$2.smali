.class Landroidx/k/m$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/m;->a(Landroid/animation/Animator;Landroidx/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a;

.field final synthetic b:Landroidx/k/m;


# direct methods
.method constructor <init>(Landroidx/k/m;Landroidx/c/a;)V
    .locals 0

    .line 896
    iput-object p1, p0, Landroidx/k/m$2;->b:Landroidx/k/m;

    iput-object p2, p0, Landroidx/k/m$2;->a:Landroidx/c/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 904
    iget-object v0, p0, Landroidx/k/m$2;->a:Landroidx/c/a;

    invoke-virtual {v0, p1}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Landroidx/k/m$2;->b:Landroidx/k/m;

    iget-object v0, v0, Landroidx/k/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 899
    iget-object v0, p0, Landroidx/k/m$2;->b:Landroidx/k/m;

    iget-object v0, v0, Landroidx/k/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
