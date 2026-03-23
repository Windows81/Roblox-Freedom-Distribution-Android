.class Landroid/support/v4/widget/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:F

.field r:I

.field s:I

.field t:I

.field u:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->a:Landroid/graphics/RectF;

    .line 619
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    .line 620
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->c:Landroid/graphics/Paint;

    .line 621
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->d:Landroid/graphics/Paint;

    .line 623
    iput v1, p0, Landroid/support/v4/widget/d$a;->e:F

    .line 624
    iput v1, p0, Landroid/support/v4/widget/d$a;->f:F

    .line 625
    iput v1, p0, Landroid/support/v4/widget/d$a;->g:F

    .line 626
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/d$a;->h:F

    .line 638
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/d$a;->p:F

    .line 642
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v4/widget/d$a;->t:I

    .line 646
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 647
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 648
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 650
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 651
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 653
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 654
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->i:[I

    invoke-virtual {p0}, Landroid/support/v4/widget/d$a;->b()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method a(F)V
    .locals 1

    .prologue
    .line 837
    iput p1, p0, Landroid/support/v4/widget/d$a;->h:F

    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 839
    return-void
.end method

.method a(FF)V
    .locals 1

    .prologue
    .line 663
    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/d$a;->r:I

    .line 664
    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/d$a;->s:I

    .line 665
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 773
    iput p1, p0, Landroid/support/v4/widget/d$a;->u:I

    .line 774
    return-void
.end method

.method a(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 719
    iget-boolean v0, p0, Landroid/support/v4/widget/d$a;->n:Z

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 721
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    .line 722
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 726
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v6

    .line 727
    iget v1, p0, Landroid/support/v4/widget/d$a;->r:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/d$a;->p:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    .line 732
    iget-object v2, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 733
    iget-object v2, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    iget v3, p0, Landroid/support/v4/widget/d$a;->r:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/d$a;->p:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 734
    iget-object v2, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    iget v3, p0, Landroid/support/v4/widget/d$a;->r:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/d$a;->p:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Landroid/support/v4/widget/d$a;->s:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/d$a;->p:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 736
    iget-object v2, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v0, v3

    sub-float/2addr v0, v1

    .line 737
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Landroid/support/v4/widget/d$a;->h:F

    div-float/2addr v3, v6

    add-float/2addr v1, v3

    .line 736
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 738
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 740
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->c:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/d$a;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->c:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/d$a;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 742
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 743
    add-float v0, p2, p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 744
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 743
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 745
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/d$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 748
    :cond_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 687
    iget-object v1, p0, Landroid/support/v4/widget/d$a;->a:Landroid/graphics/RectF;

    .line 688
    iget v0, p0, Landroid/support/v4/widget/d$a;->q:F

    iget v2, p0, Landroid/support/v4/widget/d$a;->h:F

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    .line 689
    iget v2, p0, Landroid/support/v4/widget/d$a;->q:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 691
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    iget v2, p0, Landroid/support/v4/widget/d$a;->r:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/d$a;->p:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v3, p0, Landroid/support/v4/widget/d$a;->h:F

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v0, v2

    .line 694
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 695
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 696
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    .line 697
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    .line 694
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 699
    iget v0, p0, Landroid/support/v4/widget/d$a;->e:F

    iget v2, p0, Landroid/support/v4/widget/d$a;->g:F

    add-float/2addr v0, v2

    mul-float v2, v0, v6

    .line 700
    iget v0, p0, Landroid/support/v4/widget/d$a;->f:F

    iget v3, p0, Landroid/support/v4/widget/d$a;->g:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v6

    .line 701
    sub-float v3, v0, v2

    .line 703
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/d$a;->u:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 704
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    iget v4, p0, Landroid/support/v4/widget/d$a;->t:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 707
    iget v0, p0, Landroid/support/v4/widget/d$a;->h:F

    div-float/2addr v0, v7

    .line 708
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 709
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    iget-object v7, p0, Landroid/support/v4/widget/d$a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 711
    neg-float v4, v0

    neg-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 713
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 715
    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/support/v4/widget/d$a;->a(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    .line 716
    return-void
.end method

.method a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 817
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Landroid/support/v4/widget/d$a;->n:Z

    if-eq v0, p1, :cond_0

    .line 897
    iput-boolean p1, p0, Landroid/support/v4/widget/d$a;->n:Z

    .line 899
    :cond_0
    return-void
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 756
    iput-object p1, p0, Landroid/support/v4/widget/d$a;->i:[I

    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/d$a;->b(I)V

    .line 759
    return-void
.end method

.method b()I
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Landroid/support/v4/widget/d$a;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/d$a;->i:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method b(F)V
    .locals 0

    .prologue
    .line 846
    iput p1, p0, Landroid/support/v4/widget/d$a;->e:F

    .line 847
    return-void
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 792
    iput p1, p0, Landroid/support/v4/widget/d$a;->j:I

    .line 793
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->i:[I

    iget v1, p0, Landroid/support/v4/widget/d$a;->j:I

    aget v0, v0, v1

    iput v0, p0, Landroid/support/v4/widget/d$a;->u:I

    .line 794
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Landroid/support/v4/widget/d$a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/d$a;->b(I)V

    .line 813
    return-void
.end method

.method c(F)V
    .locals 0

    .prologue
    .line 866
    iput p1, p0, Landroid/support/v4/widget/d$a;->f:F

    .line 867
    return-void
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 823
    iput p1, p0, Landroid/support/v4/widget/d$a;->t:I

    .line 824
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Landroid/support/v4/widget/d$a;->t:I

    return v0
.end method

.method d(F)V
    .locals 0

    .prologue
    .line 874
    iput p1, p0, Landroid/support/v4/widget/d$a;->g:F

    .line 875
    return-void
.end method

.method e()F
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Landroid/support/v4/widget/d$a;->e:F

    return v0
.end method

.method e(F)V
    .locals 0

    .prologue
    .line 885
    iput p1, p0, Landroid/support/v4/widget/d$a;->q:F

    .line 886
    return-void
.end method

.method f()F
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Landroid/support/v4/widget/d$a;->k:F

    return v0
.end method

.method f(F)V
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Landroid/support/v4/widget/d$a;->p:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 910
    iput p1, p0, Landroid/support/v4/widget/d$a;->p:F

    .line 912
    :cond_0
    return-void
.end method

.method g()F
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Landroid/support/v4/widget/d$a;->l:F

    return v0
.end method

.method h()I
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Landroid/support/v4/widget/d$a;->i:[I

    iget v1, p0, Landroid/support/v4/widget/d$a;->j:I

    aget v0, v0, v1

    return v0
.end method

.method i()F
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Landroid/support/v4/widget/d$a;->f:F

    return v0
.end method

.method j()F
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Landroid/support/v4/widget/d$a;->m:F

    return v0
.end method

.method k()V
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Landroid/support/v4/widget/d$a;->e:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->k:F

    .line 931
    iget v0, p0, Landroid/support/v4/widget/d$a;->f:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->l:F

    .line 932
    iget v0, p0, Landroid/support/v4/widget/d$a;->g:F

    iput v0, p0, Landroid/support/v4/widget/d$a;->m:F

    .line 933
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 939
    iput v0, p0, Landroid/support/v4/widget/d$a;->k:F

    .line 940
    iput v0, p0, Landroid/support/v4/widget/d$a;->l:F

    .line 941
    iput v0, p0, Landroid/support/v4/widget/d$a;->m:F

    .line 942
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/d$a;->b(F)V

    .line 943
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/d$a;->c(F)V

    .line 944
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/d$a;->d(F)V

    .line 945
    return-void
.end method
