.class public La/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/a/a;->a:I

    .line 113
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, La/a/a/a/a/a;->a:I

    return v0
.end method

.method public a(BB)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 535
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-object p0

    .line 538
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(CC)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 519
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 523
    :goto_0
    return-object p0

    .line 522
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(DD)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 556
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 560
    :goto_0
    return-object p0

    .line 559
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a(FF)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 577
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 581
    :goto_0
    return-object p0

    .line 580
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a(II)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 487
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 491
    :goto_0
    return-object p0

    .line 490
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JJ)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 471
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-object p0

    .line 474
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    .prologue
    .line 407
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-object p0

    .line 410
    :cond_1
    if-eq p1, p2, :cond_0

    .line 413
    if-nez p1, :cond_2

    .line 414
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 417
    :cond_2
    if-nez p2, :cond_3

    .line 418
    const/4 v0, 0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 421
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 425
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 426
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([J[J)La/a/a/a/a/a;

    goto :goto_0

    .line 427
    :cond_4
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 428
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([I[I)La/a/a/a/a/a;

    goto :goto_0

    .line 429
    :cond_5
    instance-of v0, p1, [S

    if-eqz v0, :cond_6

    .line 430
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([S[S)La/a/a/a/a/a;

    goto :goto_0

    .line 431
    :cond_6
    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    .line 432
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([C[C)La/a/a/a/a/a;

    goto :goto_0

    .line 433
    :cond_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    .line 434
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([B[B)La/a/a/a/a/a;

    goto :goto_0

    .line 435
    :cond_8
    instance-of v0, p1, [D

    if-eqz v0, :cond_9

    .line 436
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([D[D)La/a/a/a/a/a;

    goto :goto_0

    .line 437
    :cond_9
    instance-of v0, p1, [F

    if-eqz v0, :cond_a

    .line 438
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([F[F)La/a/a/a/a/a;

    goto/16 :goto_0

    .line 439
    :cond_a
    instance-of v0, p1, [Z

    if-eqz v0, :cond_b

    .line 440
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/a;->a([Z[Z)La/a/a/a/a/a;

    goto/16 :goto_0

    .line 444
    :cond_b
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/a;->a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    goto/16 :goto_0

    .line 448
    :cond_c
    if-nez p3, :cond_d

    .line 450
    check-cast p1, Ljava/lang/Comparable;

    .line 451
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0

    .line 455
    :cond_d
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto/16 :goto_0
.end method

.method public a(SS)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 503
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-object p0

    .line 506
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ZZ)La/a/a/a/a/a;
    .locals 1

    .prologue
    .line 593
    iget v0, p0, La/a/a/a/a/a;->a:I

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-object p0

    .line 596
    :cond_1
    if-eq p1, p2, :cond_0

    .line 599
    if-nez p1, :cond_2

    .line 600
    const/4 v0, -0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 602
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0
.end method

.method public a([B[B)La/a/a/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 856
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-object p0

    .line 859
    :cond_1
    if-eq p1, p2, :cond_0

    .line 862
    if-nez p1, :cond_2

    .line 863
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 866
    :cond_2
    if-nez p2, :cond_3

    .line 867
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 870
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 871
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 874
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 875
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(BB)La/a/a/a/a/a;

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([C[C)La/a/a/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 816
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-object p0

    .line 819
    :cond_1
    if-eq p1, p2, :cond_0

    .line 822
    if-nez p1, :cond_2

    .line 823
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 826
    :cond_2
    if-nez p2, :cond_3

    .line 827
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 830
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 831
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 834
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 835
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(CC)La/a/a/a/a/a;

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([D[D)La/a/a/a/a/a;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 896
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-object p0

    .line 899
    :cond_1
    if-eq p1, p2, :cond_0

    .line 902
    if-nez p1, :cond_2

    .line 903
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 906
    :cond_2
    if-nez p2, :cond_3

    .line 907
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 910
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 911
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 914
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 915
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/a;->a(DD)La/a/a/a/a/a;

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([F[F)La/a/a/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 936
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-object p0

    .line 939
    :cond_1
    if-eq p1, p2, :cond_0

    .line 942
    if-nez p1, :cond_2

    .line 943
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 946
    :cond_2
    if-nez p2, :cond_3

    .line 947
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 950
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 951
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 954
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 955
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(FF)La/a/a/a/a/a;

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([I[I)La/a/a/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 736
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-object p0

    .line 739
    :cond_1
    if-eq p1, p2, :cond_0

    .line 742
    if-nez p1, :cond_2

    .line 743
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 746
    :cond_2
    if-nez p2, :cond_3

    .line 747
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 750
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 751
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 754
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 755
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(II)La/a/a/a/a/a;

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([J[J)La/a/a/a/a/a;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 696
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-object p0

    .line 699
    :cond_1
    if-eq p1, p2, :cond_0

    .line 702
    if-nez p1, :cond_2

    .line 703
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 706
    :cond_2
    if-nez p2, :cond_3

    .line 707
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 710
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 711
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 714
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 715
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/a;->a(JJ)La/a/a/a/a/a;

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "La/a/a/a/a/a;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 656
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-object p0

    .line 659
    :cond_1
    if-eq p1, p2, :cond_0

    .line 662
    if-nez p1, :cond_2

    .line 663
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 666
    :cond_2
    if-nez p2, :cond_3

    .line 667
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 670
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 671
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 674
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 675
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, La/a/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)La/a/a/a/a/a;

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([S[S)La/a/a/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 776
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-object p0

    .line 779
    :cond_1
    if-eq p1, p2, :cond_0

    .line 782
    if-nez p1, :cond_2

    .line 783
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 786
    :cond_2
    if-nez p2, :cond_3

    .line 787
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 790
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 791
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 794
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 795
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(SS)La/a/a/a/a/a;

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a([Z[Z)La/a/a/a/a/a;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 976
    iget v2, p0, La/a/a/a/a/a;->a:I

    if-eqz v2, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-object p0

    .line 979
    :cond_1
    if-eq p1, p2, :cond_0

    .line 982
    if-nez p1, :cond_2

    .line 983
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 986
    :cond_2
    if-nez p2, :cond_3

    .line 987
    iput v1, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    .line 990
    :cond_3
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_5

    .line 991
    array-length v2, p1

    array-length v3, p2

    if-ge v2, v3, :cond_4

    :goto_1
    iput v0, p0, La/a/a/a/a/a;->a:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 994
    :cond_5
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, La/a/a/a/a/a;->a:I

    if-nez v1, :cond_0

    .line 995
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/a;->a(ZZ)La/a/a/a/a/a;

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
