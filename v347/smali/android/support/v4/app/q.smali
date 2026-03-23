.class Landroid/support/v4/app/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/q$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroid/support/v4/app/s;

.field private static final c:Landroid/support/v4/app/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/q;->a:[I

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0}, Landroid/support/v4/app/r;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/app/q;->b:Landroid/support/v4/app/s;

    .line 59
    invoke-static {}, Landroid/support/v4/app/q;->a()Landroid/support/v4/app/s;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/s;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static a(Landroid/support/v4/app/q$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/q$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/q$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/q$a;",
            ">;I)",
            "Landroid/support/v4/app/q$a;"
        }
    .end annotation

    .prologue
    .line 1212
    if-nez p0, :cond_0

    .line 1213
    new-instance p0, Landroid/support/v4/app/q$a;

    invoke-direct {p0}, Landroid/support/v4/app/q$a;-><init>()V

    .line 1214
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1216
    :cond_0
    return-object p0
.end method

.method private static a()Landroid/support/v4/app/s;
    .locals 2

    .prologue
    .line 64
    :try_start_0
    const-string v0, "android.support.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 421
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    if-eqz p0, :cond_2

    .line 423
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 428
    if-eqz v2, :cond_1

    .line 429
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_2

    .line 433
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    if-eqz p1, :cond_5

    .line 437
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 438
    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 442
    if-eqz v2, :cond_4

    .line 443
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_5

    .line 447
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 463
    :cond_6
    :goto_0
    return-object v0

    .line 454
    :cond_7
    sget-object v2, Landroid/support/v4/app/q;->b:Landroid/support/v4/app/s;

    if-eqz v2, :cond_8

    sget-object v2, Landroid/support/v4/app/q;->b:Landroid/support/v4/app/s;

    invoke-static {v2, v1}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 455
    sget-object v0, Landroid/support/v4/app/q;->b:Landroid/support/v4/app/s;

    goto :goto_0

    .line 457
    :cond_8
    sget-object v2, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/s;

    if-eqz v2, :cond_9

    sget-object v2, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/s;

    invoke-static {v2, v1}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 458
    sget-object v0, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/s;

    goto :goto_0

    .line 460
    :cond_9
    sget-object v1, Landroid/support/v4/app/q;->b:Landroid/support/v4/app/s;

    if-nez v1, :cond_a

    sget-object v1, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/s;

    if-eqz v1, :cond_6

    .line 461
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Transition types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/g/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v7, Landroid/support/v4/g/a;

    invoke-direct {v7}, Landroid/support/v4/g/a;-><init>()V

    .line 160
    add-int/lit8 v0, p4, -0x1

    move v6, v0

    :goto_0
    if-lt v6, p3, :cond_4

    .line 161
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 162
    invoke-virtual {v0, p0}, Landroid/support/v4/app/c;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 166
    iget-object v2, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 170
    if-eqz v1, :cond_2

    .line 171
    iget-object v1, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    .line 172
    iget-object v0, v0, Landroid/support/v4/app/c;->s:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    .line 177
    :goto_1
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v8, :cond_0

    .line 178
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    if-eqz v2, :cond_3

    .line 182
    invoke-virtual {v7, v0, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 174
    :cond_2
    iget-object v1, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    .line 175
    iget-object v0, v0, Landroid/support/v4/app/c;->s:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v7, v0, v1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 189
    :cond_4
    return-object v7
.end method

.method static synthetic a(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/q;->c(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/q;->b(Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 489
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 490
    :cond_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    .line 492
    :cond_1
    if-eqz p3, :cond_2

    .line 493
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 492
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 495
    invoke-virtual {p0, v0}, Landroid/support/v4/app/s;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 506
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/q$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 558
    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    .line 559
    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    .line 560
    if-eqz v10, :cond_0

    .line 561
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    :cond_0
    if-eqz v10, :cond_1

    if-nez v12, :cond_2

    .line 564
    :cond_1
    const/4 v3, 0x0

    .line 630
    :goto_0
    return-object v3

    .line 567
    :cond_2
    move-object/from16 v0, p4

    iget-boolean v13, v0, Landroid/support/v4/app/q$a;->b:Z

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 571
    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v0, v2, v1}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;

    move-result-object v5

    .line 574
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v0, v2, v1}, Landroid/support/v4/app/q;->c(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;

    move-result-object v8

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 578
    const/4 v3, 0x0

    .line 579
    if-eqz v5, :cond_3

    .line 580
    invoke-virtual {v5}, Landroid/support/v4/g/a;->clear()V

    .line 582
    :cond_3
    if-eqz v8, :cond_4

    .line 583
    invoke-virtual {v8}, Landroid/support/v4/g/a;->clear()V

    .line 592
    :cond_4
    :goto_2
    if-nez p7, :cond_7

    if-nez p8, :cond_7

    if-nez v3, :cond_7

    .line 594
    const/4 v3, 0x0

    goto :goto_0

    .line 569
    :cond_5
    invoke-static {p0, v10, v12, v13}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 587
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 586
    move-object/from16 v0, p5

    invoke-static {v0, v5, v3}, Landroid/support/v4/app/q;->a(Ljava/util/ArrayList;Landroid/support/v4/g/a;Ljava/util/Collection;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v3

    .line 588
    move-object/from16 v0, p6

    invoke-static {v0, v8, v3}, Landroid/support/v4/app/q;->a(Ljava/util/ArrayList;Landroid/support/v4/g/a;Ljava/util/Collection;)V

    move-object v3, v2

    goto :goto_2

    .line 597
    :cond_7
    const/4 v2, 0x1

    invoke-static {v10, v12, v13, v5, v2}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;Z)V

    .line 601
    if-eqz v3, :cond_9

    .line 602
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {p0, v3, v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 605
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroid/support/v4/app/q$a;->e:Z

    .line 606
    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/support/v4/app/q$a;->f:Landroid/support/v4/app/c;

    move-object v2, p0

    move-object/from16 v4, p8

    .line 607
    invoke-static/range {v2 .. v7}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/g/a;ZLandroid/support/v4/app/c;)V

    .line 609
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 610
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    invoke-static {v8, v0, v1, v13}, Landroid/support/v4/app/q;->b(Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v9

    .line 612
    if-eqz v9, :cond_8

    .line 613
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v11}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 620
    :cond_8
    :goto_3
    new-instance v4, Landroid/support/v4/app/q$3;

    move-object v5, v10

    move-object v6, v12

    move v7, v13

    move-object v10, p0

    invoke-direct/range {v4 .. v11}, Landroid/support/v4/app/q$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;Landroid/view/View;Landroid/support/v4/app/s;Landroid/graphics/Rect;)V

    invoke-static {p1, v4}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    goto/16 :goto_0

    .line 616
    :cond_9
    const/4 v11, 0x0

    .line 617
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private static a(Landroid/support/v4/app/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x1

    .line 1033
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 1034
    if-eqz p5, :cond_1

    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 1043
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1045
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1053
    :goto_1
    return-object v0

    .line 1035
    :cond_1
    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/s;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/support/v4/g/a;->size()I

    move-result v1

    .line 886
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 887
    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 891
    :goto_1
    return-object v0

    .line 886
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;Z)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/c;Landroid/support/v4/app/c$a;Landroid/util/SparseArray;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/c;",
            "Landroid/support/v4/app/c$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/q$a;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1115
    iget-object v1, p1, Landroid/support/v4/app/c$a;->b:Landroid/support/v4/app/Fragment;

    .line 1116
    if-nez v1, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget v9, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1120
    if-eqz v9, :cond_0

    .line 1123
    if-eqz p3, :cond_5

    sget-object v0, Landroid/support/v4/app/q;->a:[I

    iget v4, p1, Landroid/support/v4/app/c$a;->a:I

    aget v0, v0, v4

    .line 1128
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    .line 1166
    :goto_2
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/q$a;

    .line 1167
    if-eqz v5, :cond_11

    .line 1169
    invoke-static {v0, p2, v9}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/q$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/q$a;

    move-result-object v8

    .line 1170
    iput-object v1, v8, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    .line 1171
    iput-boolean p3, v8, Landroid/support/v4/app/q$a;->b:Z

    .line 1172
    iput-object p0, v8, Landroid/support/v4/app/q$a;->c:Landroid/support/v4/app/c;

    .line 1174
    :goto_3
    if-nez p4, :cond_3

    if-eqz v4, :cond_3

    .line 1175
    if-eqz v8, :cond_2

    iget-object v0, v8, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    if-ne v0, v1, :cond_2

    .line 1176
    iput-object v10, v8, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    .line 1183
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/m;

    .line 1184
    iget v4, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v4, v2, :cond_3

    iget v4, v0, Landroid/support/v4/app/m;->l:I

    if-lt v4, v2, :cond_3

    iget-boolean v4, p0, Landroid/support/v4/app/c;->t:Z

    if-nez v4, :cond_3

    .line 1186
    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->g(Landroid/support/v4/app/Fragment;)V

    move v4, v3

    move v5, v3

    .line 1187
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1190
    :cond_3
    if-eqz v6, :cond_10

    if-eqz v8, :cond_4

    iget-object v0, v8, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_10

    .line 1192
    :cond_4
    invoke-static {v8, p2, v9}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/q$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/q$a;

    move-result-object v0

    .line 1193
    iput-object v1, v0, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    .line 1194
    iput-boolean p3, v0, Landroid/support/v4/app/q$a;->e:Z

    .line 1195
    iput-object p0, v0, Landroid/support/v4/app/q$a;->f:Landroid/support/v4/app/c;

    .line 1198
    :goto_4
    if-nez p4, :cond_0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    if-ne v2, v1, :cond_0

    .line 1200
    iput-object v10, v0, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 1123
    :cond_5
    iget v0, p1, Landroid/support/v4/app/c$a;->a:I

    goto :goto_1

    .line 1130
    :pswitch_1
    if-eqz p4, :cond_7

    .line 1131
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    .line 1136
    goto :goto_2

    :cond_6
    move v0, v3

    .line 1131
    goto :goto_5

    .line 1133
    :cond_7
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    goto :goto_5

    .line 1139
    :pswitch_2
    if-eqz p4, :cond_8

    .line 1140
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    :goto_6
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    .line 1145
    goto :goto_2

    .line 1142
    :cond_8
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v3

    goto :goto_6

    .line 1147
    :pswitch_3
    if-eqz p4, :cond_b

    .line 1148
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_7
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    .line 1153
    goto/16 :goto_2

    :cond_a
    move v0, v3

    .line 1148
    goto :goto_7

    .line 1150
    :cond_b
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v3

    goto :goto_7

    .line 1156
    :pswitch_4
    if-eqz p4, :cond_e

    .line 1157
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1158
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget v0, v1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_d

    move v0, v2

    :goto_8
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    .line 1163
    goto/16 :goto_2

    :cond_d
    move v0, v3

    .line 1158
    goto :goto_8

    .line 1161
    :cond_e
    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_8

    :cond_f
    move v0, v3

    goto :goto_8

    :cond_10
    move-object v0, v8

    goto/16 :goto_4

    :cond_11
    move-object v8, v0

    goto/16 :goto_3

    .line 1128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/c;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/q$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1068
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1069
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 1070
    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/c$a;Landroid/util/SparseArray;ZZ)V

    .line 1068
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1072
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/app/m;ILandroid/support/v4/app/q$a;Landroid/view/View;Landroid/support/v4/g/a;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m;",
            "I",
            "Landroid/support/v4/app/q$a;",
            "Landroid/view/View;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v3, 0x0

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/m;->n:Landroid/support/v4/app/i;

    invoke-virtual {v2}, Landroid/support/v4/app/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/m;->n:Landroid/support/v4/app/i;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/v4/app/i;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v2

    .line 214
    :cond_0
    if-nez v3, :cond_2

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    .line 218
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 219
    move-object/from16 v0, v17

    invoke-static {v0, v15}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_1

    .line 223
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/q$a;->b:Z

    move/from16 v16, v0

    .line 224
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/support/v4/app/q$a;->e:Z

    .line 226
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 229
    move-object/from16 v0, v17

    invoke-static {v2, v0, v4}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    .line 231
    invoke-static/range {v2 .. v10}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 235
    if-nez v9, :cond_3

    if-nez v14, :cond_3

    if-eqz v10, :cond_1

    .line 240
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v2, v10, v0, v7, v1}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    .line 243
    move-object/from16 v0, p3

    invoke-static {v2, v9, v15, v8, v0}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v18

    .line 246
    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/support/v4/app/q;->b(Ljava/util/ArrayList;I)V

    move-object v11, v2

    move-object v12, v9

    move-object v13, v10

    .line 248
    invoke-static/range {v11 .. v16}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    .line 251
    if-eqz v16, :cond_1

    .line 252
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v2, v10, v0, v1}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 254
    invoke-virtual {v2, v8}, Landroid/support/v4/app/s;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v15, v2

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v8

    .line 255
    invoke-virtual/range {v15 .. v22}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 258
    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/s;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v5, v2

    move-object v6, v3

    move-object v9, v4

    move-object/from16 v10, p4

    .line 259
    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/s;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 261
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/support/v4/app/q;->b(Ljava/util/ArrayList;I)V

    .line 262
    invoke-virtual {v2, v14, v7, v8}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method static a(Landroid/support/v4/app/m;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 103
    iget v0, p0, Landroid/support/v4/app/m;->l:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 139
    :cond_0
    return-void

    .line 107
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move v2, p3

    .line 109
    :goto_0
    if-ge v2, p4, :cond_3

    .line 110
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 111
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-static {v0, v3, p5}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    .line 109
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v0, v3, p5}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/m;->m:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_0

    .line 123
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 124
    invoke-static {v5, p1, p2, p3, p4}, Landroid/support/v4/app/q;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/g/a;

    move-result-object v6

    .line 128
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/q$a;

    .line 130
    if-eqz p5, :cond_4

    .line 131
    invoke-static {p0, v5, v0, v2, v6}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/m;ILandroid/support/v4/app/q$a;Landroid/view/View;Landroid/support/v4/g/a;)V

    .line 122
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 134
    :cond_4
    invoke-static {p0, v5, v0, v2, v6}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/m;ILandroid/support/v4/app/q$a;Landroid/view/View;Landroid/support/v4/g/a;)V

    goto :goto_3
.end method

.method private static a(Landroid/support/v4/app/s;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Landroid/support/v4/app/q$2;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/app/q$2;-><init>(Ljava/lang/Object;Landroid/support/v4/app/s;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    .line 413
    return-void
.end method

.method private static a(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 279
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 278
    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v4/app/s;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 280
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 281
    new-instance v1, Landroid/support/v4/app/q$1;

    invoke-direct {v1, p3}, Landroid/support/v4/app/q$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    .line 288
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/app/s;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/g/a;ZLandroid/support/v4/app/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 930
    iget-object v0, p5, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p5, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    .line 931
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    if-eqz p4, :cond_1

    iget-object v0, p5, Landroid/support/v4/app/c;->s:Ljava/util/ArrayList;

    .line 933
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 935
    :goto_0
    invoke-virtual {p3, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 936
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 938
    if-eqz p2, :cond_0

    .line 939
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 942
    :cond_0
    return-void

    .line 933
    :cond_1
    iget-object v0, p5, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 952
    invoke-virtual {p0, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 953
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0, v1}, Landroid/support/v4/g/a;->d(I)Ljava/lang/Object;

    .line 951
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 957
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1}, Landroid/support/v4/app/q;->b(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/support/v4/g/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    invoke-virtual {p1}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 645
    invoke-virtual {p1, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 646
    invoke-static {v0}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 650
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/v4/app/s;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 468
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 472
    :goto_1
    return v0

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/q$a;",
            ")",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 781
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/g/a;->clear()V

    .line 782
    const/4 v0, 0x0

    .line 815
    :goto_0
    return-object v0

    .line 784
    :cond_1
    iget-object v0, p3, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    .line 785
    new-instance v3, Landroid/support/v4/g/a;

    invoke-direct {v3}, Landroid/support/v4/g/a;-><init>()V

    .line 786
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/s;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 790
    iget-object v2, p3, Landroid/support/v4/app/q$a;->f:Landroid/support/v4/app/c;

    .line 791
    iget-boolean v1, p3, Landroid/support/v4/app/q$a;->e:Z

    if-eqz v1, :cond_3

    .line 792
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 793
    iget-object v0, v2, Landroid/support/v4/app/c;->s:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v1

    .line 799
    :goto_1
    invoke-virtual {v3, v2}, Landroid/support/v4/g/a;->a(Ljava/util/Collection;)Z

    .line 800
    if-eqz v0, :cond_5

    .line 801
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/ag;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 802
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_6

    .line 803
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 804
    invoke-virtual {v3, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 805
    if-nez v1, :cond_4

    .line 806
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_2
    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    .line 795
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 796
    iget-object v0, v2, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    .line 807
    :cond_4
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 808
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 809
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 813
    :cond_5
    invoke-virtual {v3}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->a(Ljava/util/Collection;)Z

    :cond_6
    move-object v0, v3

    .line 815
    goto :goto_0
.end method

.method private static b(Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/q$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 906
    iget-object v0, p1, Landroid/support/v4/app/q$a;->c:Landroid/support/v4/app/c;

    .line 907
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    .line 909
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    if-eqz p3, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    .line 911
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 913
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 915
    :goto_1
    return-object v0

    .line 911
    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/c;->s:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 915
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 519
    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 519
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Landroid/support/v4/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/q$a;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 687
    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    .line 688
    move-object/from16 v0, p4

    iget-object v13, v0, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    .line 690
    if-eqz v12, :cond_0

    if-nez v13, :cond_1

    .line 691
    :cond_0
    const/4 v4, 0x0

    .line 760
    :goto_0
    return-object v4

    .line 694
    :cond_1
    move-object/from16 v0, p4

    iget-boolean v14, v0, Landroid/support/v4/app/q$a;->b:Z

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 698
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v3, v2}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;

    move-result-object v6

    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 702
    const/4 v4, 0x0

    .line 707
    :goto_2
    if-nez p7, :cond_4

    if-nez p8, :cond_4

    if-nez v4, :cond_4

    .line 709
    const/4 v4, 0x0

    goto :goto_0

    .line 696
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 704
    :cond_3
    invoke-virtual {v6}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v3

    goto :goto_2

    .line 712
    :cond_4
    const/4 v3, 0x1

    invoke-static {v12, v13, v14, v6, v3}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;Z)V

    .line 715
    if-eqz v4, :cond_6

    .line 716
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 719
    move-object/from16 v0, p4

    iget-boolean v7, v0, Landroid/support/v4/app/q$a;->e:Z

    .line 720
    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/support/v4/app/q$a;->f:Landroid/support/v4/app/c;

    move-object/from16 v3, p0

    move-object/from16 v5, p8

    .line 721
    invoke-static/range {v3 .. v8}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/g/a;ZLandroid/support/v4/app/c;)V

    .line 723
    if-eqz p7, :cond_5

    .line 724
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 732
    :cond_5
    :goto_3
    new-instance v5, Landroid/support/v4/app/q$4;

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object v8, v4

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    invoke-direct/range {v5 .. v17}, Landroid/support/v4/app/q$4;-><init>(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    goto :goto_0

    .line 727
    :cond_6
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private static b(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    if-eqz p1, :cond_2

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 997
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 998
    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/s;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1001
    :cond_0
    if-eqz p3, :cond_1

    .line 1002
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1004
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1005
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1009
    :cond_2
    return-object v0
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/g/a;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 972
    if-eqz p2, :cond_0

    .line 973
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v0

    move-object v2, v0

    .line 975
    :goto_0
    if-eqz v2, :cond_3

    .line 976
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 977
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 978
    if-nez p3, :cond_1

    move v0, v1

    .line 979
    :goto_1
    if-ge v1, v0, :cond_2

    .line 980
    invoke-virtual {p3, v1}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-virtual {p3, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 974
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 978
    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/g/a;->size()I

    move-result v0

    goto :goto_1

    .line 983
    :cond_2
    if-eqz p4, :cond_4

    .line 984
    invoke-virtual {v2, v4, v3, v6}, Landroid/support/v4/app/ag;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 989
    :cond_3
    :goto_2
    return-void

    .line 986
    :cond_4
    invoke-virtual {v2, v4, v3, v6}, Landroid/support/v4/app/ag;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/c;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/q$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->n:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    :cond_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1088
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1089
    iget-object v0, p0, Landroid/support/v4/app/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    .line 1090
    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/c$a;Landroid/util/SparseArray;ZZ)V

    .line 1088
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/app/m;ILandroid/support/v4/app/q$a;Landroid/view/View;Landroid/support/v4/g/a;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/m;",
            "I",
            "Landroid/support/v4/app/q$a;",
            "Landroid/view/View;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/m;->n:Landroid/support/v4/app/i;

    invoke-virtual {v1}, Landroid/support/v4/app/i;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/app/m;->n:Landroid/support/v4/app/i;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/i;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    .line 312
    :cond_0
    if-nez v2, :cond_2

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    .line 316
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/support/v4/app/q$a;->d:Landroid/support/v4/app/Fragment;

    .line 317
    invoke-static {v10, v13}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_1

    .line 321
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/support/v4/app/q$a;->b:Z

    .line 322
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/support/v4/app/q$a;->e:Z

    .line 324
    invoke-static {v1, v13, v3}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 325
    invoke-static {v1, v10, v4}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 327
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 330
    invoke-static/range {v1 .. v9}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/g/a;Landroid/support/v4/app/q$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 334
    if-nez v8, :cond_3

    if-nez v12, :cond_3

    if-eqz v9, :cond_1

    .line 339
    :cond_3
    move-object/from16 v0, p3

    invoke-static {v1, v9, v10, v6, v0}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/s;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v19

    .line 342
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 343
    :cond_4
    const/4 v11, 0x0

    .line 348
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v1, v8, v0}, Landroid/support/v4/app/s;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 350
    move-object/from16 v0, p2

    iget-boolean v14, v0, Landroid/support/v4/app/q$a;->b:Z

    move-object v9, v1

    move-object v10, v8

    invoke-static/range {v9 .. v14}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 353
    if-eqz v15, :cond_1

    .line 354
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    move-object/from16 v16, v8

    move-object/from16 v18, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v7

    .line 355
    invoke-virtual/range {v14 .. v21}, Landroid/support/v4/app/s;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v13

    move-object/from16 v23, p3

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v17

    move-object/from16 v27, v11

    move-object/from16 v28, v19

    .line 358
    invoke-static/range {v20 .. v28}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/s;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 360
    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v7, v0}, Landroid/support/v4/app/s;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 362
    invoke-virtual {v1, v2, v15}, Landroid/support/v4/app/s;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 363
    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v7, v0}, Landroid/support/v4/app/s;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    move-object v11, v9

    goto :goto_1
.end method

.method private static b(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1016
    if-nez p0, :cond_1

    .line 1023
    :cond_0
    return-void

    .line 1019
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 1020
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1021
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static c(Landroid/support/v4/app/s;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/q$a;)Landroid/support/v4/g/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/s;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/q$a;",
            ")",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p3, Landroid/support/v4/app/q$a;->a:Landroid/support/v4/app/Fragment;

    .line 836
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 837
    invoke-virtual {p1}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    .line 838
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/g/a;->clear()V

    .line 839
    const/4 v0, 0x0

    .line 878
    :goto_0
    return-object v0

    .line 841
    :cond_1
    new-instance v2, Landroid/support/v4/g/a;

    invoke-direct {v2}, Landroid/support/v4/g/a;-><init>()V

    .line 842
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/s;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 846
    iget-object v3, p3, Landroid/support/v4/app/q$a;->c:Landroid/support/v4/app/c;

    .line 847
    iget-boolean v1, p3, Landroid/support/v4/app/q$a;->b:Z

    if-eqz v1, :cond_4

    .line 848
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 849
    iget-object v0, v3, Landroid/support/v4/app/c;->r:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v1

    .line 855
    :goto_1
    if-eqz v4, :cond_2

    .line 856
    invoke-virtual {v2, v4}, Landroid/support/v4/g/a;->a(Ljava/util/Collection;)Z

    .line 858
    :cond_2
    if-eqz v0, :cond_6

    .line 859
    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/ag;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 860
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_7

    .line 861
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-virtual {v2, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 863
    if-nez v1, :cond_5

    .line 864
    invoke-static {p1, v0}, Landroid/support/v4/app/q;->a(Landroid/support/v4/g/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_3

    .line 866
    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_3
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 851
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 852
    iget-object v0, v3, Landroid/support/v4/app/c;->s:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v1

    goto :goto_1

    .line 868
    :cond_5
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 869
    invoke-static {p1, v0}, Landroid/support/v4/app/q;->a(Landroid/support/v4/g/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_3

    .line 871
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 876
    :cond_6
    invoke-static {p1, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/g/a;Landroid/support/v4/g/a;)V

    :cond_7
    move-object v0, v2

    .line 878
    goto :goto_0
.end method
