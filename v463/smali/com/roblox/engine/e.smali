.class public Lcom/roblox/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/roblox/engine/e;->a:F

    .line 13
    iput v0, p0, Lcom/roblox/engine/e;->b:F

    return-void
.end method

.method private a(DI)D
    .locals 4

    int-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 35
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double p1, p1, v0

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private a()Z
    .locals 1

    .line 16
    invoke-static {}, Lcom/roblox/engine/a;->b()Z

    move-result v0

    return v0
.end method

.method private a(DD)Z
    .locals 3

    rem-double/2addr p1, p3

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    sub-double/2addr p3, p1

    .line 30
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(DDD)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/roblox/engine/e;->a(DD)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 46
    :cond_0
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/roblox/engine/e;->a(DD)Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private b(DDD)D
    .locals 17

    move-wide/from16 v0, p5

    const/4 v2, 0x1

    move-object/from16 v10, p0

    .line 58
    invoke-direct {v10, v0, v1, v2}, Lcom/roblox/engine/e;->a(DI)D

    move-result-wide v11

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/roblox/engine/e;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/roblox/engine/e;->b()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v0, v3

    if-gtz v5, :cond_0

    return-wide v0

    :cond_0
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide v8, v11

    .line 64
    invoke-direct/range {v3 .. v9}, Lcom/roblox/engine/e;->a(DDD)Z

    move-result v3

    if-eqz v3, :cond_1

    return-wide v11

    :cond_1
    :goto_0
    int-to-double v3, v2

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_4

    const-wide v5, 0x3fb999999999999aL    # 0.1

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v3, v5

    sub-double v15, v11, v13

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide v8, v15

    .line 71
    invoke-direct/range {v3 .. v9}, Lcom/roblox/engine/e;->a(DDD)Z

    move-result v3

    if-eqz v3, :cond_2

    return-wide v15

    :cond_2
    add-double/2addr v13, v11

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide v8, v13

    .line 76
    invoke-direct/range {v3 .. v9}, Lcom/roblox/engine/e;->a(DDD)Z

    move-result v3

    if-eqz v3, :cond_3

    return-wide v13

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method private b()I
    .locals 1

    .line 20
    invoke-static {}, Lcom/roblox/engine/a;->c()I

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/roblox/engine/a;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)F
    .locals 8

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

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 102
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, p1

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v4, p1

    iget p1, p0, Lcom/roblox/engine/e;->a:F

    float-to-double v6, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/roblox/engine/e;->b(DDD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/roblox/engine/e;->b:F

    .line 105
    :cond_0
    iget p1, p0, Lcom/roblox/engine/e;->b:F

    return p1

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method
