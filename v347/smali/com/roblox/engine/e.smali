.class public Lcom/roblox/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/roblox/engine/e;->a:F

    .line 13
    iput v0, p0, Lcom/roblox/engine/e;->b:F

    return-void
.end method

.method private a(DI)D
    .locals 5

    .prologue
    .line 35
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 36
    mul-double v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, v0

    return-wide v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/roblox/engine/a;->b()Z

    move-result v0

    return v0
.end method

.method private a(DD)Z
    .locals 7

    .prologue
    const-wide v4, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    .line 29
    rem-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 30
    cmpg-double v2, v0, v4

    if-ltz v2, :cond_0

    sub-double v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(DDD)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/roblox/engine/e;->a(DD)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/roblox/engine/e;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(DDD)D
    .locals 21

    .prologue
    .line 56
    .line 58
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/roblox/engine/e;->a(DI)D

    move-result-wide v10

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/roblox/engine/e;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/roblox/engine/e;->b()I

    move-result v4

    int-to-double v4, v4

    cmpg-double v4, p5, v4

    if-gtz v4, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-wide p5

    :cond_1
    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    .line 64
    invoke-direct/range {v5 .. v11}, Lcom/roblox/engine/e;->a(DDD)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide/from16 p5, v10

    .line 65
    goto :goto_0

    .line 68
    :cond_2
    const/4 v4, 0x1

    :goto_1
    int-to-double v6, v4

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    .line 70
    const-wide v6, 0x3fb999999999999aL    # 0.1

    int-to-double v8, v4

    mul-double/2addr v6, v8

    sub-double v18, v10, v6

    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    .line 71
    invoke-direct/range {v13 .. v19}, Lcom/roblox/engine/e;->a(DDD)Z

    move-result v5

    if-eqz v5, :cond_3

    move-wide/from16 p5, v18

    .line 72
    goto :goto_0

    .line 75
    :cond_3
    const-wide v6, 0x3fb999999999999aL    # 0.1

    int-to-double v8, v4

    mul-double/2addr v6, v8

    add-double v18, v10, v6

    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    .line 76
    invoke-direct/range {v13 .. v19}, Lcom/roblox/engine/e;->a(DDD)Z

    move-result v5

    if-eqz v5, :cond_4

    move-wide/from16 p5, v18

    .line 77
    goto :goto_0

    .line 68
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private b()I
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/roblox/engine/a;->c()I

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/roblox/engine/a;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)F
    .locals 8

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/roblox/engine/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget v0, p0, Lcom/roblox/engine/e;->a:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/roblox/engine/e;->a:F

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 102
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v4, v0

    iget v0, p0, Lcom/roblox/engine/e;->a:F

    float-to-double v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/roblox/engine/e;->b(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/roblox/engine/e;->b:F

    .line 105
    :cond_0
    iget v0, p0, Lcom/roblox/engine/e;->b:F

    .line 108
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method
