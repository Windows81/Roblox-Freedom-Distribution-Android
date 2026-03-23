.class public Lcom/google/ads/interactivemedia/v3/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:I

.field private o:[Ljava/lang/String;

.field private p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/d/a;->a:[C

    .line 1600
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/d/a$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/d/a$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/b/e;->a:Lcom/google/ads/interactivemedia/v3/a/b/e;

    .line 1623
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->c:Z

    .line 238
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    .line 239
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 240
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 242
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 243
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    .line 245
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 269
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    .line 270
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    .line 272
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 283
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    .line 284
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->b:Ljava/io/Reader;

    .line 294
    return-void
.end method

.method private A()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    .line 1583
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1585
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/a;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/a;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1590
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/d/a;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1596
    :cond_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    return v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;I)I
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    return p1
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1269
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1270
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1271
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1272
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 1273
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1275
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1276
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    .line 1277
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    .line 1278
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    aput p1, v0, v1

    .line 1281
    return-void
.end method

.method private a(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    sparse-switch p1, :sswitch_data_0

    .line 776
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 762
    :sswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 774
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1450
    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1452
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 1453
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    .line 1450
    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1456
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1457
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1461
    :cond_3
    const/4 v1, 0x1

    .line 1463
    :cond_4
    return v1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/a/d/a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    return v0
.end method

.method private b(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1340
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    .line 1341
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1342
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 1344
    :goto_0
    if-ne v1, v0, :cond_1

    .line 1345
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    if-eqz p1, :cond_8

    .line 1414
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input at line "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1415
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1350
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 1353
    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 1354
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 1355
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 1356
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    move v1, v2

    .line 1357
    goto :goto_0

    .line 1358
    :cond_2
    const/16 v4, 0x20

    if-eq v1, v4, :cond_9

    const/16 v4, 0xd

    if-eq v1, v4, :cond_9

    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    move v1, v2

    .line 1359
    goto :goto_0

    .line 1362
    :cond_3
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_6

    .line 1363
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1364
    if-ne v2, v0, :cond_4

    .line 1365
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1366
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    .line 1367
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1368
    if-nez v0, :cond_4

    move v0, v1

    .line 1417
    :goto_1
    return v0

    .line 1373
    :cond_4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 1374
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v0, v3, v0

    .line 1375
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1395
    goto :goto_1

    .line 1378
    :sswitch_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1379
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1380
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1382
    :cond_5
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v1, v0, 0x2

    .line 1383
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    goto/16 :goto_0

    .line 1388
    :sswitch_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1389
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->y()V

    .line 1390
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1391
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    goto/16 :goto_0

    .line 1397
    :cond_6
    const/16 v0, 0x23

    if-ne v1, v0, :cond_7

    .line 1398
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1404
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 1405
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->y()V

    .line 1406
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1407
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    goto/16 :goto_0

    .line 1409
    :cond_7
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    move v0, v1

    .line 1410
    goto :goto_1

    .line 1417
    :cond_8
    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .line 1375
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1573
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/d/d;

    .line 1574
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " column "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(C)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    .line 1002
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1005
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    move v3, v0

    .line 1008
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1009
    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    .line 1011
    if-ne v3, p1, :cond_1

    .line 1012
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1013
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_1
    const/16 v6, 0x5c

    if-ne v3, v6, :cond_3

    .line 1016
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1017
    sub-int v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1018
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->z()C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1019
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1020
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    move v2, v0

    :cond_2
    :goto_1
    move v3, v2

    .line 1026
    goto :goto_0

    .line 1022
    :cond_3
    const/16 v6, 0xa

    if-ne v3, v6, :cond_2

    .line 1023
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 1024
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    goto :goto_1

    .line 1028
    :cond_4
    sub-int v1, v3, v0

    invoke-virtual {v5, v4, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1029
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1030
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private b(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1289
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    .line 1290
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    .line 1291
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    if-eq v2, v3, :cond_3

    .line 1292
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 1293
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    :goto_0
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->b:Ljava/io/Reader;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    array-length v4, v1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1301
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 1304
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-lez v2, :cond_1

    aget-char v2, v1, v0

    const v3, 0xfeff

    if-ne v2, v3, :cond_1

    .line 1305
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1306
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    .line 1307
    add-int/lit8 p1, p1, 0x1

    .line 1310
    :cond_1
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-lt v2, p1, :cond_0

    .line 1311
    const/4 v0, 0x1

    .line 1314
    :cond_2
    return v0

    .line 1295
    :cond_3
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/a/d/a;)I
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v0

    return v0
.end method

.method private c(C)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    .line 1105
    :cond_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1106
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    move v2, v1

    .line 1108
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1109
    add-int/lit8 v1, v2, 0x1

    aget-char v2, v3, v2

    .line 1110
    if-ne v2, p1, :cond_1

    .line 1111
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1112
    return-void

    .line 1113
    :cond_1
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_3

    .line 1114
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1115
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->z()C

    .line 1116
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1117
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    :cond_2
    :goto_1
    move v2, v1

    .line 1122
    goto :goto_0

    .line 1118
    :cond_3
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    .line 1119
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 1120
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    goto :goto_1

    .line 1123
    :cond_4
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/a/d/a;)I
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v0

    return v0
.end method

.method private o()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    const/4 v7, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 466
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 467
    if-ne v4, v2, :cond_3

    .line 468
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v1, v5, v6

    .line 553
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    move-result v5

    .line 554
    sparse-switch v5, :sswitch_data_0

    .line 583
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 586
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    if-ne v0, v2, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 590
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->r()I

    move-result v0

    .line 591
    if-eqz v0, :cond_14

    .line 605
    :cond_2
    :goto_1
    return v0

    .line 469
    :cond_3
    if-ne v4, v1, :cond_4

    .line 471
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    move-result v5

    .line 472
    sparse-switch v5, :sswitch_data_1

    .line 480
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 474
    :sswitch_1
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto :goto_1

    .line 476
    :sswitch_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    goto :goto_0

    .line 482
    :cond_4
    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-ne v4, v7, :cond_9

    .line 483
    :cond_5
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v5, v5, -0x1

    aput v0, v3, v5

    .line 485
    if-ne v4, v7, :cond_6

    .line 486
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    move-result v0

    .line 487
    sparse-switch v0, :sswitch_data_2

    .line 495
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 489
    :sswitch_3
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    move v0, v1

    goto :goto_1

    .line 491
    :sswitch_4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 498
    :cond_6
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    move-result v0

    .line 499
    sparse-switch v0, :sswitch_data_3

    .line 512
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 513
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 514
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 515
    const/16 v0, 0xe

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto :goto_1

    .line 501
    :sswitch_6
    const/16 v0, 0xd

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto :goto_1

    .line 503
    :sswitch_7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 504
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto :goto_1

    .line 506
    :sswitch_8
    if-eq v4, v7, :cond_7

    .line 507
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    move v0, v1

    goto :goto_1

    .line 509
    :cond_7
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 517
    :cond_8
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 520
    :cond_9
    if-ne v4, v0, :cond_b

    .line 521
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v5, v6

    .line 523
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    move-result v5

    .line 524
    packed-switch v5, :pswitch_data_0

    .line 534
    :pswitch_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 528
    :pswitch_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 529
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-lt v5, v6, :cond_a

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_a
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v5, v5, v6

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_0

    .line 530
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto/16 :goto_0

    .line 536
    :cond_b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_d

    .line 537
    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->c:Z

    if-eqz v5, :cond_c

    .line 538
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->A()V

    .line 540
    :cond_c
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v6, v6, -0x1

    aput v3, v5, v6

    goto/16 :goto_0

    .line 541
    :cond_d
    if-ne v4, v3, :cond_f

    .line 542
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Z)I

    move-result v5

    .line 543
    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    .line 544
    const/16 v0, 0x11

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 546
    :cond_e
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 547
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto/16 :goto_0

    .line 549
    :cond_f
    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :sswitch_9
    if-ne v4, v2, :cond_10

    .line 557
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 563
    :cond_10
    :sswitch_a
    if-eq v4, v2, :cond_11

    if-ne v4, v1, :cond_12

    .line 564
    :cond_11
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 565
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 566
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    move v0, v3

    goto/16 :goto_1

    .line 568
    :cond_12
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 571
    :sswitch_b
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 572
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 574
    :sswitch_c
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    if-ne v0, v2, :cond_13

    .line 575
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 577
    :cond_13
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 579
    :sswitch_d
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 581
    :sswitch_e
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    move v0, v2

    goto/16 :goto_1

    .line 595
    :cond_14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->s()I

    move-result v0

    .line 596
    if-nez v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_15

    .line 601
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 604
    :cond_15
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 605
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 554
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 472
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 487
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 499
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 524
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private r()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 614
    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 615
    :cond_0
    const-string v2, "true"

    .line 616
    const-string v1, "TRUE"

    .line 617
    const/4 v0, 0x5

    .line 631
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 632
    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_8

    .line 633
    iget v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v0, v3

    .line 649
    :goto_2
    return v0

    .line 618
    :cond_1
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    .line 619
    :cond_2
    const-string v2, "false"

    .line 620
    const-string v1, "FALSE"

    .line 621
    const/4 v0, 0x6

    goto :goto_0

    .line 622
    :cond_3
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_5

    .line 623
    :cond_4
    const-string v2, "null"

    .line 624
    const-string v1, "NULL"

    .line 625
    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    move v0, v3

    .line 627
    goto :goto_2

    .line 636
    :cond_6
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    .line 637
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    move v0, v3

    .line 638
    goto :goto_2

    .line 632
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 642
    :cond_8
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v1, v5

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-lt v1, v2, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v2, v5

    aget-char v1, v1, v2

    .line 643
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    .line 644
    goto :goto_2

    .line 648
    :cond_a
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 649
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto :goto_2
.end method

.method private s()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    .line 655
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 656
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 658
    const-wide/16 v6, 0x0

    .line 659
    const/4 v5, 0x0

    .line 660
    const/4 v4, 0x1

    .line 661
    const/4 v3, 0x0

    .line 663
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    .line 667
    :goto_0
    add-int v2, v1, v10

    if-ne v2, v0, :cond_4

    .line 668
    array-length v0, v11

    if-ne v10, v0, :cond_0

    .line 671
    const/4 v0, 0x0

    .line 751
    :goto_1
    return v0

    .line 673
    :cond_0
    add-int/lit8 v0, v10, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 742
    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_16

    if-eqz v4, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_16

    .line 743
    :cond_2
    if-eqz v5, :cond_15

    :goto_2
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    .line 744
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 745
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto :goto_1

    .line 676
    :cond_3
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 677
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    .line 680
    :cond_4
    add-int v2, v1, v10

    aget-char v2, v11, v2

    .line 681
    sparse-switch v2, :sswitch_data_0

    .line 716
    const/16 v8, 0x30

    if-lt v2, v8, :cond_5

    const/16 v8, 0x39

    if-le v2, v8, :cond_c

    .line 717
    :cond_5
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    const/4 v0, 0x0

    goto :goto_1

    .line 683
    :sswitch_0
    if-nez v3, :cond_6

    .line 684
    const/4 v3, 0x1

    .line 685
    const/4 v2, 0x1

    move v14, v4

    move v4, v3

    move v3, v14

    .line 666
    :goto_3
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_0

    .line 687
    :cond_6
    const/4 v2, 0x5

    if-ne v3, v2, :cond_7

    .line 688
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 689
    goto :goto_3

    .line 691
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 694
    :sswitch_1
    const/4 v2, 0x5

    if-ne v3, v2, :cond_8

    .line 695
    const/4 v2, 0x6

    move v3, v4

    move v4, v5

    .line 696
    goto :goto_3

    .line 698
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 702
    :sswitch_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_a

    .line 703
    :cond_9
    const/4 v2, 0x5

    move v3, v4

    move v4, v5

    .line 704
    goto :goto_3

    .line 706
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 709
    :sswitch_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    .line 710
    const/4 v2, 0x3

    move v3, v4

    move v4, v5

    .line 711
    goto :goto_3

    .line 713
    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 722
    :cond_c
    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    if-nez v3, :cond_e

    .line 723
    :cond_d
    add-int/lit8 v2, v2, -0x30

    neg-int v2, v2

    int-to-long v6, v2

    .line 724
    const/4 v2, 0x2

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 725
    :cond_e
    const/4 v8, 0x2

    if-ne v3, v8, :cond_12

    .line 726
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_f

    .line 727
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 729
    :cond_f
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v2, v2, -0x30

    int-to-long v12, v2

    sub-long/2addr v8, v12

    .line 730
    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-gtz v2, :cond_10

    const-wide v12, -0xcccccccccccccccL

    cmp-long v2, v6, v12

    if-nez v2, :cond_11

    cmp-long v2, v8, v6

    if-gez v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    :goto_4
    and-int/2addr v2, v4

    move v4, v5

    move-wide v6, v8

    move v14, v3

    move v3, v2

    move v2, v14

    .line 733
    goto :goto_3

    .line 730
    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    .line 733
    :cond_12
    const/4 v2, 0x3

    if-ne v3, v2, :cond_13

    .line 734
    const/4 v2, 0x4

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 735
    :cond_13
    const/4 v2, 0x5

    if-eq v3, v2, :cond_14

    const/4 v2, 0x6

    if-ne v3, v2, :cond_19

    .line 736
    :cond_14
    const/4 v2, 0x7

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 743
    :cond_15
    neg-long v6, v6

    goto/16 :goto_2

    .line 746
    :cond_16
    const/4 v0, 0x2

    if-eq v3, v0, :cond_17

    const/4 v0, 0x4

    if-eq v3, v0, :cond_17

    const/4 v0, 0x7

    if-ne v3, v0, :cond_18

    .line 748
    :cond_17
    iput v10, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    .line 749
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    goto/16 :goto_1

    .line 751
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_19
    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    .line 681
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private t()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1041
    const/4 v0, 0x0

    move v1, v2

    .line 1046
    :goto_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-ge v3, v4, :cond_1

    .line 1047
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    :sswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 1091
    :cond_0
    :goto_1
    :sswitch_1
    if-nez v0, :cond_4

    .line 1092
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1097
    :goto_2
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1098
    return-object v0

    .line 1070
    :cond_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1071
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1079
    :cond_2
    if-nez v0, :cond_3

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    :cond_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1083
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1085
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 1086
    goto :goto_1

    .line 1094
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0

    .line 1047
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private u()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    :cond_0
    const/4 v0, 0x0

    .line 1131
    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-ge v1, v2, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :sswitch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->x()V

    .line 1150
    :sswitch_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1156
    :goto_1
    return-void

    .line 1154
    :cond_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1132
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private v()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private w()I
    .locals 2

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private x()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->c:Z

    if-nez v0, :cond_0

    .line 1423
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1425
    :cond_0
    return-void
.end method

.method private y()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1433
    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 1435
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1436
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 1437
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    .line 1443
    :cond_2
    :goto_0
    return-void

    .line 1439
    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private z()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1512
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 1517
    sparse-switch v0, :sswitch_data_0

    .line 1564
    :goto_0
    return v0

    .line 1519
    :sswitch_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->f:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1520
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1523
    :cond_1
    const/4 v1, 0x0

    .line 1524
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_6

    .line 1525
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    aget-char v3, v3, v1

    .line 1526
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1527
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 1528
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1524
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1529
    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    .line 1530
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1531
    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    .line 1532
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    .line 1534
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "\\u"

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1537
    :cond_6
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto :goto_0

    .line 1541
    :sswitch_1
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 1544
    :sswitch_2
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 1547
    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 1550
    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 1553
    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 1556
    :sswitch_6
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->g:I

    .line 1557
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->h:I

    goto/16 :goto_0

    .line 1517
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 341
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 342
    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 345
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(I)V

    .line 347
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aput v2, v0, v1

    .line 348
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 353
    return-void

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4a

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->c:Z

    .line 327
    return-void
.end method

.method public b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 361
    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 364
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 365
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    .line 366
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 372
    return-void

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected END_ARRAY but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 380
    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 383
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 384
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(I)V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 390
    return-void

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1221
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1222
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    .line 1223
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    .line 1224
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1225
    return-void
.end method

.method public d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 398
    if-nez v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 401
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 402
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    .line 403
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 404
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 410
    return-void

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x49

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected END_OBJECT but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 417
    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 420
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/google/ads/interactivemedia/v3/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 428
    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 432
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 461
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 434
    :pswitch_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->c:Lcom/google/ads/interactivemedia/v3/a/d/b;

    .line 459
    :goto_0
    return-object v0

    .line 436
    :pswitch_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->d:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 438
    :pswitch_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 440
    :pswitch_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->b:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 444
    :pswitch_4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->e:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 447
    :pswitch_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->h:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 449
    :pswitch_6
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 454
    :pswitch_7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 457
    :pswitch_8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 459
    :pswitch_9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->j:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 789
    if-nez v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 793
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 794
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 804
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 805
    return-object v0

    .line 795
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 796
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 797
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 798
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 818
    if-nez v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 822
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 823
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 840
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 841
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 842
    return-object v0

    .line 824
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 825
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 827
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 829
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 830
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    goto :goto_0

    .line 831
    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 832
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 834
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 835
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto :goto_0

    .line 837
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 838
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a string but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 853
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 854
    if-nez v1, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v1

    .line 857
    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 858
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 859
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 860
    const/4 v0, 0x1

    .line 864
    :goto_0
    return v0

    .line 861
    :cond_1
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 862
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 863
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_0

    .line 866
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a boolean but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 879
    if-nez v0, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 882
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 883
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 884
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 889
    return-void

    .line 886
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 887
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected null but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xb

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 901
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 902
    if-nez v0, :cond_0

    .line 903
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 906
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 907
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 908
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 909
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    long-to-double v0, v0

    .line 933
    :goto_0
    return-wide v0

    .line 912
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 913
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 914
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 924
    :cond_2
    :goto_1
    iput v5, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 925
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 926
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->c:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 927
    :cond_3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/d/d;

    .line 928
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x66

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "JSON forbids NaN and infinities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/d/d;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    :cond_4
    if-eq v0, v2, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    .line 916
    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    goto :goto_2

    .line 917
    :cond_7
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 918
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    goto/16 :goto_1

    .line 919
    :cond_8
    if-eq v0, v5, :cond_2

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 931
    iput v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 932
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public l()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 947
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 948
    if-nez v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 952
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 953
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 954
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 955
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    .line 986
    :goto_0
    return-wide v0

    .line 958
    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 959
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 960
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 976
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 977
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 978
    double-to-long v0, v2

    .line 979
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_6

    .line 980
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 981
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 962
    :cond_3
    if-ne v0, v2, :cond_4

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 965
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 966
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 968
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 962
    :cond_4
    const/16 v0, 0x22

    goto :goto_2

    .line 972
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a long but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 984
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 985
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public m()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 1169
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1170
    if-nez v0, :cond_0

    .line 1171
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v0

    .line 1175
    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1176
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    long-to-int v0, v0

    .line 1177
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1178
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->j:J

    .line 1179
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x59

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_1
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1182
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 1214
    :goto_0
    return v0

    .line 1186
    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1187
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->d:[C

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 1188
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    .line 1204
    :goto_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1205
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1206
    double-to-int v0, v2

    .line 1207
    int-to-double v4, v0

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_7

    .line 1208
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 1209
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_3
    if-eq v0, v2, :cond_4

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 1190
    :cond_4
    if-ne v0, v2, :cond_5

    const/16 v0, 0x27

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1193
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1194
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1196
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1190
    :cond_5
    const/16 v0, 0x22

    goto :goto_2

    .line 1200
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->l:Ljava/lang/String;

    .line 1212
    iput v6, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1213
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method public n()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1233
    move v0, v1

    .line 1235
    :cond_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1236
    if-nez v2, :cond_1

    .line 1237
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->o()I

    move-result v2

    .line 1240
    :cond_1
    if-ne v2, v5, :cond_3

    .line 1241
    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(I)V

    .line 1242
    add-int/lit8 v0, v0, 0x1

    .line 1261
    :cond_2
    :goto_0
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->i:I

    .line 1262
    if-nez v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1265
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    .line 1266
    return-void

    .line 1243
    :cond_3
    if-ne v2, v4, :cond_4

    .line 1244
    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(I)V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_4
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1247
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    .line 1248
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1249
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1250
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    .line 1251
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1252
    :cond_6
    const/16 v3, 0xe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 1253
    :cond_7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->u()V

    goto :goto_0

    .line 1254
    :cond_8
    const/16 v3, 0x8

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    .line 1255
    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c(C)V

    goto :goto_0

    .line 1256
    :cond_a
    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 1257
    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c(C)V

    goto :goto_0

    .line 1258
    :cond_c
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 1259
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->e:I

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->c:Z

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1477
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->n:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 1478
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->m:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    .line 1477
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :pswitch_0
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->p:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1487
    :pswitch_1
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1488
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1489
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/d/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1499
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->v()I

    move-result v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->w()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at line "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
