.class Lcom/google/android/material/internal/d$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/d;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/material/internal/d$1;->a:Lcom/google/android/material/internal/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/material/internal/d$1;->a:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->a:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/google/android/material/internal/d$1;->a:Lcom/google/android/material/internal/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/material/internal/d;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
