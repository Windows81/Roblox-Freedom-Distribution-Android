.class public Lcom/roblox/client/friends/c/g;
.super Landroidx/lifecycle/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/c/g$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/roblox/client/friends/c/e;

.field private final e:Lcom/roblox/client/friends/a;

.field private final f:Lcom/roblox/client/friends/c/d;

.field private final g:Lcom/roblox/client/ae/v$a;

.field private final h:I

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private l:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;

.field private final o:Lcom/roblox/client/friends/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/roblox/client/friends/c/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/roblox/client/friends/c/g;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/friends/c/e;ILcom/roblox/client/friends/a;Lcom/roblox/client/friends/c/d;Lcom/roblox/client/ae/v$a;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/friends/c/g;->b:Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/roblox/client/friends/c/g$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/c/g$1;-><init>(Lcom/roblox/client/friends/c/g;)V

    iput-object v0, p0, Lcom/roblox/client/friends/c/g;->m:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/roblox/client/friends/c/g$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/c/g$2;-><init>(Lcom/roblox/client/friends/c/g;)V

    iput-object v0, p0, Lcom/roblox/client/friends/c/g;->n:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/roblox/client/friends/c/g$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/c/g$3;-><init>(Lcom/roblox/client/friends/c/g;)V

    iput-object v0, p0, Lcom/roblox/client/friends/c/g;->o:Lcom/roblox/client/friends/c/f;

    .line 112
    iput-object p1, p0, Lcom/roblox/client/friends/c/g;->d:Lcom/roblox/client/friends/c/e;

    .line 113
    new-instance p1, Landroidx/lifecycle/n;

    invoke-direct {p1}, Landroidx/lifecycle/n;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    .line 114
    iput p2, p0, Lcom/roblox/client/friends/c/g;->h:I

    const/4 p1, 0x5

    const/4 p2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/c/g;->a(ILcom/roblox/client/friends/c/c;)Lcom/roblox/client/datastructures/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/friends/c/g;->b(Lcom/roblox/client/datastructures/d;)V

    .line 118
    iput-object p5, p0, Lcom/roblox/client/friends/c/g;->g:Lcom/roblox/client/ae/v$a;

    .line 119
    iput-object p4, p0, Lcom/roblox/client/friends/c/g;->f:Lcom/roblox/client/friends/c/d;

    .line 120
    iput-object p3, p0, Lcom/roblox/client/friends/c/g;->e:Lcom/roblox/client/friends/a;

    const/4 p1, 0x1

    .line 121
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/friends/c/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a(ILcom/roblox/client/friends/c/c;)Lcom/roblox/client/datastructures/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/roblox/client/friends/c/c;",
            ")",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Lcom/roblox/client/datastructures/d;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/friends/c/g;ILcom/roblox/client/friends/c/c;)Lcom/roblox/client/datastructures/d;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/c/g;->a(ILcom/roblox/client/friends/c/c;)Lcom/roblox/client/datastructures/d;

    move-result-object p0

    return-object p0
.end method

.method private a(J)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->g:Lcom/roblox/client/ae/v$a;

    invoke-interface {v0}, Lcom/roblox/client/ae/v$a;->b()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling token retrieval in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyUserTokenViewModel"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 327
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/roblox/client/friends/c/g;->n:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/friends/c/g;->k:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private a(Lcom/roblox/client/datastructures/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    .line 269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/roblox/client/friends/c/g;J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/c/g;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/c/g;Lcom/roblox/client/datastructures/d;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/c/g;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/roblox/client/friends/c/g;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/roblox/client/friends/c/g;)Landroidx/lifecycle/n;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    return-object p0
.end method

.method private b(Lcom/roblox/client/datastructures/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/f;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/friends/c/g;->o:Lcom/roblox/client/friends/c/f;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/friends/c/g;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/roblox/client/friends/c/g;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/friends/c/g;->e:Lcom/roblox/client/friends/a;

    return-object p0
.end method

.method private e()Z
    .locals 5

    .line 284
    invoke-direct {p0}, Lcom/roblox/client/friends/c/g;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 288
    sget-boolean v0, Lcom/roblox/client/friends/c/g;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/roblox/client/friends/c/g;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/d;

    iget-object v0, v0, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/d;

    iget-object v0, v0, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/roblox/client/friends/c/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/c;->a()J

    move-result-wide v0

    .line 292
    iget-object v2, p0, Lcom/roblox/client/friends/c/g;->g:Lcom/roblox/client/ae/v$a;

    invoke-interface {v2}, Lcom/roblox/client/ae/v$a;->b()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 285
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid token resource to check expiration to."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/d;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/friends/c/g;->f:Lcom/roblox/client/friends/c/d;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    .line 297
    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/d;

    iget v0, v0, Lcom/roblox/client/datastructures/d;->b:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private g()V
    .locals 8

    .line 305
    iget v0, p0, Lcom/roblox/client/friends/c/g;->h:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/roblox/client/friends/c/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/roblox/client/friends/c/g;->m:Ljava/lang/Runnable;

    int-to-long v3, v0

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/friends/c/g;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/roblox/client/friends/c/g;->j:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 340
    invoke-super {p0}, Landroidx/lifecycle/u;->a()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/roblox/client/friends/c/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 344
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 349
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/roblox/client/friends/c/c;Lcom/roblox/client/friends/c/f;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "NearbyUserTokenViewModel"

    const-string v1, "Validating my token."

    .line 203
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->f:Lcom/roblox/client/friends/c/d;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/d;->c()V

    .line 205
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->d:Lcom/roblox/client/friends/c/e;

    new-instance v1, Lcom/roblox/client/friends/c/g$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/friends/c/g$5;-><init>(Lcom/roblox/client/friends/c/g;Lcom/roblox/client/friends/c/f;Lcom/roblox/client/friends/c/c;)V

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/friends/c/e;->a(Lcom/roblox/client/friends/c/c;Lcom/roblox/client/friends/c/e$a;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;>;"
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/roblox/client/friends/c/g;->j:Z

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/roblox/client/friends/c/g;->g()V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/c/g;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/roblox/client/friends/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "NearbyUserTokenViewModel"

    const-string v1, "Token is still valid, return it."

    .line 181
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    invoke-virtual {v0}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/datastructures/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/datastructures/d;)V

    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->f:Lcom/roblox/client/friends/c/d;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/d;->a()V

    .line 135
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->d:Lcom/roblox/client/friends/c/e;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/e;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    new-instance v2, Lcom/roblox/client/friends/c/g$4;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/friends/c/g$4;-><init>(Lcom/roblox/client/friends/c/g;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->l:Landroidx/lifecycle/n;

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->d:Lcom/roblox/client/friends/c/e;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/e;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->i:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/roblox/client/friends/c/g;->j:Z

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method
