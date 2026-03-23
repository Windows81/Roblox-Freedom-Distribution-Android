.class Landroid/support/v7/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/RectF;

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:[I

.field private i:Z

.field private j:Landroid/text/TextPaint;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/m;->a:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/support/v7/widget/m;->b:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Landroid/support/v7/widget/m;->c:I

    .line 78
    iput-boolean v1, p0, Landroid/support/v7/widget/m;->d:Z

    .line 80
    iput v0, p0, Landroid/support/v7/widget/m;->e:F

    .line 82
    iput v0, p0, Landroid/support/v7/widget/m;->f:F

    .line 84
    iput v0, p0, Landroid/support/v7/widget/m;->g:F

    .line 87
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    .line 91
    iput-boolean v1, p0, Landroid/support/v7/widget/m;->i:Z

    .line 98
    iput-object p1, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private a(Landroid/graphics/RectF;)I
    .locals 5

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    array-length v0, v0

    .line 641
    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No available text sizes to choose from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    const/4 v2, 0x0

    .line 646
    const/4 v1, 0x1

    .line 647
    add-int/lit8 v0, v0, -0x1

    .line 649
    :goto_0
    if-gt v1, v0, :cond_2

    .line 650
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 651
    iget-object v3, p0, Landroid/support/v7/widget/m;->h:[I

    aget v3, v3, v2

    invoke-direct {p0, v3, p1}, Landroid/support/v7/widget/m;->a(ILandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    .line 655
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    .line 656
    goto :goto_0

    .line 660
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    aget v0, v0, v2

    return v0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 732
    const/high16 v0, 0x3f800000    # 1.0f

    .line 733
    const/4 v1, 0x0

    .line 734
    const/4 v2, 0x1

    .line 736
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v7

    .line 754
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    move-object v1, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 744
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const-string v4, "getLineSpacingMultiplier"

    .line 745
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 744
    invoke-direct {p0, v3, v4, v0}, Landroid/support/v7/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const-string v3, "getLineSpacingExtra"

    .line 747
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 746
    invoke-direct {p0, v0, v3, v1}, Landroid/support/v7/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const-string v1, "getIncludeFontPadding"

    .line 749
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 748
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const-string v1, "getTextDirectionHeuristic"

    sget-object v2, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristic;

    .line 713
    const/4 v1, 0x0

    .line 714
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    .line 713
    invoke-static {p1, v1, v2, v3, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 716
    invoke-virtual {v1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 718
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 719
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    .line 717
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 720
    invoke-virtual {v2}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 721
    invoke-virtual {v2}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 722
    invoke-virtual {v2}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    const p4, 0x7fffffff

    .line 723
    :cond_0
    invoke-virtual {v1, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 724
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 763
    const/4 v0, 0x0

    .line 768
    :try_start_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/m;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 769
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 774
    if-nez p3, :cond_0

    .line 779
    :cond_0
    :goto_0
    return-object p3

    .line 770
    :catch_0
    move-exception v1

    .line 771
    const/4 v2, 0x1

    .line 772
    :try_start_1
    const-string v3, "ACTVAutoSizeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invoke TextView#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() method"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    if-eqz v0, :cond_0

    move-object p3, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 775
    :cond_1
    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 785
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 786
    if-nez v0, :cond_0

    .line 787
    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_0

    .line 789
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 791
    sget-object v1, Landroid/support/v7/widget/m;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-object v0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    const-string v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve TextView#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(F)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInLayout()Z

    move-result v0

    .line 610
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 612
    iput-boolean v1, p0, Landroid/support/v7/widget/m;->d:Z

    .line 614
    const-string v1, "nullLayouts"

    .line 616
    :try_start_0
    const-string v1, "nullLayouts"

    invoke-direct {p0, v1}, Landroid/support/v7/widget/m;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 617
    if-eqz v1, :cond_0

    .line 618
    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 630
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 633
    :cond_1
    return-void

    .line 620
    :catch_0
    move-exception v1

    .line 621
    const-string v2, "ACTVAutoSizeHelper"

    const-string v3, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 627
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceLayout()V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_1

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to minimum auto-size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_1
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_2

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The auto-size step granularity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/m;->c:I

    .line 501
    iput p1, p0, Landroid/support/v7/widget/m;->f:F

    .line 502
    iput p2, p0, Landroid/support/v7/widget/m;->g:F

    .line 503
    iput p3, p0, Landroid/support/v7/widget/m;->e:F

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->i:Z

    .line 505
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 420
    new-array v2, v1, [I

    .line 422
    if-lez v1, :cond_1

    .line 423
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 424
    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v2, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/m;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    .line 427
    invoke-direct {p0}, Landroid/support/v7/widget/m;->h()Z

    .line 429
    :cond_1
    return-void
.end method

.method private a(ILandroid/graphics/RectF;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    .line 667
    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 673
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    move v2, v0

    .line 674
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    if-nez v0, :cond_3

    .line 675
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    .line 679
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 680
    iget-object v0, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    int-to-float v5, p1

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const-string v5, "getLayoutAlignment"

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {p0, v0, v5, v6}, Landroid/support/v7/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    .line 685
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    iget v5, p2, Landroid/graphics/RectF;->right:F

    .line 687
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 686
    invoke-direct {p0, v1, v0, v5, v2}, Landroid/support/v7/widget/m;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    move-result-object v0

    .line 691
    :goto_2
    if-eq v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-gt v3, v2, :cond_1

    .line 692
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v2, v1, :cond_5

    :cond_1
    move v0, v4

    .line 701
    :goto_3
    return v0

    :cond_2
    move v2, v3

    .line 673
    goto :goto_0

    .line 677
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/m;->j:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    goto :goto_1

    .line 686
    :cond_4
    iget v5, p2, Landroid/graphics/RectF;->right:F

    .line 689
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 688
    invoke-direct {p0, v1, v0, v5}, Landroid/support/v7/widget/m;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;

    move-result-object v0

    goto :goto_2

    .line 697
    :cond_5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    move v0, v4

    .line 698
    goto :goto_3

    .line 701
    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private a([I)[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 445
    array-length v2, p1

    .line 446
    if-nez v2, :cond_1

    .line 469
    :cond_0
    return-object p1

    .line 449
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 452
    :goto_0
    if-ge v1, v2, :cond_3

    .line 453
    aget v4, p1, v1

    .line 455
    if-lez v4, :cond_2

    .line 456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 464
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 465
    new-array p1, v2, [I

    move v1, v0

    .line 466
    :goto_1
    if-ge v1, v2, :cond_0

    .line 467
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v1

    .line 466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private h()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    array-length v3, v0

    .line 433
    if-lez v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/m;->i:Z

    .line 434
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->i:Z

    if-eqz v0, :cond_0

    .line 435
    iput v1, p0, Landroid/support/v7/widget/m;->c:I

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/m;->f:F

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/m;->g:F

    .line 438
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v7/widget/m;->e:F

    .line 440
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->i:Z

    return v0

    :cond_1
    move v0, v2

    .line 433
    goto :goto_0
.end method

.method private i()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 508
    invoke-direct {p0}, Landroid/support/v7/widget/m;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/widget/m;->c:I

    if-ne v0, v2, :cond_4

    .line 512
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    array-length v0, v0

    if-nez v0, :cond_3

    .line 515
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/m;->f:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move v1, v2

    .line 516
    :goto_0
    iget v4, p0, Landroid/support/v7/widget/m;->e:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/m;->g:F

    .line 517
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 519
    iget v4, p0, Landroid/support/v7/widget/m;->e:F

    add-float/2addr v0, v4

    goto :goto_0

    .line 521
    :cond_1
    new-array v4, v1, [I

    .line 522
    iget v0, p0, Landroid/support/v7/widget/m;->f:F

    move v6, v3

    move v3, v0

    move v0, v6

    .line 523
    :goto_1
    if-ge v0, v1, :cond_2

    .line 524
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v4, v0

    .line 525
    iget v5, p0, Landroid/support/v7/widget/m;->e:F

    add-float/2addr v3, v5

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_2
    invoke-direct {p0, v4}, Landroid/support/v7/widget/m;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    .line 530
    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/widget/m;->d:Z

    .line 535
    :goto_2
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->d:Z

    return v0

    .line 532
    :cond_4
    iput-boolean v3, p0, Landroid/support/v7/widget/m;->d:Z

    goto :goto_2
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 583
    iput v1, p0, Landroid/support/v7/widget/m;->c:I

    .line 584
    iput v0, p0, Landroid/support/v7/widget/m;->f:F

    .line 585
    iput v0, p0, Landroid/support/v7/widget/m;->g:F

    .line 586
    iput v0, p0, Landroid/support/v7/widget/m;->e:F

    .line 587
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    .line 588
    iput-boolean v1, p0, Landroid/support/v7/widget/m;->d:Z

    .line 589
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/support/v7/widget/AppCompatEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Landroid/support/v7/widget/m;->c:I

    return v0
.end method

.method a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 196
    invoke-direct {p0}, Landroid/support/v7/widget/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown auto-size text type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/m;->j()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 208
    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 213
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0, v2}, Landroid/support/v7/widget/m;->a(FFF)V

    .line 217
    invoke-direct {p0}, Landroid/support/v7/widget/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->f()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(IF)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 595
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 598
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/m;->a(F)V

    .line 599
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    .line 596
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method a(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/support/v7/widget/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 265
    int-to-float v1, p1

    invoke-static {p4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 267
    int-to-float v2, p2

    invoke-static {p4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 269
    int-to-float v3, p3

    invoke-static {p4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 272
    invoke-direct {p0, v1, v2, v0}, Landroid/support/v7/widget/m;->a(FFF)V

    .line 275
    invoke-direct {p0}, Landroid/support/v7/widget/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->f()V

    .line 279
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 103
    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a$j;->AppCompatTextView:[I

    invoke-virtual {v0, p1, v2, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 109
    sget v0, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget v0, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/m;->c:I

    .line 113
    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 114
    sget v0, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 118
    :goto_0
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    sget v2, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 123
    :goto_1
    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    sget v3, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 128
    :goto_2
    sget v5, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    sget v5, Landroid/support/v7/a/a$j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 131
    if-lez v5, :cond_1

    .line 132
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 133
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 134
    invoke-direct {p0, v5}, Landroid/support/v7/widget/m;->a(Landroid/content/res/TypedArray;)V

    .line 135
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-direct {p0}, Landroid/support/v7/widget/m;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 141
    iget v4, p0, Landroid/support/v7/widget/m;->c:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 145
    iget-boolean v4, p0, Landroid/support/v7/widget/m;->i:Z

    if-nez v4, :cond_5

    .line 146
    iget-object v4, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    .line 147
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 149
    cmpl-float v5, v2, v1

    if-nez v5, :cond_2

    .line 150
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v8, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 156
    :cond_2
    cmpl-float v5, v3, v1

    if-nez v5, :cond_3

    .line 157
    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v8, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 163
    :cond_3
    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    .line 165
    const/high16 v0, 0x3f800000    # 1.0f

    .line 168
    :cond_4
    invoke-direct {p0, v2, v3, v0}, Landroid/support/v7/widget/m;->a(FFF)V

    .line 173
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/m;->i()Z

    .line 178
    :cond_6
    :goto_3
    return-void

    .line 176
    :cond_7
    iput v7, p0, Landroid/support/v7/widget/m;->c:I

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method a([II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 306
    invoke-direct {p0}, Landroid/support/v7/widget/m;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    array-length v2, p1

    .line 308
    if-lez v2, :cond_2

    .line 309
    new-array v0, v2, [I

    .line 311
    if-nez p2, :cond_1

    .line 312
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 323
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/m;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    .line 324
    invoke-direct {p0}, Landroid/support/v7/widget/m;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of the preset sizes is valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/m;->l:Landroid/content/Context;

    .line 315
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 317
    :goto_0
    if-ge v1, v2, :cond_0

    .line 318
    aget v4, p1, v1

    int-to-float v4, v4

    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v0, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/m;->i:Z

    .line 332
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/m;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->f()V

    .line 336
    :cond_4
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/support/v7/widget/m;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Landroid/support/v7/widget/m;->f:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Landroid/support/v7/widget/m;->g:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method e()[I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/m;->h:[I

    return-object v0
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 545
    invoke-virtual {p0}, Landroid/support/v7/widget/m;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/m;->d:Z

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    const-string v1, "getHorizontallyScrolling"

    .line 555
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 554
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/m;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 556
    if-eqz v0, :cond_4

    const/high16 v0, 0x100000

    .line 560
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 561
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 563
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 567
    sget-object v2, Landroid/support/v7/widget/m;->a:Landroid/graphics/RectF;

    monitor-enter v2

    .line 568
    :try_start_0
    sget-object v3, Landroid/support/v7/widget/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 569
    sget-object v3, Landroid/support/v7/widget/m;->a:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 570
    sget-object v0, Landroid/support/v7/widget/m;->a:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 571
    sget-object v0, Landroid/support/v7/widget/m;->a:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/m;->a(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 572
    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 573
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/m;->a(IF)V

    .line 575
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/m;->d:Z

    goto :goto_0

    .line 556
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 558
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/m;->k:Landroid/widget/TextView;

    .line 559
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 575
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 810
    invoke-direct {p0}, Landroid/support/v7/widget/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/m;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
