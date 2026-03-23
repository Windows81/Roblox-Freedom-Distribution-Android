.class public abstract Landroid/support/v4/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/a$a;,
        Landroid/support/v4/widget/a$b;
    }
.end annotation


# static fields
.field private static final r:I


# instance fields
.field final a:Landroid/support/v4/widget/a$a;

.field final b:Landroid/view/View;

.field c:Z

.field d:Z

.field e:Z

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Ljava/lang/Runnable;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/a;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/support/v4/widget/a$a;

    invoke-direct {v0}, Landroid/support/v4/widget/a$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    .line 140
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->f:Landroid/view/animation/Interpolator;

    .line 149
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    .line 152
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/v4/widget/a;->i:[F

    .line 161
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    .line 164
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/support/v4/widget/a;->m:[F

    .line 167
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/support/v4/widget/a;->n:[F

    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 213
    const v1, 0x44c4e000    # 1575.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 214
    const v2, 0x439d8000    # 315.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 215
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/a;->a(FF)Landroid/support/v4/widget/a;

    .line 216
    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/widget/a;->b(FF)Landroid/support/v4/widget/a;

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->a(I)Landroid/support/v4/widget/a;

    .line 219
    invoke-virtual {p0, v6, v6}, Landroid/support/v4/widget/a;->e(FF)Landroid/support/v4/widget/a;

    .line 220
    invoke-virtual {p0, v3, v3}, Landroid/support/v4/widget/a;->d(FF)Landroid/support/v4/widget/a;

    .line 221
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/widget/a;->c(FF)Landroid/support/v4/widget/a;

    .line 222
    sget v0, Landroid/support/v4/widget/a;->r:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->b(I)Landroid/support/v4/widget/a;

    .line 223
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->c(I)Landroid/support/v4/widget/a;

    .line 224
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->d(I)Landroid/support/v4/widget/a;

    .line 225
    return-void

    .line 149
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static a(FFF)F
    .locals 1

    .prologue
    .line 672
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 677
    :goto_0
    return p2

    .line 674
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 675
    goto :goto_0

    :cond_1
    move p2, p0

    .line 677
    goto :goto_0
.end method

.method private a(FFFF)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 616
    mul-float v1, p1, p2

    invoke-static {v1, v0, p3}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v1

    .line 617
    invoke-direct {p0, p4, v1}, Landroid/support/v4/widget/a;->f(FF)F

    move-result v2

    .line 618
    sub-float v3, p2, p4

    invoke-direct {p0, v3, v1}, Landroid/support/v4/widget/a;->f(FF)F

    move-result v1

    .line 619
    sub-float/2addr v1, v2

    .line 621
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 622
    iget-object v0, p0, Landroid/support/v4/widget/a;->f:Landroid/view/animation/Interpolator;

    neg-float v1, v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    .line 629
    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    :cond_0
    return v0

    .line 623
    :cond_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 624
    iget-object v0, p0, Landroid/support/v4/widget/a;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method

.method private a(IFFF)F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Landroid/support/v4/widget/a;->h:[F

    aget v1, v1, p1

    .line 549
    iget-object v2, p0, Landroid/support/v4/widget/a;->i:[F

    aget v2, v2, p1

    .line 550
    invoke-direct {p0, v1, p3, v2, p2}, Landroid/support/v4/widget/a;->a(FFFF)F

    move-result v1

    .line 551
    cmpl-float v2, v1, v0

    if-nez v2, :cond_0

    .line 567
    :goto_0
    return v0

    .line 556
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/a;->l:[F

    aget v2, v2, p1

    .line 557
    iget-object v3, p0, Landroid/support/v4/widget/a;->m:[F

    aget v3, v3, p1

    .line 558
    iget-object v4, p0, Landroid/support/v4/widget/a;->n:[F

    aget v4, v4, p1

    .line 559
    mul-float/2addr v2, p4

    .line 564
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 565
    mul-float v0, v1, v2

    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    goto :goto_0

    .line 567
    :cond_1
    neg-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    neg-float v0, v0

    goto :goto_0
.end method

.method static a(III)I
    .locals 0

    .prologue
    .line 662
    if-le p0, p2, :cond_0

    .line 667
    :goto_0
    return p2

    .line 664
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 665
    goto :goto_0

    :cond_1
    move p2, p0

    .line 667
    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 513
    iget-object v0, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Landroid/support/v4/widget/a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/a$b;-><init>(Landroid/support/v4/widget/a;)V

    iput-object v0, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    .line 517
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/a;->e:Z

    .line 518
    iput-boolean v4, p0, Landroid/support/v4/widget/a;->c:Z

    .line 520
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/a;->k:I

    if-lez v0, :cond_1

    .line 521
    iget-object v0, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v4/widget/a;->k:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 528
    :goto_0
    iput-boolean v4, p0, Landroid/support/v4/widget/a;->o:Z

    .line 529
    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->c:Z

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/a;->e:Z

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->b()V

    goto :goto_0
.end method

.method private f(FF)F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 633
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 658
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    iget v2, p0, Landroid/support/v4/widget/a;->j:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 640
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 641
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 643
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 644
    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->e:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/a;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 646
    goto :goto_0

    .line 651
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 653
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(FF)Landroid/support/v4/widget/a;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/a;->n:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/a;->n:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 297
    return-object p0
.end method

.method public a(I)Landroid/support/v4/widget/a;
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Landroid/support/v4/widget/a;->j:I

    .line 359
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/widget/a;
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/a;->p:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Landroid/support/v4/widget/a;->d()V

    .line 239
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/widget/a;->p:Z

    .line 240
    return-object p0
.end method

.method public abstract a(II)V
.end method

.method a()Z
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    .line 502
    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->f()I

    move-result v1

    .line 503
    invoke-virtual {v0}, Landroid/support/v4/widget/a$a;->e()I

    move-result v0

    .line 505
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/a;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(FF)Landroid/support/v4/widget/a;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/a;->m:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 315
    iget-object v0, p0, Landroid/support/v4/widget/a;->m:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 316
    return-object p0
.end method

.method public b(I)Landroid/support/v4/widget/a;
    .locals 0

    .prologue
    .line 419
    iput p1, p0, Landroid/support/v4/widget/a;->k:I

    .line 420
    return-object p0
.end method

.method b()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 687
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 689
    iget-object v1, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 690
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 691
    return-void
.end method

.method public c(FF)Landroid/support/v4/widget/a;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 336
    iget-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 337
    iget-object v0, p0, Landroid/support/v4/widget/a;->l:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 338
    return-object p0
.end method

.method public c(I)Landroid/support/v4/widget/a;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a$a;->a(I)V

    .line 436
    return-object p0
.end method

.method public d(FF)Landroid/support/v4/widget/a;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 379
    iget-object v0, p0, Landroid/support/v4/widget/a;->h:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 380
    return-object p0
.end method

.method public d(I)Landroid/support/v4/widget/a;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a$a;->b(I)V

    .line 452
    return-object p0
.end method

.method public e(FF)Landroid/support/v4/widget/a;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v4/widget/a;->i:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 402
    iget-object v0, p0, Landroid/support/v4/widget/a;->i:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 403
    return-object p0
.end method

.method public abstract e(I)Z
.end method

.method public abstract f(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 465
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->p:Z

    if-nez v2, :cond_0

    .line 494
    :goto_0
    return v1

    .line 469
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 470
    packed-switch v2, :pswitch_data_0

    .line 494
    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->q:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/widget/a;->e:Z

    if-eqz v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    .line 472
    :pswitch_0
    iput-boolean v0, p0, Landroid/support/v4/widget/a;->d:Z

    .line 473
    iput-boolean v1, p0, Landroid/support/v4/widget/a;->o:Z

    .line 477
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 476
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v2

    .line 479
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v4/widget/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 478
    invoke-direct {p0, v0, v3, v4, v5}, Landroid/support/v4/widget/a;->a(IFFF)F

    move-result v3

    .line 480
    iget-object v4, p0, Landroid/support/v4/widget/a;->a:Landroid/support/v4/widget/a$a;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/a$a;->a(FF)V

    .line 484
    iget-boolean v2, p0, Landroid/support/v4/widget/a;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    invoke-direct {p0}, Landroid/support/v4/widget/a;->c()V

    goto :goto_1

    .line 490
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/a;->d()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 494
    goto :goto_2

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
