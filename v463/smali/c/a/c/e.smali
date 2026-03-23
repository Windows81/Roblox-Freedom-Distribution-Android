.class public final Lc/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/c/e$c;,
        Lc/a/c/e$a;,
        Lc/a/c/e$b;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lc/a/c/e$a;

.field private final e:I

.field private final f:Lc/a/c/d;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lc/a/c/e$b;

.field private final j:Lc/a/c/e$c;

.field private final k:Lc/a/c/e$c;

.field private l:Lc/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lc/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/a/c/e;->d:Z

    return-void
.end method

.method constructor <init>(ILc/a/c/d;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/a/c/d;",
            "ZZ",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lc/a/c/e;->a:J

    .line 64
    new-instance v0, Lc/a/c/e$c;

    invoke-direct {v0, p0}, Lc/a/c/e$c;-><init>(Lc/a/c/e;)V

    iput-object v0, p0, Lc/a/c/e;->j:Lc/a/c/e$c;

    .line 65
    new-instance v0, Lc/a/c/e$c;

    invoke-direct {v0, p0}, Lc/a/c/e$c;-><init>(Lc/a/c/e;)V

    iput-object v0, p0, Lc/a/c/e;->k:Lc/a/c/e$c;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lc/a/c/e;->l:Lc/a/c/a;

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    .line 78
    iput p1, p0, Lc/a/c/e;->e:I

    .line 79
    iput-object p2, p0, Lc/a/c/e;->f:Lc/a/c/d;

    .line 80
    iget-object p1, p2, Lc/a/c/d;->f:Lc/a/c/n;

    const/high16 v1, 0x10000

    .line 81
    invoke-virtual {p1, v1}, Lc/a/c/n;->f(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lc/a/c/e;->b:J

    .line 82
    new-instance p1, Lc/a/c/e$b;

    iget-object p2, p2, Lc/a/c/d;->e:Lc/a/c/n;

    .line 83
    invoke-virtual {p2, v1}, Lc/a/c/n;->f(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lc/a/c/e$b;-><init>(Lc/a/c/e;JLc/a/c/e$1;)V

    iput-object p1, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    .line 84
    new-instance p1, Lc/a/c/e$a;

    invoke-direct {p1, p0}, Lc/a/c/e$a;-><init>(Lc/a/c/e;)V

    iput-object p1, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    .line 85
    iget-object p1, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    invoke-static {p1, p4}, Lc/a/c/e$b;->a(Lc/a/c/e$b;Z)Z

    .line 86
    iget-object p1, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {p1, p3}, Lc/a/c/e$a;->a(Lc/a/c/e$a;Z)Z

    .line 87
    iput-object p5, p0, Lc/a/c/e;->g:Ljava/util/List;

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lc/a/c/e;)Lc/a/c/d;
    .locals 0

    .line 34
    iget-object p0, p0, Lc/a/c/e;->f:Lc/a/c/d;

    return-object p0
.end method

.method static synthetic b(Lc/a/c/e;)I
    .locals 0

    .line 34
    iget p0, p0, Lc/a/c/e;->e:I

    return p0
.end method

.method static synthetic c(Lc/a/c/e;)Lc/a/c/e$c;
    .locals 0

    .line 34
    iget-object p0, p0, Lc/a/c/e;->j:Lc/a/c/e$c;

    return-object p0
.end method

.method static synthetic d(Lc/a/c/e;)Lc/a/c/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lc/a/c/e;->l:Lc/a/c/a;

    return-object p0
.end method

.method private d(Lc/a/c/a;)Z
    .locals 2

    .line 237
    sget-boolean v0, Lc/a/c/e;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 238
    :cond_1
    :goto_0
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->l:Lc/a/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 240
    monitor-exit p0

    return v1

    .line 242
    :cond_2
    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    invoke-static {v0}, Lc/a/c/e$b;->a(Lc/a/c/e$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {v0}, Lc/a/c/e$a;->a(Lc/a/c/e$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    monitor-exit p0

    return v1

    .line 245
    :cond_3
    iput-object p1, p0, Lc/a/c/e;->l:Lc/a/c/a;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object p1, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget v0, p0, Lc/a/c/e;->e:I

    invoke-virtual {p1, v0}, Lc/a/c/d;->b(I)Lc/a/c/e;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic e(Lc/a/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lc/a/c/e;->l()V

    return-void
.end method

.method static synthetic f(Lc/a/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lc/a/c/e;->j()V

    return-void
.end method

.method static synthetic g(Lc/a/c/e;)Lc/a/c/e$c;
    .locals 0

    .line 34
    iget-object p0, p0, Lc/a/c/e;->k:Lc/a/c/e$c;

    return-object p0
.end method

.method static synthetic h(Lc/a/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lc/a/c/e;->k()V

    return-void
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    sget-boolean v0, Lc/a/c/e;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :cond_1
    :goto_0
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    invoke-static {v0}, Lc/a/c/e$b;->a(Lc/a/c/e$b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    invoke-static {v0}, Lc/a/c/e$b;->b(Lc/a/c/e$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {v0}, Lc/a/c/e$a;->a(Lc/a/c/e$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {v0}, Lc/a/c/e$a;->b(Lc/a/c/e$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 452
    :goto_1
    invoke-virtual {p0}, Lc/a/c/e;->b()Z

    move-result v1

    .line 453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 459
    sget-object v0, Lc/a/c/a;->l:Lc/a/c/a;

    invoke-virtual {p0, v0}, Lc/a/c/e;->a(Lc/a/c/a;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 461
    iget-object v0, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget v1, p0, Lc/a/c/e;->e:I

    invoke-virtual {v0, v1}, Lc/a/c/d;->b(I)Lc/a/c/e;

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 453
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {v0}, Lc/a/c/e$a;->b(Lc/a/c/e$a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {v0}, Lc/a/c/e$a;->a(Lc/a/c/e$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lc/a/c/e;->l:Lc/a/c/a;

    if-nez v0, :cond_0

    return-void

    .line 574
    :cond_0
    new-instance v0, Lc/a/c/p;

    iget-object v1, p0, Lc/a/c/e;->l:Lc/a/c/a;

    invoke-direct {v0, v1}, Lc/a/c/p;-><init>(Lc/a/c/a;)V

    throw v0

    .line 572
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 584
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 586
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 91
    iget v0, p0, Lc/a/c/e;->e:I

    return v0
.end method

.method a(J)V
    .locals 3

    .line 564
    iget-wide v0, p0, Lc/a/c/e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lc/a/c/e;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public a(Lc/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lc/a/c/e;->d(Lc/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget v1, p0, Lc/a/c/e;->e:I

    invoke-virtual {v0, v1, p1}, Lc/a/c/d;->b(ILc/a/c/a;)V

    return-void
.end method

.method a(Ld/e;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-boolean v0, Lc/a/c/e;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lc/a/c/e$b;->a(Ld/e;J)V

    return-void
.end method

.method a(Ljava/util/List;Lc/a/c/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;",
            "Lc/a/c/g;",
            ")V"
        }
    .end annotation

    .line 253
    sget-boolean v0, Lc/a/c/e;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v2, p0, Lc/a/c/e;->h:Ljava/util/List;

    if-nez v2, :cond_3

    .line 258
    invoke-virtual {p2}, Lc/a/c/g;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 259
    sget-object v0, Lc/a/c/a;->b:Lc/a/c/a;

    goto :goto_1

    .line 261
    :cond_2
    iput-object p1, p0, Lc/a/c/e;->h:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lc/a/c/e;->b()Z

    move-result v1

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p2}, Lc/a/c/g;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 267
    sget-object v0, Lc/a/c/a;->e:Lc/a/c/a;

    goto :goto_1

    .line 269
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v2, p0, Lc/a/c/e;->h:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object p2, p0, Lc/a/c/e;->h:Ljava/util/List;

    .line 275
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {p0, v0}, Lc/a/c/e;->b(Lc/a/c/a;)V

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    .line 279
    iget-object p1, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget p2, p0, Lc/a/c/e;->e:I

    invoke-virtual {p1, p2}, Lc/a/c/d;->b(I)Lc/a/c/e;

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 275
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lc/a/c/a;)V
    .locals 2

    .line 229
    invoke-direct {p0, p1}, Lc/a/c/e;->d(Lc/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget v1, p0, Lc/a/c/e;->e:I

    invoke-virtual {v0, v1, p1}, Lc/a/c/d;->a(ILc/a/c/a;)V

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->l:Lc/a/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    monitor-exit p0

    return v1

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    invoke-static {v0}, Lc/a/c/e$b;->a(Lc/a/c/e$b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    invoke-static {v0}, Lc/a/c/e$b;->b(Lc/a/c/e$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    .line 110
    invoke-static {v0}, Lc/a/c/e$a;->a(Lc/a/c/e$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    invoke-static {v0}, Lc/a/c/e$a;->b(Lc/a/c/e$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lc/a/c/e;->h:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 112
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 114
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lc/a/c/a;)V
    .locals 1

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->l:Lc/a/c/a;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lc/a/c/e;->l:Lc/a/c/a;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 4

    .line 119
    iget v0, p0, Lc/a/c/e;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v3, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget-boolean v3, v3, Lc/a/c/d;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->j:Lc/a/c/e$c;

    invoke-virtual {v0}, Lc/a/c/e$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lc/a/c/e;->h:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/a/c/e;->l:Lc/a/c/a;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lc/a/c/e;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_2
    iget-object v0, p0, Lc/a/c/e;->j:Lc/a/c/e$c;

    invoke-virtual {v0}, Lc/a/c/e$c;->b()V

    .line 144
    iget-object v0, p0, Lc/a/c/e;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/c/e;->h:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_3
    new-instance v0, Lc/a/c/p;

    iget-object v1, p0, Lc/a/c/e;->l:Lc/a/c/a;

    invoke-direct {v0, v1}, Lc/a/c/p;-><init>(Lc/a/c/a;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lc/a/c/e;->j:Lc/a/c/e$c;

    invoke-virtual {v1}, Lc/a/c/e$c;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public e()Ld/t;
    .locals 1

    .line 186
    iget-object v0, p0, Lc/a/c/e;->j:Lc/a/c/e$c;

    return-object v0
.end method

.method public f()Ld/t;
    .locals 1

    .line 190
    iget-object v0, p0, Lc/a/c/e;->k:Lc/a/c/e$c;

    return-object v0
.end method

.method public g()Ld/s;
    .locals 1

    .line 195
    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    return-object v0
.end method

.method public h()Ld/r;
    .locals 2

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->h:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/a/c/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v0, p0, Lc/a/c/e;->c:Lc/a/c/e$a;

    return-object v0

    :catchall_0
    move-exception v0

    .line 209
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method i()V
    .locals 2

    .line 289
    sget-boolean v0, Lc/a/c/e;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 291
    :cond_1
    :goto_0
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lc/a/c/e;->i:Lc/a/c/e$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/a/c/e$b;->a(Lc/a/c/e$b;Z)Z

    .line 293
    invoke-virtual {p0}, Lc/a/c/e;->b()Z

    move-result v0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lc/a/c/e;->f:Lc/a/c/d;

    iget v1, p0, Lc/a/c/e;->e:I

    invoke-virtual {v0, v1}, Lc/a/c/d;->b(I)Lc/a/c/e;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 295
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
