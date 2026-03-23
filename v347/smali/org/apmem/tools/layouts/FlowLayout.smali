.class public Lorg/apmem/tools/layouts/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apmem/tools/layouts/FlowLayout$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apmem/tools/layouts/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lorg/apmem/tools/layouts/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    .line 29
    new-instance v0, Lorg/apmem/tools/layouts/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apmem/tools/layouts/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    .line 34
    new-instance v0, Lorg/apmem/tools/layouts/a;

    invoke-direct {v0, p1, p2}, Lorg/apmem/tools/layouts/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    .line 39
    new-instance v0, Lorg/apmem/tools/layouts/a;

    invoke-direct {v0, p1, p2}, Lorg/apmem/tools/layouts/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    .line 40
    return-void
.end method

.method private a(I)I
    .locals 7

    .prologue
    const/high16 v6, 0x800000

    const/4 v3, 0x5

    const/4 v0, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v2}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v2

    if-ne v2, v5, :cond_0

    and-int v2, p1, v6

    if-nez v2, :cond_0

    .line 327
    and-int/lit8 v2, p1, 0x7

    shr-int/lit8 v2, v2, 0x0

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v1

    .line 328
    and-int/lit8 v4, p1, 0x70

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v4, v4, 0x0

    or-int p1, v2, v4

    .line 332
    :cond_0
    iget-object v2, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v2}, Lorg/apmem/tools/layouts/a;->e()I

    move-result v2

    if-ne v2, v5, :cond_1

    and-int v2, p1, v6

    if-eqz v2, :cond_1

    .line 335
    and-int/lit8 v2, p1, 0x3

    if-ne v2, v0, :cond_2

    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    .line 336
    and-int/lit8 v4, p1, 0x5

    if-ne v4, v3, :cond_3

    :goto_1
    or-int p1, v2, v0

    .line 339
    :cond_1
    return p1

    :cond_2
    move v2, v1

    .line 335
    goto :goto_0

    :cond_3
    move v0, v1

    .line 336
    goto :goto_1
.end method

.method private a(III)I
    .locals 0

    .prologue
    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 147
    :goto_0
    :sswitch_0
    return p3

    .line 138
    :sswitch_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    :sswitch_2
    move p3, p2

    .line 142
    goto :goto_0

    .line 133
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Lorg/apmem/tools/layouts/FlowLayout$a;)I
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->d()I

    move-result v1

    .line 292
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$a;->i()I

    move-result v0

    .line 298
    :goto_0
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->a(I)I

    move-result v0

    .line 299
    invoke-direct {p0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->a(I)I

    move-result v1

    .line 302
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 303
    and-int/lit8 v2, v1, 0x7

    or-int/2addr v0, v2

    .line 305
    :cond_0
    and-int/lit8 v2, v0, 0x70

    if-nez v2, :cond_1

    .line 306
    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    .line 310
    :cond_1
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_2

    .line 311
    or-int/lit8 v0, v0, 0x3

    .line 313
    :cond_2
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_3

    .line 314
    or-int/lit8 v0, v0, 0x30

    .line 317
    :cond_3
    return v0

    :cond_4
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 14

    .prologue
    .line 385
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const/16 v0, -0x100

    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->b(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 390
    const/high16 v0, -0x10000

    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->b(I)Landroid/graphics/Paint;

    move-result-object v13

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 394
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    if-lez v0, :cond_2

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 397
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 399
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    :cond_2
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    if-lez v0, :cond_3

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 405
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    int-to-float v0, v0

    sub-float v3, v1, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 406
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    int-to-float v0, v0

    sub-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 407
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    int-to-float v0, v0

    sub-float v9, v1, v0

    move-object v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 410
    :cond_3
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    if-lez v0, :cond_4

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 413
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 418
    :cond_4
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    if-lez v0, :cond_5

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 421
    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    int-to-float v0, v0

    sub-float v4, v2, v0

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 422
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    int-to-float v0, v0

    sub-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v8, v0, v3

    iget v0, v12, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    int-to-float v0, v0

    sub-float v10, v2, v0

    move-object v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 426
    :cond_5
    invoke-virtual {v12}, Lorg/apmem/tools/layouts/FlowLayout$a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v0

    if-nez v0, :cond_6

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 430
    const/high16 v2, 0x40c00000    # 6.0f

    sub-float v2, v0, v2

    const/high16 v3, 0x40c00000    # 6.0f

    add-float v4, v0, v3

    move-object v0, p1

    move v3, v1

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 432
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    .line 434
    const/high16 v1, 0x40c00000    # 6.0f

    sub-float v1, v0, v1

    const/high16 v3, 0x40c00000    # 6.0f

    add-float/2addr v3, v0

    move-object v0, p1

    move v4, v2

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apmem/tools/layouts/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v4, v2

    move v1, v2

    .line 153
    :goto_0
    if-ge v4, v6, :cond_1

    .line 154
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/b;

    .line 155
    invoke-virtual {v0, v1}, Lorg/apmem/tools/layouts/b;->a(I)V

    .line 156
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->b()I

    move-result v3

    add-int v5, v1, v3

    .line 158
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->e()Ljava/util/List;

    move-result-object v7

    .line 159
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v1, v2

    move v3, v2

    .line 160
    :goto_1
    if-ge v1, v8, :cond_0

    .line 161
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 163
    invoke-virtual {v0, v3}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(I)V

    .line 164
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->d()I

    move-result v9

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->g()I

    move-result v0

    add-int/2addr v0, v9

    add-int/2addr v3, v0

    .line 160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 153
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v1, v5

    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apmem/tools/layouts/b;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 197
    if-gtz v5, :cond_1

    .line 234
    :cond_0
    return-void

    .line 202
    :cond_1
    add-int/lit8 v0, v5, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/b;

    .line 203
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->b()I

    move-result v1

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->a()I

    move-result v0

    add-int/2addr v0, v1

    sub-int v0, p3, v0

    .line 205
    if-gez v0, :cond_2

    move v1, v2

    :goto_0
    move v3, v2

    move v4, v2

    .line 210
    :goto_1
    if-ge v3, v5, :cond_0

    .line 211
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/b;

    .line 212
    const/4 v6, 0x1

    .line 213
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/apmem/tools/layouts/FlowLayout;->a(Lorg/apmem/tools/layouts/FlowLayout$a;)I

    move-result v7

    .line 214
    mul-int/2addr v6, v1

    div-int/2addr v6, v5

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 216
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->c()I

    move-result v8

    .line 217
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->b()I

    move-result v9

    .line 219
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 220
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 221
    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 222
    iput p2, v10, Landroid/graphics/Rect;->right:I

    .line 223
    add-int v11, v9, v6

    add-int/2addr v11, v4

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 225
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 226
    invoke-static {v7, v8, v9, v10, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 228
    add-int/2addr v4, v6

    .line 229
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->d()I

    move-result v6

    iget v7, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/apmem/tools/layouts/b;->b(I)V

    .line 230
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->a()I

    move-result v6

    iget v7, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/apmem/tools/layouts/b;->a(I)V

    .line 231
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apmem/tools/layouts/b;->d(I)V

    .line 232
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/apmem/tools/layouts/b;->c(I)V

    .line 210
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private a(Lorg/apmem/tools/layouts/b;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 170
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->e()Ljava/util/List;

    move-result-object v3

    .line 171
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 172
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 173
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 175
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v5

    if-nez v5, :cond_0

    .line 176
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->d()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->c()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->a()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->f()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(II)V

    .line 179
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->d()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->e()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->measure(II)V

    .line 172
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->a()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->f()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->d()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->c()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(II)V

    .line 187
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->e()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout$a;->d()I

    move-result v1

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 193
    :cond_1
    return-void
.end method

.method private b(Lorg/apmem/tools/layouts/FlowLayout$a;)F
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apmem/tools/layouts/FlowLayout$a;->j()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->c()F

    move-result v0

    goto :goto_0
.end method

.method private b(I)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 444
    return-object v0
.end method

.method private b(Lorg/apmem/tools/layouts/b;)V
    .locals 13

    .prologue
    .line 237
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->e()Ljava/util/List;

    move-result-object v5

    .line 238
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 239
    if-gtz v6, :cond_1

    .line 285
    :cond_0
    return-void

    .line 243
    :cond_1
    const/4 v1, 0x0

    .line 244
    const/4 v0, 0x0

    move v4, v1

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    .line 245
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 247
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->b(Lorg/apmem/tools/layouts/FlowLayout$a;)F

    move-result v0

    add-float v2, v4, v0

    .line 244
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v4, v2

    goto :goto_0

    .line 250
    :cond_2
    add-int/lit8 v0, v6, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 252
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->c()I

    move-result v1

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->d()I

    move-result v2

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->g()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->c()I

    move-result v0

    add-int/2addr v0, v2

    sub-int v7, v1, v0

    .line 253
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_1
    if-ge v2, v6, :cond_0

    .line 255
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 258
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->b(Lorg/apmem/tools/layouts/FlowLayout$a;)F

    move-result v1

    .line 259
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->a(Lorg/apmem/tools/layouts/FlowLayout$a;)I

    move-result v8

    .line 261
    const/4 v9, 0x0

    cmpl-float v9, v4, v9

    if-nez v9, :cond_3

    .line 262
    div-int v1, v7, v6

    .line 267
    :goto_2
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->d()I

    move-result v9

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->g()I

    move-result v10

    add-int/2addr v9, v10

    .line 268
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->e()I

    move-result v10

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->h()I

    move-result v11

    add-int/2addr v10, v11

    .line 270
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 271
    const/4 v12, 0x0

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 272
    iput v3, v11, Landroid/graphics/Rect;->left:I

    .line 273
    add-int v12, v9, v1

    add-int/2addr v12, v3

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 274
    invoke-virtual {p1}, Lorg/apmem/tools/layouts/b;->b()I

    move-result v12

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 276
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 277
    invoke-static {v8, v9, v10, v11, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 279
    add-int/2addr v1, v3

    .line 280
    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->c()I

    move-result v8

    add-int/2addr v3, v8

    invoke-virtual {v0, v3}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(I)V

    .line 281
    iget v3, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3}, Lorg/apmem/tools/layouts/FlowLayout$a;->d(I)V

    .line 282
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->g()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual {v0, v3}, Lorg/apmem/tools/layouts/FlowLayout$a;->b(I)V

    .line 283
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->h()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-virtual {v0, v3}, Lorg/apmem/tools/layouts/FlowLayout$a;->c(I)V

    .line 254
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_1

    .line 264
    :cond_3
    int-to-float v9, v7

    mul-float/2addr v1, v9

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 468
    :try_start_0
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "debugDraw"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 469
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 470
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 476
    :goto_0
    return v0

    .line 471
    :catch_0
    move-exception v0

    move v0, v1

    .line 476
    goto :goto_0
.end method


# virtual methods
.method protected a()Lorg/apmem/tools/layouts/FlowLayout$a;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 371
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    invoke-direct {v0, v1, v1}, Lorg/apmem/tools/layouts/FlowLayout$a;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lorg/apmem/tools/layouts/FlowLayout$a;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apmem/tools/layouts/FlowLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lorg/apmem/tools/layouts/FlowLayout$a;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    invoke-direct {v0, p1}, Lorg/apmem/tools/layouts/FlowLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apmem/tools/layouts/FlowLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 366
    instance-of v0, p1, Lorg/apmem/tools/layouts/FlowLayout$a;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 360
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 361
    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->a()Lorg/apmem/tools/layouts/FlowLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/apmem/tools/layouts/FlowLayout;->a(Landroid/util/AttributeSet;)Lorg/apmem/tools/layouts/FlowLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lorg/apmem/tools/layouts/FlowLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lorg/apmem/tools/layouts/FlowLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->d()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->e()I

    move-result v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v0

    return v0
.end method

.method public getWeightDefault()F
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->c()F

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v2

    .line 349
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 350
    invoke-virtual {p0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 352
    invoke-static {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(Lorg/apmem/tools/layouts/FlowLayout$a;)I

    move-result v4

    iget v5, v0, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    add-int/2addr v4, v5

    invoke-static {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->b(Lorg/apmem/tools/layouts/FlowLayout$a;)I

    move-result v5

    iget v6, v0, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    add-int/2addr v5, v6

    invoke-static {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(Lorg/apmem/tools/layouts/FlowLayout$a;)I

    move-result v6

    iget v7, v0, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->b(Lorg/apmem/tools/layouts/FlowLayout$a;)I

    move-result v7

    iget v0, v0, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    add-int/2addr v0, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 349
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v2

    sub-int v2, v1, v2

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 47
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 48
    iget-object v1, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 49
    :goto_0
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v5

    if-nez v5, :cond_2

    .line 50
    :goto_1
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 51
    :goto_2
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    new-instance v5, Lorg/apmem/tools/layouts/b;

    invoke-direct {v5, v1}, Lorg/apmem/tools/layouts/b;-><init>(I)V

    .line 55
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getChildCount()I

    move-result v7

    .line 58
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-ge v6, v7, :cond_a

    .line 59
    invoke-virtual {p0, v6}, Lorg/apmem/tools/layouts/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 60
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v9, 0x8

    if-ne v0, v9, :cond_4

    move-object v0, v5

    .line 58
    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v0

    goto :goto_3

    :cond_1
    move v1, v2

    .line 48
    goto :goto_0

    :cond_2
    move v2, v0

    .line 49
    goto :goto_1

    :cond_3
    move v3, v4

    .line 50
    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/FlowLayout$a;

    .line 66
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v0, Lorg/apmem/tools/layouts/FlowLayout$a;->width:I

    invoke-static {p1, v9, v10}, Lorg/apmem/tools/layouts/FlowLayout;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v0, Lorg/apmem/tools/layouts/FlowLayout$a;->height:I

    invoke-static {p2, v10, v11}, Lorg/apmem/tools/layouts/FlowLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 71
    iget-object v9, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v9}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v9

    invoke-static {v0, v9}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(Lorg/apmem/tools/layouts/FlowLayout$a;I)I

    .line 72
    iget-object v9, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v9}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v9

    if-nez v9, :cond_6

    .line 73
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/apmem/tools/layouts/FlowLayout$a;->b(I)V

    .line 74
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/apmem/tools/layouts/FlowLayout$a;->c(I)V

    .line 80
    :goto_5
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/FlowLayout$a;->k()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_7

    invoke-virtual {v5, v8}, Lorg/apmem/tools/layouts/b;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    .line 81
    :goto_6
    if-eqz v0, :cond_e

    .line 82
    new-instance v0, Lorg/apmem/tools/layouts/b;

    invoke-direct {v0, v1}, Lorg/apmem/tools/layouts/b;-><init>(I)V

    .line 83
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_8

    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/a;->e()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_8

    .line 84
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v5, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    :goto_7
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/a;->e()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_9

    .line 91
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8}, Lorg/apmem/tools/layouts/b;->a(ILandroid/view/View;)V

    goto/16 :goto_4

    .line 76
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/apmem/tools/layouts/FlowLayout$a;->b(I)V

    .line 77
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/apmem/tools/layouts/FlowLayout$a;->c(I)V

    goto :goto_5

    .line 80
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 86
    :cond_8
    iget-object v5, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 93
    :cond_9
    invoke-virtual {v0, v8}, Lorg/apmem/tools/layouts/b;->a(Landroid/view/View;)V

    goto/16 :goto_4

    .line 97
    :cond_a
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->a(Ljava/util/List;)V

    .line 99
    const/4 v6, 0x0

    .line 100
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 101
    const/4 v0, 0x0

    move v7, v6

    move v6, v0

    :goto_8
    if-ge v6, v8, :cond_b

    .line 102
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/b;

    .line 103
    invoke-virtual {v0}, Lorg/apmem/tools/layouts/b;->c()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 101
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    .line 105
    :cond_b
    invoke-virtual {v5}, Lorg/apmem/tools/layouts/b;->a()I

    move-result v0

    invoke-virtual {v5}, Lorg/apmem/tools/layouts/b;->b()I

    move-result v5

    add-int/2addr v5, v0

    .line 107
    invoke-direct {p0, v3, v1, v7}, Lorg/apmem/tools/layouts/FlowLayout;->a(III)I

    move-result v0

    .line 108
    invoke-direct {p0, v4, v2, v5}, Lorg/apmem/tools/layouts/FlowLayout;->a(III)I

    move-result v1

    .line 110
    iget-object v2, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-direct {p0, v2, v0, v1}, Lorg/apmem/tools/layouts/FlowLayout;->a(Ljava/util/List;II)V

    .line 112
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v8, :cond_c

    .line 113
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apmem/tools/layouts/b;

    .line 114
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->b(Lorg/apmem/tools/layouts/b;)V

    .line 115
    invoke-direct {p0, v0}, Lorg/apmem/tools/layouts/FlowLayout;->a(Lorg/apmem/tools/layouts/b;)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 119
    :cond_c
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 121
    iget-object v1, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v1}, Lorg/apmem/tools/layouts/a;->a()I

    move-result v1

    if-nez v1, :cond_d

    .line 122
    add-int v1, v0, v7

    .line 123
    add-int v0, v2, v5

    .line 128
    :goto_a
    invoke-static {v1, p1}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lorg/apmem/tools/layouts/FlowLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/apmem/tools/layouts/FlowLayout;->setMeasuredDimension(II)V

    .line 129
    return-void

    .line 125
    :cond_d
    add-int v1, v0, v5

    .line 126
    add-int v0, v2, v7

    goto :goto_a

    :cond_e
    move-object v0, v5

    goto/16 :goto_7
.end method

.method public setDebugDraw(Z)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/a;->a(Z)V

    .line 462
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->invalidate()V

    .line 463
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/a;->b(I)V

    .line 494
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 495
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/a;->c(I)V

    .line 508
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 509
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/a;->a(I)V

    .line 453
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 454
    return-void
.end method

.method public setWeightDefault(F)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/apmem/tools/layouts/FlowLayout;->b:Lorg/apmem/tools/layouts/a;

    invoke-virtual {v0, p1}, Lorg/apmem/tools/layouts/a;->a(F)V

    .line 485
    invoke-virtual {p0}, Lorg/apmem/tools/layouts/FlowLayout;->requestLayout()V

    .line 486
    return-void
.end method
