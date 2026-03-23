.class final Lc/a/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lc/a/c/e;

.field private final c:Ld/c;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 468
    const-class v0, Lc/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/a/c/e$a;->a:Z

    return-void
.end method

.method constructor <init>(Lc/a/c/e;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    iput-object p1, p0, Lc/a/c/e$a;->c:Ld/c;

    return-void
.end method

.method private a(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/c/e$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 501
    :goto_0
    :try_start_1
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    iget-wide v1, v1, Lc/a/c/e;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-boolean v1, p0, Lc/a/c/e$a;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc/a/c/e$a;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->d(Lc/a/c/e;)Lc/a/c/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 502
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->e(Lc/a/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 505
    :cond_0
    :try_start_2
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/c/e$c;->b()V

    .line 508
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->h(Lc/a/c/e;)V

    .line 509
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    iget-wide v1, v1, Lc/a/c/e;->b:J

    iget-object v3, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {v3}, Ld/c;->b()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 510
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    iget-wide v2, v1, Lc/a/c/e;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lc/a/c/e;->b:J

    .line 511
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 513
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/c/e$c;->c()V

    .line 515
    :try_start_3
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v5

    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->b(Lc/a/c/e;)I

    move-result v6

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {p1}, Ld/c;->b()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual/range {v5 .. v10}, Lc/a/c/d;->a(IZLd/c;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 517
    iget-object p1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {p1}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object p1

    invoke-virtual {p1}, Lc/a/c/e$c;->b()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/c/e$c;->b()V

    throw p1

    :catchall_1
    move-exception p1

    .line 505
    :try_start_4
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/c/e$c;->b()V

    throw p1

    :catchall_2
    move-exception p1

    .line 511
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lc/a/c/e$a;)Z
    .locals 0

    .line 468
    iget-boolean p0, p0, Lc/a/c/e$a;->e:Z

    return p0
.end method

.method static synthetic a(Lc/a/c/e$a;Z)Z
    .locals 0

    .line 468
    iput-boolean p1, p0, Lc/a/c/e$a;->e:Z

    return p1
.end method

.method static synthetic b(Lc/a/c/e$a;)Z
    .locals 0

    .line 468
    iget-boolean p0, p0, Lc/a/c/e$a;->d:Z

    return p0
.end method


# virtual methods
.method public a()Ld/t;
    .locals 1

    .line 533
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->g(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v0

    return-object v0
.end method

.method public a_(Ld/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    sget-boolean v0, Lc/a/c/e$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 486
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {v0, p1, p2, p3}, Ld/c;->a_(Ld/c;J)V

    .line 487
    :goto_1
    iget-object p1, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {p1}, Ld/c;->b()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    .line 488
    invoke-direct {p0, p1}, Lc/a/c/e$a;->a(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    sget-boolean v0, Lc/a/c/e$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 538
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-boolean v1, p0, Lc/a/c/e$a;->d:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 540
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 541
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    iget-object v0, v0, Lc/a/c/e;->c:Lc/a/c/e$a;

    iget-boolean v0, v0, Lc/a/c/e$a;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 543
    iget-object v0, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 544
    :goto_1
    iget-object v0, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 545
    invoke-direct {p0, v1}, Lc/a/c/e$a;->a(Z)V

    goto :goto_1

    .line 549
    :cond_3
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v2

    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->b(Lc/a/c/e;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lc/a/c/d;->a(IZLd/c;J)V

    .line 552
    :cond_4
    iget-object v2, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    monitor-enter v2

    .line 553
    :try_start_1
    iput-boolean v1, p0, Lc/a/c/e$a;->d:Z

    .line 554
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/c/d;->c()V

    .line 556
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->f(Lc/a/c/e;)V

    return-void

    :catchall_0
    move-exception v0

    .line 554
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 540
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    sget-boolean v0, Lc/a/c/e$a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->h(Lc/a/c/e;)V

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_1
    iget-object v0, p0, Lc/a/c/e$a;->c:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .line 527
    invoke-direct {p0, v0}, Lc/a/c/e$a;->a(Z)V

    .line 528
    iget-object v0, p0, Lc/a/c/e$a;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/c/d;->c()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
