.class Landroid/support/c/a/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:F

.field c:I

.field private final d:Landroid/graphics/Matrix;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private final k:Landroid/graphics/Matrix;

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->d:Landroid/graphics/Matrix;

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    .line 1300
    iput v1, p0, Landroid/support/c/a/i$c;->b:F

    .line 1301
    iput v1, p0, Landroid/support/c/a/i$c;->e:F

    .line 1302
    iput v1, p0, Landroid/support/c/a/i$c;->f:F

    .line 1303
    iput v2, p0, Landroid/support/c/a/i$c;->g:F

    .line 1304
    iput v2, p0, Landroid/support/c/a/i$c;->h:F

    .line 1305
    iput v1, p0, Landroid/support/c/a/i$c;->i:F

    .line 1306
    iput v1, p0, Landroid/support/c/a/i$c;->j:F

    .line 1310
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    .line 1356
    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$c;Landroid/support/v4/g/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/c/a/i$c;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->d:Landroid/graphics/Matrix;

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    .line 1300
    iput v1, p0, Landroid/support/c/a/i$c;->b:F

    .line 1301
    iput v1, p0, Landroid/support/c/a/i$c;->e:F

    .line 1302
    iput v1, p0, Landroid/support/c/a/i$c;->f:F

    .line 1303
    iput v2, p0, Landroid/support/c/a/i$c;->g:F

    .line 1304
    iput v2, p0, Landroid/support/c/a/i$c;->h:F

    .line 1305
    iput v1, p0, Landroid/support/c/a/i$c;->i:F

    .line 1306
    iput v1, p0, Landroid/support/c/a/i$c;->j:F

    .line 1310
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    .line 1316
    iget v0, p1, Landroid/support/c/a/i$c;->b:F

    iput v0, p0, Landroid/support/c/a/i$c;->b:F

    .line 1317
    iget v0, p1, Landroid/support/c/a/i$c;->e:F

    iput v0, p0, Landroid/support/c/a/i$c;->e:F

    .line 1318
    iget v0, p1, Landroid/support/c/a/i$c;->f:F

    iput v0, p0, Landroid/support/c/a/i$c;->f:F

    .line 1319
    iget v0, p1, Landroid/support/c/a/i$c;->g:F

    iput v0, p0, Landroid/support/c/a/i$c;->g:F

    .line 1320
    iget v0, p1, Landroid/support/c/a/i$c;->h:F

    iput v0, p0, Landroid/support/c/a/i$c;->h:F

    .line 1321
    iget v0, p1, Landroid/support/c/a/i$c;->i:F

    iput v0, p0, Landroid/support/c/a/i$c;->i:F

    .line 1322
    iget v0, p1, Landroid/support/c/a/i$c;->j:F

    iput v0, p0, Landroid/support/c/a/i$c;->j:F

    .line 1323
    iget-object v0, p1, Landroid/support/c/a/i$c;->l:[I

    iput-object v0, p0, Landroid/support/c/a/i$c;->l:[I

    .line 1324
    iget-object v0, p1, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    .line 1325
    iget v0, p1, Landroid/support/c/a/i$c;->c:I

    iput v0, p0, Landroid/support/c/a/i$c;->c:I

    .line 1326
    iget-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1332
    iget-object v3, p1, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    .line 1333
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1334
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1335
    instance-of v2, v0, Landroid/support/c/a/i$c;

    if-eqz v2, :cond_2

    .line 1336
    check-cast v0, Landroid/support/c/a/i$c;

    .line 1337
    iget-object v2, p0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/c/a/i$c;

    invoke-direct {v4, v0, p2}, Landroid/support/c/a/i$c;-><init>(Landroid/support/c/a/i$c;Landroid/support/v4/g/a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1340
    :cond_2
    instance-of v2, v0, Landroid/support/c/a/i$b;

    if-eqz v2, :cond_3

    .line 1341
    new-instance v2, Landroid/support/c/a/i$b;

    check-cast v0, Landroid/support/c/a/i$b;

    invoke-direct {v2, v0}, Landroid/support/c/a/i$b;-><init>(Landroid/support/c/a/i$b;)V

    move-object v0, v2

    .line 1347
    :goto_2
    iget-object v2, p0, Landroid/support/c/a/i$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v2, v0, Landroid/support/c/a/i$d;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1349
    iget-object v2, v0, Landroid/support/c/a/i$d;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1342
    :cond_3
    instance-of v2, v0, Landroid/support/c/a/i$a;

    if-eqz v2, :cond_4

    .line 1343
    new-instance v2, Landroid/support/c/a/i$a;

    check-cast v0, Landroid/support/c/a/i$a;

    invoke-direct {v2, v0}, Landroid/support/c/a/i$a;-><init>(Landroid/support/c/a/i$a;)V

    move-object v0, v2

    goto :goto_2

    .line 1345
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_5
    return-void
.end method

.method static synthetic a(Landroid/support/c/a/i$c;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/support/c/a/i$c;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1412
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1413
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->e:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/c/a/i$c;->f:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1414
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->g:F

    iget v2, p0, Landroid/support/c/a/i$c;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1415
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->b:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1416
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/c/a/i$c;->i:F

    iget v2, p0, Landroid/support/c/a/i$c;->e:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/c/a/i$c;->j:F

    iget v3, p0, Landroid/support/c/a/i$c;->f:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1417
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$c;->l:[I

    .line 1381
    const-string v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/c/a/i$c;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->b:F

    .line 1384
    const/4 v0, 0x1

    iget v1, p0, Landroid/support/c/a/i$c;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->e:F

    .line 1385
    const/4 v0, 0x2

    iget v1, p0, Landroid/support/c/a/i$c;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->f:F

    .line 1388
    const-string v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/c/a/i$c;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->g:F

    .line 1392
    const-string v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/c/a/i$c;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->h:F

    .line 1395
    const-string v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/c/a/i$c;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->i:F

    .line 1397
    const-string v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/c/a/i$c;->j:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/c/a/i$c;->j:F

    .line 1400
    const/4 v0, 0x0

    .line 1401
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_0

    .line 1403
    iput-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    .line 1406
    :cond_0
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1407
    return-void
.end method

.method static synthetic b(Landroid/support/c/a/i$c;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1367
    sget-object v0, Landroid/support/c/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/a/a/c;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1369
    invoke-direct {p0, v0, p4}, Landroid/support/c/a/i$c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1371
    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/support/c/a/i$c;->k:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 1435
    iget v0, p0, Landroid/support/c/a/i$c;->e:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Landroid/support/c/a/i$c;->f:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Landroid/support/c/a/i$c;->b:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1461
    iget v0, p0, Landroid/support/c/a/i$c;->g:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Landroid/support/c/a/i$c;->h:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Landroid/support/c/a/i$c;->i:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1500
    iget v0, p0, Landroid/support/c/a/i$c;->j:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .prologue
    .line 1440
    iget v0, p0, Landroid/support/c/a/i$c;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1441
    iput p1, p0, Landroid/support/c/a/i$c;->e:F

    .line 1442
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1444
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .prologue
    .line 1453
    iget v0, p0, Landroid/support/c/a/i$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1454
    iput p1, p0, Landroid/support/c/a/i$c;->f:F

    .line 1455
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1457
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Landroid/support/c/a/i$c;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1428
    iput p1, p0, Landroid/support/c/a/i$c;->b:F

    .line 1429
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1431
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .prologue
    .line 1466
    iget v0, p0, Landroid/support/c/a/i$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1467
    iput p1, p0, Landroid/support/c/a/i$c;->g:F

    .line 1468
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1470
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Landroid/support/c/a/i$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1480
    iput p1, p0, Landroid/support/c/a/i$c;->h:F

    .line 1481
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1483
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .prologue
    .line 1492
    iget v0, p0, Landroid/support/c/a/i$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1493
    iput p1, p0, Landroid/support/c/a/i$c;->i:F

    .line 1494
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1496
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .prologue
    .line 1505
    iget v0, p0, Landroid/support/c/a/i$c;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1506
    iput p1, p0, Landroid/support/c/a/i$c;->j:F

    .line 1507
    invoke-direct {p0}, Landroid/support/c/a/i$c;->a()V

    .line 1509
    :cond_0
    return-void
.end method
