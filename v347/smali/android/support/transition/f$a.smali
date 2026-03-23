.class Landroid/support/transition/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Landroid/support/transition/f$a;->e:Landroid/view/View;

    .line 469
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 490
    iget-object v0, p0, Landroid/support/transition/f$a;->e:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/f$a;->a:I

    iget v2, p0, Landroid/support/transition/f$a;->b:I

    iget v3, p0, Landroid/support/transition/f$a;->c:I

    iget v4, p0, Landroid/support/transition/f$a;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/am;->a(Landroid/view/View;IIII)V

    .line 491
    iput v5, p0, Landroid/support/transition/f$a;->f:I

    .line 492
    iput v5, p0, Landroid/support/transition/f$a;->g:I

    .line 493
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 472
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/f$a;->a:I

    .line 473
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/f$a;->b:I

    .line 474
    iget v0, p0, Landroid/support/transition/f$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/f$a;->f:I

    .line 475
    iget v0, p0, Landroid/support/transition/f$a;->f:I

    iget v1, p0, Landroid/support/transition/f$a;->g:I

    if-ne v0, v1, :cond_0

    .line 476
    invoke-direct {p0}, Landroid/support/transition/f$a;->a()V

    .line 478
    :cond_0
    return-void
.end method

.method b(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 481
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/f$a;->c:I

    .line 482
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/transition/f$a;->d:I

    .line 483
    iget v0, p0, Landroid/support/transition/f$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/f$a;->g:I

    .line 484
    iget v0, p0, Landroid/support/transition/f$a;->f:I

    iget v1, p0, Landroid/support/transition/f$a;->g:I

    if-ne v0, v1, :cond_0

    .line 485
    invoke-direct {p0}, Landroid/support/transition/f$a;->a()V

    .line 487
    :cond_0
    return-void
.end method
