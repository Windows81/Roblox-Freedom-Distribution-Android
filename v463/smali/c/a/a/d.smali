.class public final Lc/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/d$b;,
        Lc/a/a/d$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static final p:Ld/r;


# instance fields
.field private final c:Lc/a/e/a;

.field private d:J

.field private final e:I

.field private f:J

.field private g:Ld/d;

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lc/a/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lc/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/a/a/d;->b:Z

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/a/a/d;->a:Ljava/util/regex/Pattern;

    .line 825
    new-instance v0, Lc/a/a/d$1;

    invoke-direct {v0}, Lc/a/a/d$1;-><init>()V

    sput-object v0, Lc/a/a/d;->p:Ld/r;

    return-void
.end method

.method static synthetic a(Lc/a/a/d;)I
    .locals 0

    .line 88
    iget p0, p0, Lc/a/a/d;->e:I

    return p0
.end method

.method private declared-synchronized a(Lc/a/a/d$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 530
    :try_start_0
    invoke-static {p1}, Lc/a/a/d$a;->a(Lc/a/a/d$a;)Lc/a/a/d$b;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 536
    invoke-static {v0}, Lc/a/a/d$b;->f(Lc/a/a/d$b;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 537
    :goto_0
    iget v3, p0, Lc/a/a/d;->e:I

    if-ge v2, v3, :cond_2

    .line 538
    invoke-static {p1}, Lc/a/a/d$a;->b(Lc/a/a/d$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lc/a/a/d;->c:Lc/a/e/a;

    invoke-static {v0}, Lc/a/a/d$b;->d(Lc/a/a/d$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lc/a/e/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 543
    invoke-virtual {p1}, Lc/a/a/d$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lc/a/a/d$a;->b()V

    .line 540
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 549
    :cond_2
    :goto_1
    iget p1, p0, Lc/a/a/d;->e:I

    if-ge v1, p1, :cond_5

    .line 550
    invoke-static {v0}, Lc/a/a/d$b;->d(Lc/a/a/d$b;)[Ljava/io/File;

    move-result-object p1

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 552
    iget-object v2, p0, Lc/a/a/d;->c:Lc/a/e/a;

    invoke-interface {v2, p1}, Lc/a/e/a;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 553
    invoke-static {v0}, Lc/a/a/d$b;->c(Lc/a/a/d$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    .line 554
    iget-object v3, p0, Lc/a/a/d;->c:Lc/a/e/a;

    invoke-interface {v3, p1, v2}, Lc/a/e/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 555
    invoke-static {v0}, Lc/a/a/d$b;->b(Lc/a/a/d$b;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 556
    iget-object p1, p0, Lc/a/a/d;->c:Lc/a/e/a;

    invoke-interface {p1, v2}, Lc/a/e/a;->c(Ljava/io/File;)J

    move-result-wide v5

    .line 557
    invoke-static {v0}, Lc/a/a/d$b;->b(Lc/a/a/d$b;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 558
    iget-wide v7, p0, Lc/a/a/d;->f:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lc/a/a/d;->f:J

    goto :goto_2

    .line 561
    :cond_3
    iget-object v2, p0, Lc/a/a/d;->c:Lc/a/e/a;

    invoke-interface {v2, p1}, Lc/a/e/a;->a(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 565
    :cond_5
    iget p1, p0, Lc/a/a/d;->i:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lc/a/a/d;->i:I

    const/4 p1, 0x0

    .line 566
    invoke-static {v0, p1}, Lc/a/a/d$b;->a(Lc/a/a/d$b;Lc/a/a/d$a;)Lc/a/a/d$a;

    .line 567
    invoke-static {v0}, Lc/a/a/d$b;->f(Lc/a/a/d$b;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 568
    invoke-static {v0, v1}, Lc/a/a/d$b;->a(Lc/a/a/d$b;Z)Z

    .line 569
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object p1

    invoke-interface {p1, v3}, Ld/d;->i(I)Ld/d;

    .line 570
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    invoke-static {v0}, Lc/a/a/d$b;->e(Lc/a/a/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    .line 571
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    invoke-virtual {v0, p1}, Lc/a/a/d$b;->a(Ld/d;)V

    .line 572
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    invoke-interface {p1, v2}, Ld/d;->i(I)Ld/d;

    if-eqz p2, :cond_7

    .line 574
    iget-wide p1, p0, Lc/a/a/d;->m:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lc/a/a/d;->m:J

    invoke-static {v0, p1, p2}, Lc/a/a/d$b;->a(Lc/a/a/d$b;J)J

    goto :goto_3

    .line 577
    :cond_6
    iget-object p1, p0, Lc/a/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lc/a/a/d$b;->e(Lc/a/a/d$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object p1

    invoke-interface {p1, v3}, Ld/d;->i(I)Ld/d;

    .line 579
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    invoke-static {v0}, Lc/a/a/d$b;->e(Lc/a/a/d$b;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    .line 580
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    invoke-interface {p1, v2}, Ld/d;->i(I)Ld/d;

    .line 582
    :cond_7
    :goto_3
    iget-object p1, p0, Lc/a/a/d;->g:Ld/d;

    invoke-interface {p1}, Ld/d;->flush()V

    .line 584
    iget-wide p1, p0, Lc/a/a/d;->f:J

    iget-wide v0, p0, Lc/a/a/d;->d:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lc/a/a/d;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 585
    :cond_8
    iget-object p1, p0, Lc/a/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lc/a/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :cond_9
    monitor-exit p0

    return-void

    .line 532
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method static synthetic a(Lc/a/a/d;Lc/a/a/d$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Lc/a/a/d;->a(Lc/a/a/d$a;Z)V

    return-void
.end method

.method private a(Lc/a/a/d$b;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    invoke-static {p1}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    invoke-static {p1}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d$a;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 622
    :goto_0
    iget v1, p0, Lc/a/a/d;->e:I

    if-ge v0, v1, :cond_1

    .line 623
    iget-object v1, p0, Lc/a/a/d;->c:Lc/a/e/a;

    invoke-static {p1}, Lc/a/a/d$b;->c(Lc/a/a/d$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lc/a/e/a;->a(Ljava/io/File;)V

    .line 624
    iget-wide v1, p0, Lc/a/a/d;->f:J

    invoke-static {p1}, Lc/a/a/d$b;->b(Lc/a/a/d$b;)[J

    move-result-object v3

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lc/a/a/d;->f:J

    .line 625
    invoke-static {p1}, Lc/a/a/d$b;->b(Lc/a/a/d$b;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    iget v0, p0, Lc/a/a/d;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/a/d;->i:I

    .line 629
    iget-object v0, p0, Lc/a/a/d;->g:Ld/d;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Ld/d;->i(I)Ld/d;

    move-result-object v0

    invoke-static {p1}, Lc/a/a/d$b;->e(Lc/a/a/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ld/d;->i(I)Ld/d;

    .line 630
    iget-object v0, p0, Lc/a/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lc/a/a/d$b;->e(Lc/a/a/d$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lc/a/a/d;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 633
    iget-object p1, p0, Lc/a/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lc/a/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method static synthetic b(Lc/a/a/d;)Lc/a/e/a;
    .locals 0

    .line 88
    iget-object p0, p0, Lc/a/a/d;->c:Lc/a/e/a;

    return-object p0
.end method

.method private b()Z
    .locals 2

    .line 595
    iget v0, p0, Lc/a/a/d;->i:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lc/a/a/d;->h:Ljava/util/LinkedHashMap;

    .line 596
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lc/a/a/d;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 648
    monitor-exit p0

    return-void

    .line 646
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    :goto_0
    iget-wide v0, p0, Lc/a/a/d;->f:J

    iget-wide v2, p0, Lc/a/a/d;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 679
    iget-object v0, p0, Lc/a/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d$b;

    .line 680
    invoke-direct {p0, v0}, Lc/a/a/d;->a(Lc/a/a/d$b;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lc/a/a/d;->l:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 641
    :try_start_0
    iget-boolean v0, p0, Lc/a/a/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 661
    :try_start_0
    iget-boolean v0, p0, Lc/a/a/d;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lc/a/a/d;->k:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 666
    :cond_0
    iget-object v0, p0, Lc/a/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lc/a/a/d$b;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/d$b;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 667
    invoke-static {v4}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 668
    invoke-static {v4}, Lc/a/a/d$b;->a(Lc/a/a/d$b;)Lc/a/a/d$a;

    move-result-object v4

    invoke-virtual {v4}, Lc/a/a/d$a;->b()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    :cond_2
    invoke-direct {p0}, Lc/a/a/d;->d()V

    .line 672
    iget-object v0, p0, Lc/a/a/d;->g:Ld/d;

    invoke-interface {v0}, Ld/d;->close()V

    const/4 v0, 0x0

    .line 673
    iput-object v0, p0, Lc/a/a/d;->g:Ld/d;

    .line 674
    iput-boolean v1, p0, Lc/a/a/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    .line 662
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Lc/a/a/d;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 652
    :try_start_0
    iget-boolean v0, p0, Lc/a/a/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 654
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lc/a/a/d;->c()V

    .line 655
    invoke-direct {p0}, Lc/a/a/d;->d()V

    .line 656
    iget-object v0, p0, Lc/a/a/d;->g:Ld/d;

    invoke-interface {v0}, Ld/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
