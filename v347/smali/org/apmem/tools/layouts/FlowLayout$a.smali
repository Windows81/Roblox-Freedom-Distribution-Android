.class public Lorg/apmem/tools/layouts/FlowLayout$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apmem/tools/layouts/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 512
    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->a:Z

    .line 527
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->b:I

    .line 528
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->c:F

    .line 544
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 512
    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->a:Z

    .line 527
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->b:I

    .line 528
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->c:F

    .line 539
    invoke-direct {p0, p1, p2}, Lorg/apmem/tools/layouts/FlowLayout$a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 540
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->a:Z

    .line 527
    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->b:I

    .line 528
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->c:F

    .line 548
    return-void
.end method

.method static synthetic a(Lorg/apmem/tools/layouts/FlowLayout$a;)I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->h:I

    return v0
.end method

.method static synthetic a(Lorg/apmem/tools/layouts/FlowLayout$a;I)I
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->j:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 559
    sget-object v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 561
    :try_start_0
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_LayoutParams_layout_newLine:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->a:Z

    .line 562
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_LayoutParams_android_layout_gravity:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->b:I

    .line 563
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_LayoutParams_layout_weight:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->c:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 567
    return-void

    .line 565
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic b(Lorg/apmem/tools/layouts/FlowLayout$a;)I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->i:I

    return v0
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 580
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->d:I

    .line 581
    return-void
.end method

.method a(II)V
    .locals 0

    .prologue
    .line 571
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->h:I

    .line 572
    iput p2, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->i:I

    .line 573
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 588
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->e:I

    .line 589
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->d:I

    return v0
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 596
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->f:I

    .line 597
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->e:I

    return v0
.end method

.method d(I)V
    .locals 0

    .prologue
    .line 604
    iput p1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->g:I

    .line 605
    return-void
.end method

.method e()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->f:I

    return v0
.end method

.method f()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->g:I

    return v0
.end method

.method g()I
    .locals 2

    .prologue
    .line 608
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->j:I

    if-nez v0, :cond_0

    .line 609
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    iget v1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    add-int/2addr v0, v1

    .line 611
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    iget v1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method h()I
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->j:I

    if-nez v0, :cond_0

    .line 617
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->topMargin:I

    iget v1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->bottomMargin:I

    add-int/2addr v0, v1

    .line 619
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->leftMargin:I

    iget v1, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->b:I

    return v0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->c:F

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lorg/apmem/tools/layouts/FlowLayout$a;->a:Z

    return v0
.end method
