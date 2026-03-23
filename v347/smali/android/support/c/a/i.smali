.class public Landroid/support/c/a/i;
.super Landroid/support/c/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/c/a/i$b;,
        Landroid/support/c/a/i$a;,
        Landroid/support/c/a/i$d;,
        Landroid/support/c/a/i$c;,
        Landroid/support/c/a/i$e;,
        Landroid/support/c/a/i$f;,
        Landroid/support/c/a/i$g;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Landroid/support/c/a/i$f;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/c/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/support/c/a/h;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i;->g:Z

    .line 235
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/c/a/i;->i:[F

    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    .line 240
    new-instance v0, Landroid/support/c/a/i$f;

    invoke-direct {v0}, Landroid/support/c/a/i$f;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 241
    return-void
.end method

.method constructor <init>(Landroid/support/c/a/i$f;)V
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/support/c/a/h;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i;->g:Z

    .line 235
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/c/a/i;->i:[F

    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    .line 244
    iput-object p1, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 245
    iget-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/c/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 246
    return-void
.end method

.method static a(IF)I
    .locals 2

    .prologue
    .line 591
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 592
    const v1, 0xffffff

    and-int/2addr v1, p0

    .line 593
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 594
    return v0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 638
    packed-switch p0, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 640
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 642
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 644
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 646
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 648
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 650
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 651
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/c/a/i;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 550
    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0}, Landroid/support/c/a/i;-><init>()V

    .line 551
    invoke-static {p0, p1, p2}, Landroid/support/v4/a/a/b;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    .line 552
    new-instance v1, Landroid/support/c/a/i$g;

    iget-object v2, v0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/c/a/i$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Landroid/support/c/a/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 574
    :goto_0
    return-object v0

    .line 558
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 559
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 561
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 565
    :cond_2
    if-eq v2, v4, :cond_3

    .line 566
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :cond_3
    :try_start_1
    invoke-static {p0, v0, v1, p2}, Landroid/support/c/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/c/a/i;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 571
    :catch_1
    move-exception v0

    .line 572
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/c/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0}, Landroid/support/c/a/i;-><init>()V

    .line 586
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/c/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 587
    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 662
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 663
    iget-object v1, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    .line 668
    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 670
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroid/support/c/a/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 672
    const/4 v2, 0x1

    .line 673
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 674
    if-eqz v2, :cond_0

    .line 675
    iput-object v2, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    .line 678
    :cond_0
    const-string v2, "autoMirrored"

    const/4 v3, 0x5

    iget-boolean v4, v0, Landroid/support/c/a/i$f;->e:Z

    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/c/a/i$f;->e:Z

    .line 681
    const-string v0, "viewportWidth"

    const/4 v2, 0x7

    iget v3, v1, Landroid/support/c/a/i$e;->d:F

    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroid/support/c/a/i$e;->d:F

    .line 685
    const-string v0, "viewportHeight"

    const/16 v2, 0x8

    iget v3, v1, Landroid/support/c/a/i$e;->e:F

    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroid/support/c/a/i$e;->e:F

    .line 689
    iget v0, v1, Landroid/support/c/a/i$e;->d:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    .line 690
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_1
    iget v0, v1, Landroid/support/c/a/i$e;->e:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 693
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_2
    const/4 v0, 0x3

    iget v2, v1, Landroid/support/c/a/i$e;->b:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroid/support/c/a/i$e;->b:F

    .line 699
    const/4 v0, 0x2

    iget v2, v1, Landroid/support/c/a/i$e;->c:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroid/support/c/a/i$e;->c:F

    .line 701
    iget v0, v1, Landroid/support/c/a/i$e;->b:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    .line 702
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_3
    iget v0, v1, Landroid/support/c/a/i$e;->c:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    .line 705
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_4
    const-string v0, "alpha"

    const/4 v2, 0x4

    .line 711
    invoke-virtual {v1}, Landroid/support/c/a/i$e;->getAlpha()F

    move-result v3

    .line 710
    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 712
    invoke-virtual {v1, v0}, Landroid/support/c/a/i$e;->setAlpha(F)V

    .line 714
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_5

    .line 716
    iput-object v0, v1, Landroid/support/c/a/i$e;->g:Ljava/lang/String;

    .line 717
    iget-object v2, v1, Landroid/support/c/a/i$e;->h:Landroid/support/v4/g/a;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_5
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 821
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 822
    invoke-virtual {p0}, Landroid/support/c/a/i;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    invoke-static {p0}, Landroid/support/v4/b/a/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 825
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 823
    goto :goto_0

    :cond_1
    move v0, v1

    .line 825
    goto :goto_0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    .line 723
    iget-object v3, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 724
    iget-object v4, v3, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    .line 729
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 730
    iget-object v0, v4, Landroid/support/c/a/i$e;->a:Landroid/support/c/a/i$c;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 733
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move v1, v2

    .line 736
    :goto_0
    if-eq v0, v2, :cond_9

    .line 737
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v6, :cond_0

    if-eq v0, v9, :cond_9

    .line 738
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 739
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 740
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/c/a/i$c;

    .line 741
    const-string v8, "path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 742
    new-instance v1, Landroid/support/c/a/i$b;

    invoke-direct {v1}, Landroid/support/c/a/i$b;-><init>()V

    .line 743
    invoke-virtual {v1, p1, p3, p4, p2}, Landroid/support/c/a/i$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 744
    iget-object v0, v0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {v1}, Landroid/support/c/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, v4, Landroid/support/c/a/i$e;->h:Landroid/support/v4/g/a;

    invoke-virtual {v1}, Landroid/support/c/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1
    const/4 v0, 0x0

    .line 749
    iget v7, v3, Landroid/support/c/a/i$f;->a:I

    iget v1, v1, Landroid/support/c/a/i$b;->o:I

    or-int/2addr v1, v7

    iput v1, v3, Landroid/support/c/a/i$f;->a:I

    :goto_1
    move v1, v0

    .line 775
    :cond_2
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 750
    :cond_3
    const-string v8, "clip-path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 751
    new-instance v7, Landroid/support/c/a/i$a;

    invoke-direct {v7}, Landroid/support/c/a/i$a;-><init>()V

    .line 752
    invoke-virtual {v7, p1, p3, p4, p2}, Landroid/support/c/a/i$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 753
    iget-object v0, v0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {v7}, Landroid/support/c/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 755
    iget-object v0, v4, Landroid/support/c/a/i$e;->h:Landroid/support/v4/g/a;

    invoke-virtual {v7}, Landroid/support/c/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :cond_4
    iget v0, v3, Landroid/support/c/a/i$f;->a:I

    iget v7, v7, Landroid/support/c/a/i$a;->o:I

    or-int/2addr v0, v7

    iput v0, v3, Landroid/support/c/a/i$f;->a:I

    move v0, v1

    .line 758
    goto :goto_1

    :cond_5
    const-string v8, "group"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 759
    new-instance v7, Landroid/support/c/a/i$c;

    invoke-direct {v7}, Landroid/support/c/a/i$c;-><init>()V

    .line 760
    invoke-virtual {v7, p1, p3, p4, p2}, Landroid/support/c/a/i$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 761
    iget-object v0, v0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {v7}, Landroid/support/c/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 764
    iget-object v0, v4, Landroid/support/c/a/i$e;->h:Landroid/support/v4/g/a;

    invoke-virtual {v7}, Landroid/support/c/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_6
    iget v0, v3, Landroid/support/c/a/i$f;->a:I

    iget v7, v7, Landroid/support/c/a/i$c;->c:I

    or-int/2addr v0, v7

    iput v0, v3, Landroid/support/c/a/i$f;->a:I

    :cond_7
    move v0, v1

    goto :goto_1

    .line 769
    :cond_8
    if-ne v0, v9, :cond_2

    .line 770
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 771
    const-string v7, "group"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 783
    :cond_9
    if-eqz v1, :cond_b

    .line 784
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 787
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    :cond_a
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 791
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " defined"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_b
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 387
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_1
    invoke-virtual {p0}, Landroid/support/c/a/i;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 393
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    iget-object v0, v0, Landroid/support/c/a/i$e;->h:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 816
    iput-boolean p1, p0, Landroid/support/c/a/i;->g:Z

    .line 817
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/c/a/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->d(Landroid/graphics/drawable/Drawable;)Z

    .line 495
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 278
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/c/a/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 285
    iget-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 297
    :goto_1
    iget-object v1, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 298
    iget-object v1, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/c/a/i;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 299
    iget-object v1, p0, Landroid/support/c/a/i;->i:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 300
    iget-object v1, p0, Landroid/support/c/a/i;->i:[F

    const/4 v4, 0x4

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 302
    iget-object v4, p0, Landroid/support/c/a/i;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 303
    iget-object v5, p0, Landroid/support/c/a/i;->i:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 306
    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    move v3, v2

    .line 311
    :cond_3
    iget-object v4, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 312
    iget-object v4, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 313
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 314
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 316
    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 321
    iget-object v5, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    invoke-direct {p0}, Landroid/support/c/a/i;->a()Z

    move-result v5

    .line 325
    if-eqz v5, :cond_4

    .line 326
    iget-object v5, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 333
    :cond_4
    iget-object v2, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 335
    iget-object v2, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {v2, v3, v1}, Landroid/support/c/a/i$f;->b(II)V

    .line 336
    iget-boolean v2, p0, Landroid/support/c/a/i;->g:Z

    if-nez v2, :cond_7

    .line 337
    iget-object v2, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {v2, v3, v1}, Landroid/support/c/a/i$f;->a(II)V

    .line 344
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v2, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroid/support/c/a/i$f;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 345
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 291
    :cond_6
    iget-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 339
    :cond_7
    iget-object v2, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {v2}, Landroid/support/c/a/i$f;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 340
    iget-object v2, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {v2, v3, v1}, Landroid/support/c/a/i$f;->a(II)V

    .line 341
    iget-object v1, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {v1}, Landroid/support/c/a/i$f;->c()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-virtual {v0}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 842
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/c/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {v1}, Landroid/support/c/a/i$f;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 270
    new-instance v0, Landroid/support/c/a/i$g;

    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/c/a/i$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 273
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-virtual {p0}, Landroid/support/c/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/c/a/i$f;->a:I

    .line 273
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 485
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    iget v0, v0, Landroid/support/c/a/i$e;->c:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    iget v0, v0, Landroid/support/c/a/i$e;->b:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/c/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/c/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 630
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 617
    new-instance v1, Landroid/support/c/a/i$e;

    invoke-direct {v1}, Landroid/support/c/a/i$e;-><init>()V

    .line 618
    iput-object v1, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    .line 620
    sget-object v1, Landroid/support/c/a/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 623
    invoke-direct {p0, v1, p2}, Landroid/support/c/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 624
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 625
    invoke-virtual {p0}, Landroid/support/c/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/c/a/i$f;->a:I

    .line 626
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/c/a/i$f;->k:Z

    .line 627
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/c/a/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 629
    iget-object v1, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/c/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 852
    :goto_0
    return-void

    .line 851
    :cond_0
    invoke-super {p0}, Landroid/support/c/a/h;->invalidateSelf()V

    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/b/a/a;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 503
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-boolean v0, v0, Landroid/support/c/a/i$f;->e:Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    invoke-super {p0}, Landroid/support/c/a/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    .line 443
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/c/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_0
    :goto_0
    return-object p0

    .line 255
    :cond_1
    iget-boolean v0, p0, Landroid/support/c/a/i;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/c/a/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 256
    new-instance v0, Landroid/support/c/a/i$f;

    iget-object v1, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    invoke-direct {v0, v1}, Landroid/support/c/a/i$f;-><init>(Landroid/support/c/a/i$f;)V

    iput-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i;->f:Z

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 835
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 458
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 453
    iget-object v1, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/c/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 455
    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    .line 456
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 861
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/c/a/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-virtual {v0}, Landroid/support/c/a/i$e;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 365
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iget-object v0, v0, Landroid/support/c/a/i$f;->b:Landroid/support/c/a/i$e;

    invoke-virtual {v0, p1}, Landroid/support/c/a/i$e;->setRootAlpha(I)V

    .line 366
    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 513
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    iput-boolean p1, v0, Landroid/support/c/a/i$f;->e:Z

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/c/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/c/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iput-object p1, p0, Landroid/support/c/a/i;->e:Landroid/graphics/ColorFilter;

    .line 378
    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/c/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/c/a/h;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/c/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/c/a/h;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/c/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 414
    iget-object v1, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 415
    iput-object p1, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    .line 416
    iget-object v1, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroid/support/c/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 417
    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/support/c/a/i$f;

    .line 429
    iget-object v1, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 430
    iput-object p1, v0, Landroid/support/c/a/i$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 431
    iget-object v1, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/c/a/i$f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/c/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 432
    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/c/a/h;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 878
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-super {p0, p1}, Landroid/support/c/a/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
