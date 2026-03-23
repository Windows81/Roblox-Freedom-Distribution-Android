.class Lcom/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final w:Lcom/d/a/y;


# instance fields
.field final a:I

.field final b:Lcom/d/a/t;

.field final c:Lcom/d/a/i;

.field final d:Lcom/d/a/d;

.field final e:Lcom/d/a/aa;

.field final f:Ljava/lang/String;

.field final g:Lcom/d/a/w;

.field final h:I

.field i:I

.field final j:Lcom/d/a/y;

.field k:Lcom/d/a/a;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field o:Lcom/d/a/t$d;

.field p:Ljava/lang/Exception;

.field q:I

.field r:I

.field s:Lcom/d/a/t$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/d/a/c;->t:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/d/a/c$1;

    invoke-direct {v0}, Lcom/d/a/c$1;-><init>()V

    sput-object v0, Lcom/d/a/c;->u:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/d/a/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/d/a/c$2;

    invoke-direct {v0}, Lcom/d/a/c$2;-><init>()V

    sput-object v0, Lcom/d/a/c;->w:Lcom/d/a/y;

    return-void
.end method

.method constructor <init>(Lcom/d/a/t;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/aa;Lcom/d/a/a;Lcom/d/a/y;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/d/a/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/d/a/c;->a:I

    .line 94
    iput-object p1, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 95
    iput-object p2, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    .line 96
    iput-object p3, p0, Lcom/d/a/c;->d:Lcom/d/a/d;

    .line 97
    iput-object p4, p0, Lcom/d/a/c;->e:Lcom/d/a/aa;

    .line 98
    iput-object p5, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 99
    invoke-virtual {p5}, Lcom/d/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->f:Ljava/lang/String;

    .line 100
    invoke-virtual {p5}, Lcom/d/a/a;->c()Lcom/d/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    .line 101
    invoke-virtual {p5}, Lcom/d/a/a;->k()Lcom/d/a/t$e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->s:Lcom/d/a/t$e;

    .line 102
    invoke-virtual {p5}, Lcom/d/a/a;->h()I

    move-result v0

    iput v0, p0, Lcom/d/a/c;->h:I

    .line 103
    invoke-virtual {p5}, Lcom/d/a/a;->i()I

    move-result v0

    iput v0, p0, Lcom/d/a/c;->i:I

    .line 104
    iput-object p6, p0, Lcom/d/a/c;->j:Lcom/d/a/y;

    .line 105
    invoke-virtual {p6}, Lcom/d/a/y;->a()I

    move-result v0

    iput v0, p0, Lcom/d/a/c;->r:I

    .line 106
    return-void
.end method

.method static a(Lcom/d/a/w;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 489
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/d/a/w;->l:Z

    .line 491
    const/4 v9, 0x0

    .line 492
    const/4 v6, 0x0

    .line 496
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/d/a/w;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget v12, v0, Lcom/d/a/w;->h:I

    .line 500
    move-object/from16 v0, p0

    iget v13, v0, Lcom/d/a/w;->i:I

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/d/a/w;->m:F

    .line 503
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/d/a/w;->p:Z

    if-eqz v3, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget v3, v0, Lcom/d/a/w;->n:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/d/a/w;->o:F

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 511
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/d/a/w;->j:Z

    if-eqz v2, :cond_6

    .line 512
    int-to-float v2, v12

    int-to-float v3, v8

    div-float v3, v2, v3

    .line 513
    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 515
    cmpl-float v4, v3, v2

    if-lez v4, :cond_5

    .line 516
    int-to-float v4, v5

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 517
    sub-int v2, v5, v4

    div-int/lit8 v6, v2, 0x2

    .line 520
    int-to-float v2, v13

    int-to-float v10, v4

    div-float/2addr v2, v10

    move v10, v9

    move v9, v6

    move v6, v8

    .line 528
    :goto_1
    invoke-static {v11, v8, v5, v12, v13}, Lcom/d/a/c;->a(ZIIII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    move v5, v6

    move v3, v10

    move v6, v4

    move v4, v9

    .line 553
    :goto_2
    if-eqz p2, :cond_2

    .line 554
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 557
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v2, p1

    .line 558
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 559
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_3

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 p1, v2

    .line 564
    :cond_3
    return-object p1

    .line 507
    :cond_4
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 522
    :cond_5
    int-to-float v4, v8

    div-float/2addr v3, v2

    mul-float/2addr v3, v4

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 523
    sub-int v3, v8, v4

    div-int/lit8 v9, v3, 0x2

    .line 525
    int-to-float v3, v12

    int-to-float v10, v4

    div-float/2addr v3, v10

    move v10, v9

    move v9, v6

    move v6, v4

    move v4, v5

    .line 526
    goto :goto_1

    .line 531
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/d/a/w;->k:Z

    if-eqz v2, :cond_9

    .line 532
    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    .line 533
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    .line 534
    cmpg-float v4, v2, v3

    if-gez v4, :cond_8

    .line 535
    :goto_3
    invoke-static {v11, v8, v5, v12, v13}, Lcom/d/a/c;->a(ZIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 536
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_7
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    .line 538
    goto :goto_2

    :cond_8
    move v2, v3

    .line 534
    goto :goto_3

    .line 538
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_c

    :cond_a
    if-ne v12, v8, :cond_b

    if-eq v13, v5, :cond_c

    .line 543
    :cond_b
    if-eqz v12, :cond_d

    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    move v3, v2

    .line 545
    :goto_4
    if-eqz v13, :cond_e

    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 547
    :goto_5
    invoke-static {v11, v8, v5, v12, v13}, Lcom/d/a/c;->a(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 548
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_c
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    goto :goto_2

    .line 543
    :cond_d
    int-to-float v2, v13

    int-to-float v3, v5

    div-float/2addr v2, v3

    move v3, v2

    goto :goto_4

    .line 545
    :cond_e
    int-to-float v2, v12

    int-to-float v4, v8

    div-float/2addr v2, v4

    goto :goto_5
.end method

.method static a(Ljava/io/InputStream;Lcom/d/a/w;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 114
    new-instance v0, Lcom/d/a/n;

    invoke-direct {v0, p0}, Lcom/d/a/n;-><init>(Ljava/io/InputStream;)V

    .line 117
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/d/a/n;->a(I)J

    move-result-wide v2

    .line 119
    invoke-static {p1}, Lcom/d/a/y;->c(Lcom/d/a/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/d/a/y;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 122
    invoke-static {v0}, Lcom/d/a/ae;->c(Ljava/io/InputStream;)Z

    move-result v5

    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/d/a/n;->a(J)V

    .line 126
    if-eqz v5, :cond_2

    .line 127
    invoke-static {v0}, Lcom/d/a/ae;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 128
    if-eqz v4, :cond_0

    .line 129
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iget v2, p1, Lcom/d/a/w;->h:I

    iget v3, p1, Lcom/d/a/w;->i:I

    invoke-static {v2, v3, v1, p1}, Lcom/d/a/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/d/a/w;)V

    .line 133
    :cond_0
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    :cond_1
    return-object v0

    .line 135
    :cond_2
    if-eqz v4, :cond_3

    .line 136
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v4, p1, Lcom/d/a/w;->h:I

    iget v5, p1, Lcom/d/a/w;->i:I

    invoke-static {v4, v5, v1, p1}, Lcom/d/a/y;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/d/a/w;)V

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/d/a/n;->a(J)V

    .line 142
    :cond_3
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/ac;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_0
    if-ge v3, v4, :cond_4

    .line 426
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/ac;

    .line 429
    :try_start_0
    invoke-interface {v0, v2}, Lcom/d/a/ac;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 440
    if-nez p1, :cond_1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformation "

    .line 442
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-interface {v0}, Lcom/d/a/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null after "

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/ac;

    .line 448
    invoke-interface {v0}, Lcom/d/a/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :catch_0
    move-exception v2

    .line 431
    sget-object v3, Lcom/d/a/t;->a:Landroid/os/Handler;

    new-instance v4, Lcom/d/a/c$3;

    invoke-direct {v4, v0, v2}, Lcom/d/a/c$3;-><init>(Lcom/d/a/ac;Ljava/lang/RuntimeException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 483
    :goto_2
    return-object v0

    .line 450
    :cond_0
    sget-object v0, Lcom/d/a/t;->a:Landroid/os/Handler;

    new-instance v3, Lcom/d/a/c$4;

    invoke-direct {v3, v2}, Lcom/d/a/c$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 455
    goto :goto_2

    .line 458
    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    sget-object v2, Lcom/d/a/t;->a:Landroid/os/Handler;

    new-instance v3, Lcom/d/a/c$5;

    invoke-direct {v3, v0}, Lcom/d/a/c$5;-><init>(Lcom/d/a/ac;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 466
    goto :goto_2

    .line 470
    :cond_2
    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    sget-object v2, Lcom/d/a/t;->a:Landroid/os/Handler;

    new-instance v3, Lcom/d/a/c$6;

    invoke-direct {v3, v0}, Lcom/d/a/c$6;-><init>(Lcom/d/a/ac;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 478
    goto :goto_2

    .line 425
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 483
    goto :goto_2
.end method

.method static a(Lcom/d/a/t;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/aa;Lcom/d/a/a;)Lcom/d/a/c;
    .locals 7

    .prologue
    .line 409
    invoke-virtual {p4}, Lcom/d/a/a;->c()Lcom/d/a/w;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Lcom/d/a/t;->a()Ljava/util/List;

    move-result-object v2

    .line 414
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/d/a/y;

    .line 416
    invoke-virtual {v6, v1}, Lcom/d/a/y;->a(Lcom/d/a/w;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    new-instance v0, Lcom/d/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/d/a/c;-><init>(Lcom/d/a/t;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/aa;Lcom/d/a/a;Lcom/d/a/y;)V

    .line 421
    :goto_1
    return-object v0

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lcom/d/a/c;

    sget-object v6, Lcom/d/a/c;->w:Lcom/d/a/y;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/d/a/c;-><init>(Lcom/d/a/t;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/aa;Lcom/d/a/a;Lcom/d/a/y;)V

    goto :goto_1
.end method

.method static a(Lcom/d/a/w;)V
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/d/a/w;->c()Ljava/lang/String;

    move-result-object v1

    .line 400
    sget-object v0, Lcom/d/a/c;->u:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 401
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 402
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private static a(ZIIII)Z
    .locals 1

    .prologue
    .line 569
    if-eqz p0, :cond_0

    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Lcom/d/a/t$e;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    sget-object v3, Lcom/d/a/t$e;->a:Lcom/d/a/t$e;

    .line 308
    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 309
    :goto_0
    iget-object v4, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    .line 312
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    move-object v1, v3

    .line 330
    :cond_1
    return-object v1

    :cond_2
    move v0, v2

    .line 308
    goto :goto_0

    :cond_3
    move v1, v2

    .line 309
    goto :goto_1

    .line 316
    :cond_4
    iget-object v1, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    if-eqz v1, :cond_6

    .line 317
    iget-object v1, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    invoke-virtual {v1}, Lcom/d/a/a;->k()Lcom/d/a/t$e;

    move-result-object v1

    .line 320
    :goto_2
    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_1

    .line 323
    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a;

    invoke-virtual {v0}, Lcom/d/a/a;->k()Lcom/d/a/t$e;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/d/a/t$e;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/d/a/t$e;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 322
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_2
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lcom/d/a/c;->h:I

    invoke-static {v1}, Lcom/d/a/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/d/a/c;->d:Lcom/d/a/d;

    iget-object v1, p0, Lcom/d/a/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/d/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/d/a/c;->e:Lcom/d/a/aa;

    invoke-virtual {v1}, Lcom/d/a/aa;->a()V

    .line 197
    sget-object v1, Lcom/d/a/t$d;->a:Lcom/d/a/t$d;

    iput-object v1, p0, Lcom/d/a/c;->o:Lcom/d/a/t$d;

    .line 198
    iget-object v1, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v1, v1, Lcom/d/a/t;->l:Z

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v3}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    iget v1, p0, Lcom/d/a/c;->r:I

    if-nez v1, :cond_8

    sget-object v1, Lcom/d/a/q;->c:Lcom/d/a/q;

    iget v1, v1, Lcom/d/a/q;->d:I

    :goto_1
    iput v1, v2, Lcom/d/a/w;->c:I

    .line 206
    iget-object v1, p0, Lcom/d/a/c;->j:Lcom/d/a/y;

    iget-object v2, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    iget v3, p0, Lcom/d/a/c;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/d/a/y;->a(Lcom/d/a/w;I)Lcom/d/a/y$a;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v1}, Lcom/d/a/y$a;->c()Lcom/d/a/t$d;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->o:Lcom/d/a/t$d;

    .line 209
    invoke-virtual {v1}, Lcom/d/a/y$a;->d()I

    move-result v0

    iput v0, p0, Lcom/d/a/c;->q:I

    .line 211
    invoke-virtual {v1}, Lcom/d/a/y$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    if-nez v0, :cond_2

    .line 215
    invoke-virtual {v1}, Lcom/d/a/y$a;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-static {v1, v0}, Lcom/d/a/c;->a(Ljava/io/InputStream;Lcom/d/a/w;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 219
    invoke-static {v1}, Lcom/d/a/ae;->a(Ljava/io/InputStream;)V

    .line 224
    :cond_2
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v1, v1, Lcom/d/a/t;->l:Z

    if-eqz v1, :cond_3

    .line 226
    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v3}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/d/a/c;->e:Lcom/d/a/aa;

    invoke-virtual {v1, v0}, Lcom/d/a/aa;->a(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v1}, Lcom/d/a/w;->e()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/d/a/c;->q:I

    if-eqz v1, :cond_0

    .line 230
    :cond_4
    sget-object v1, Lcom/d/a/c;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_1
    iget-object v2, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->f()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/d/a/c;->q:I

    if-eqz v2, :cond_6

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    iget v3, p0, Lcom/d/a/c;->q:I

    invoke-static {v2, v0, v3}, Lcom/d/a/c;->a(Lcom/d/a/w;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v2, v2, Lcom/d/a/t;->l:Z

    if-eqz v2, :cond_6

    .line 234
    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v4}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    iget-object v2, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    iget-object v2, v2, Lcom/d/a/w;->g:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/d/a/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v2, v2, Lcom/d/a/t;->l:Z

    if-eqz v2, :cond_7

    .line 240
    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-virtual {v4}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/d/a/c;->e:Lcom/d/a/aa;

    invoke-virtual {v1, v0}, Lcom/d/a/aa;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    iget v1, p0, Lcom/d/a/c;->i:I

    goto/16 :goto_1

    .line 219
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/d/a/ae;->a(Ljava/io/InputStream;)V

    throw v0

    .line 243
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method a(Lcom/d/a/a;)V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v0, v0, Lcom/d/a/t;->l:Z

    .line 255
    iget-object v1, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    .line 257
    iget-object v2, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    if-nez v2, :cond_3

    .line 258
    iput-object p1, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 259
    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_0
    const-string v0, "Hunter"

    const-string v2, "joined"

    invoke-virtual {v1}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to empty hunter"

    invoke-static {v0, v2, v1, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const-string v0, "Hunter"

    const-string v2, "joined"

    invoke-virtual {v1}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to "

    invoke-static {p0, v3}, Lcom/d/a/ae;->a(Lcom/d/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/d/a/c;->l:Ljava/util/List;

    if-nez v2, :cond_4

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/d/a/c;->l:Ljava/util/List;

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    if-eqz v0, :cond_5

    .line 276
    const-string v0, "Hunter"

    const-string v2, "joined"

    invoke-virtual {v1}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to "

    invoke-static {p0, v3}, Lcom/d/a/ae;->a(Lcom/d/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    invoke-virtual {p1}, Lcom/d/a/a;->k()Lcom/d/a/t$e;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/d/a/t$e;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/d/a/c;->s:Lcom/d/a/t$e;

    invoke-virtual {v2}, Lcom/d/a/t$e;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 281
    iput-object v0, p0, Lcom/d/a/c;->s:Lcom/d/a/t$e;

    goto :goto_0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lcom/d/a/c;->r:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 346
    :goto_0
    if-nez v1, :cond_1

    .line 350
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 345
    goto :goto_0

    .line 349
    :cond_1
    iget v0, p0, Lcom/d/a/c;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/c;->r:I

    .line 350
    iget-object v0, p0, Lcom/d/a/c;->j:Lcom/d/a/y;

    invoke-virtual {v0, p1, p2}, Lcom/d/a/y;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    goto :goto_1
.end method

.method b(Lcom/d/a/a;)V
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    if-ne v1, p1, :cond_3

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 289
    const/4 v0, 0x1

    .line 296
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/d/a/a;->k()Lcom/d/a/t$e;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/c;->s:Lcom/d/a/t$e;

    if-ne v0, v1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/d/a/c;->o()Lcom/d/a/t$e;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->s:Lcom/d/a/t$e;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v0, v0, Lcom/d/a/t;->l:Z

    if-eqz v0, :cond_2

    .line 301
    const-string v0, "Hunter"

    const-string v1, "removed"

    iget-object v2, p1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v2}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "from "

    invoke-static {p0, v3}, Lcom/d/a/ae;->a(Lcom/d/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_2
    return-void

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/d/a/c;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/d/a/c;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/d/a/c;->l:Ljava/util/List;

    .line 335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/d/a/c;->n:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/d/a/c;->n:Ljava/util/concurrent/Future;

    .line 337
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/d/a/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/d/a/c;->n:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/d/a/c;->j:Lcom/d/a/y;

    invoke-virtual {v0}, Lcom/d/a/y;->b()Z

    move-result v0

    return v0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/d/a/c;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/d/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/d/a/c;->h:I

    return v0
.end method

.method h()Lcom/d/a/w;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    return-object v0
.end method

.method i()Lcom/d/a/a;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/d/a/c;->k:Lcom/d/a/a;

    return-object v0
.end method

.method j()Lcom/d/a/t;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    return-object v0
.end method

.method k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/d/a/c;->l:Ljava/util/List;

    return-object v0
.end method

.method l()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/d/a/c;->p:Ljava/lang/Exception;

    return-object v0
.end method

.method m()Lcom/d/a/t$d;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/d/a/c;->o:Lcom/d/a/t$d;

    return-object v0
.end method

.method n()Lcom/d/a/t$e;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/d/a/c;->s:Lcom/d/a/t$e;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/d/a/c;->g:Lcom/d/a/w;

    invoke-static {v0}, Lcom/d/a/c;->a(Lcom/d/a/w;)V

    .line 155
    iget-object v0, p0, Lcom/d/a/c;->b:Lcom/d/a/t;

    iget-boolean v0, v0, Lcom/d/a/t;->l:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "Hunter"

    const-string v1, "executing"

    invoke-static {p0}, Lcom/d/a/ae;->a(Lcom/d/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/c;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->m:Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/d/a/c;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->c(Lcom/d/a/c;)V
    :try_end_0
    .catch Lcom/d/a/j$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/d/a/r$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 188
    :goto_1
    return-void

    .line 164
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->a(Lcom/d/a/c;)V
    :try_end_1
    .catch Lcom/d/a/j$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/d/a/r$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    iget-boolean v1, v0, Lcom/d/a/j$b;->a:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/d/a/j$b;->b:I

    const/16 v2, 0x1f8

    if-eq v1, v2, :cond_3

    .line 168
    :cond_2
    iput-object v0, p0, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->c(Lcom/d/a/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    :try_start_3
    iput-object v0, p0, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 173
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->b(Lcom/d/a/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :catch_2
    move-exception v0

    .line 175
    :try_start_4
    iput-object v0, p0, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 176
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->b(Lcom/d/a/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :catch_3
    move-exception v0

    .line 178
    :try_start_5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/d/a/c;->e:Lcom/d/a/aa;

    invoke-virtual {v2}, Lcom/d/a/aa;->e()Lcom/d/a/ab;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/d/a/ab;->a(Ljava/io/PrintWriter;)V

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 181
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->c(Lcom/d/a/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :catch_4
    move-exception v0

    .line 183
    :try_start_6
    iput-object v0, p0, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 184
    iget-object v0, p0, Lcom/d/a/c;->c:Lcom/d/a/i;

    invoke-virtual {v0, p0}, Lcom/d/a/i;->c(Lcom/d/a/c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Picasso-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
