.class final Lc/a/c/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lc/a/c/e;

.field private final c:Ld/c;

.field private final d:Ld/c;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    const-class v0, Lc/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/a/c/e$b;->a:Z

    return-void
.end method

.method private constructor <init>(Lc/a/c/e;J)V
    .locals 0

    .line 332
    iput-object p1, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    iput-object p1, p0, Lc/a/c/e$b;->c:Ld/c;

    .line 318
    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    iput-object p1, p0, Lc/a/c/e$b;->d:Ld/c;

    .line 333
    iput-wide p2, p0, Lc/a/c/e$b;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lc/a/c/e;JLc/a/c/e$1;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lc/a/c/e$b;-><init>(Lc/a/c/e;J)V

    return-void
.end method

.method static synthetic a(Lc/a/c/e$b;)Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lc/a/c/e$b;->g:Z

    return p0
.end method

.method static synthetic a(Lc/a/c/e$b;Z)Z
    .locals 0

    .line 313
    iput-boolean p1, p0, Lc/a/c/e$b;->g:Z

    return p1
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->c(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/c/e$c;->c()V

    .line 375
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc/a/c/e$b;->d:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lc/a/c/e$b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/a/c/e$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->d(Lc/a/c/e;)Lc/a/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->e(Lc/a/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->c(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/c/e$c;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->c(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/c/e$c;->b()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static synthetic b(Lc/a/c/e$b;)Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lc/a/c/e$b;->f:Z

    return p0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Lc/a/c/e$b;->f:Z

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->d(Lc/a/c/e;)Lc/a/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    new-instance v0, Lc/a/c/p;

    iget-object v1, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v1}, Lc/a/c/e;->d(Lc/a/c/e;)Lc/a/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/c/p;-><init>(Lc/a/c/a;)V

    throw v0

    .line 438
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ld/c;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 341
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    monitor-enter v2

    .line 342
    :try_start_0
    invoke-direct {p0}, Lc/a/c/e$b;->b()V

    .line 343
    invoke-direct {p0}, Lc/a/c/e$b;->c()V

    .line 344
    iget-object v3, p0, Lc/a/c/e$b;->d:Ld/c;

    invoke-virtual {v3}, Ld/c;->b()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    .line 347
    :cond_0
    iget-object v3, p0, Lc/a/c/e$b;->d:Ld/c;

    iget-object v4, p0, Lc/a/c/e$b;->d:Ld/c;

    invoke-virtual {v4}, Ld/c;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Ld/c;->a(Ld/c;J)J

    move-result-wide p1

    .line 350
    iget-object p3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    iget-wide v3, p3, Lc/a/c/e;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lc/a/c/e;->a:J

    .line 351
    iget-object p3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    iget-wide v3, p3, Lc/a/c/e;->a:J

    iget-object p3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    .line 352
    invoke-static {p3}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object p3

    iget-object p3, p3, Lc/a/c/d;->e:Lc/a/c/n;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lc/a/c/n;->f(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_1

    .line 353
    iget-object p3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {p3}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object p3

    iget-object v3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v3}, Lc/a/c/e;->b(Lc/a/c/e;)I

    move-result v3

    iget-object v4, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    iget-wide v6, v4, Lc/a/c/e;->a:J

    invoke-virtual {p3, v3, v6, v7}, Lc/a/c/d;->a(IJ)V

    .line 354
    iget-object p3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    iput-wide v0, p3, Lc/a/c/e;->a:J

    .line 356
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    iget-object p3, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {p3}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object p3

    monitor-enter p3

    .line 360
    :try_start_1
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v2}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v2

    iget-wide v3, v2, Lc/a/c/d;->c:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lc/a/c/d;->c:J

    .line 361
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v2}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v2

    iget-wide v2, v2, Lc/a/c/d;->c:J

    iget-object v4, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    .line 362
    invoke-static {v4}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v4

    iget-object v4, v4, Lc/a/c/d;->e:Lc/a/c/n;

    invoke-virtual {v4, v5}, Lc/a/c/n;->f(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 363
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v2}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v4}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v4

    iget-wide v4, v4, Lc/a/c/d;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lc/a/c/d;->a(IJ)V

    .line 364
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v2}, Lc/a/c/e;->a(Lc/a/c/e;)Lc/a/c/d;

    move-result-object v2

    iput-wide v0, v2, Lc/a/c/d;->c:J

    .line 366
    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 356
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 338
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ld/t;
    .locals 1

    .line 424
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->c(Lc/a/c/e;)Lc/a/c/e$c;

    move-result-object v0

    return-object v0
.end method

.method a(Ld/e;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    sget-boolean v0, Lc/a/c/e$b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    .line 389
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    monitor-enter v2

    .line 390
    :try_start_0
    iget-boolean v3, p0, Lc/a/c/e$b;->g:Z

    .line 391
    iget-object v4, p0, Lc/a/c/e$b;->d:Ld/c;

    invoke-virtual {v4}, Ld/c;->b()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lc/a/c/e$b;->e:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 392
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 396
    invoke-interface {p1, p2, p3}, Ld/e;->h(J)V

    .line 397
    iget-object p1, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    sget-object p2, Lc/a/c/a;->h:Lc/a/c/a;

    invoke-virtual {p1, p2}, Lc/a/c/e;->b(Lc/a/c/a;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 403
    invoke-interface {p1, p2, p3}, Ld/e;->h(J)V

    return-void

    .line 408
    :cond_4
    iget-object v2, p0, Lc/a/c/e$b;->c:Ld/c;

    invoke-interface {p1, v2, p2, p3}, Ld/e;->a(Ld/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    .line 413
    iget-object v2, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    monitor-enter v2

    .line 414
    :try_start_1
    iget-object v3, p0, Lc/a/c/e$b;->d:Ld/c;

    invoke-virtual {v3}, Ld/c;->b()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 415
    :goto_2
    iget-object v0, p0, Lc/a/c/e$b;->d:Ld/c;

    iget-object v1, p0, Lc/a/c/e$b;->c:Ld/c;

    invoke-virtual {v0, v1}, Ld/c;->a(Ld/s;)J

    if-eqz v8, :cond_6

    .line 417
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    :cond_6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 409
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 392
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    monitor-enter v0

    const/4 v1, 0x1

    .line 429
    :try_start_0
    iput-boolean v1, p0, Lc/a/c/e$b;->f:Z

    .line 430
    iget-object v1, p0, Lc/a/c/e$b;->d:Ld/c;

    invoke-virtual {v1}, Ld/c;->t()V

    .line 431
    iget-object v1, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object v0, p0, Lc/a/c/e$b;->b:Lc/a/c/e;

    invoke-static {v0}, Lc/a/c/e;->f(Lc/a/c/e;)V

    return-void

    :catchall_0
    move-exception v1

    .line 432
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
