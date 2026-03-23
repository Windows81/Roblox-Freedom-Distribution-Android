.class public Lcom/roblox/client/friends/nearby/b/f;
.super Landroidx/lifecycle/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/nearby/b/f$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/roblox/client/friends/nearby/b/e;

.field private final d:Lcom/roblox/client/friends/a;

.field private final e:Lcom/roblox/client/friends/nearby/b/g;

.field private final f:I

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/roblox/client/friends/c/c;",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private k:Z

.field private final l:Lcom/roblox/client/ae/v$a;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/roblox/client/friends/nearby/b/f;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/friends/nearby/b/e;ILcom/roblox/client/friends/a;Lcom/roblox/client/ae/v$a;Lcom/roblox/client/friends/nearby/b/g;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->b:Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/roblox/client/friends/nearby/b/f$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/nearby/b/f$1;-><init>(Lcom/roblox/client/friends/nearby/b/f;)V

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->m:Ljava/lang/Runnable;

    .line 108
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f;->c:Lcom/roblox/client/friends/nearby/b/e;

    .line 109
    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/f;->d:Lcom/roblox/client/friends/a;

    .line 110
    iput-object p4, p0, Lcom/roblox/client/friends/nearby/b/f;->l:Lcom/roblox/client/ae/v$a;

    .line 111
    iput-object p5, p0, Lcom/roblox/client/friends/nearby/b/f;->e:Lcom/roblox/client/friends/nearby/b/g;

    .line 112
    iput p2, p0, Lcom/roblox/client/friends/nearby/b/f;->f:I

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/roblox/client/friends/nearby/b/f;->k:Z

    .line 115
    new-instance p1, Landroidx/lifecycle/n;

    invoke-direct {p1}, Landroidx/lifecycle/n;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p2}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    .line 119
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/f;->c(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;

    move-result-object p0

    return-object p0
.end method

.method private a(J)Lcom/roblox/client/friends/nearby/b/a/a;
    .locals 6

    .line 460
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 462
    invoke-virtual {v2}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 463
    monitor-exit v0

    return-object v2

    .line 466
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/f;J)Lcom/roblox/client/friends/nearby/b/a/a;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/nearby/b/f;->a(J)Lcom/roblox/client/friends/nearby/b/a/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/f;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    return-object p0
.end method

.method private a(ILcom/roblox/client/friends/c/c;)V
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidating token in cache. Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyUserViewModel"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Lcom/roblox/client/datastructures/d;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method

.method private a(Lcom/roblox/client/datastructures/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->d:Lcom/roblox/client/friends/a;

    invoke-interface {v1}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/nearby/b/f$7;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/friends/nearby/b/f$7;-><init>(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 449
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;",
            "Lcom/roblox/client/friends/c/c;",
            ")V"
        }
    .end annotation

    .line 377
    iget p1, p1, Lcom/roblox/client/datastructures/d;->b:I

    const/4 v0, 0x3

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 390
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure retrieving user for Token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyUserViewModel"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/b/f;->d:Lcom/roblox/client/friends/a;

    invoke-interface {p1}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/friends/nearby/b/f$6;

    invoke-direct {v0, p0, v1, p2}, Lcom/roblox/client/friends/nearby/b/f$6;-><init>(Lcom/roblox/client/friends/nearby/b/f;ILcom/roblox/client/friends/c/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/f;ILcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/nearby/b/f;->a(ILcom/roblox/client/friends/c/c;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/ae/v$a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/b/f;->l:Lcom/roblox/client/ae/v$a;

    return-object p0
.end method

.method private b(Lcom/roblox/client/datastructures/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;)V"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    .line 456
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;",
            "Lcom/roblox/client/friends/c/c;",
            ")V"
        }
    .end annotation

    .line 407
    sget-boolean v0, Lcom/roblox/client/friends/nearby/b/f;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 408
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 411
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/friends/nearby/b/f;->a(J)Lcom/roblox/client/friends/nearby/b/a/a;

    move-result-object v0

    const-string v1, "NearbyUserViewModel"

    if-eqz v0, :cond_2

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalidating placeholder token on cache and UI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 415
    invoke-direct {p0, v2}, Lcom/roblox/client/friends/nearby/b/f;->e(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;)V

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalidating expired token in cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v3

    iget-object v3, v3, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->e:Lcom/roblox/client/friends/nearby/b/g;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/friends/nearby/b/g;->a(J)V

    .line 425
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating cache with found user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p2, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/f;->c(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method

.method private b(Lcom/roblox/client/friends/c/c;)V
    .locals 6

    .line 336
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/friends/nearby/b/a/a;

    const-string v1, "NearbyUserViewModel"

    if-eqz v0, :cond_0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User in cache. Returning it. New expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/roblox/client/friends/c/c;->a()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/friends/c/c;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/friends/c/c;->a(J)V

    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEW TOKEN FOUND!: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Lcom/roblox/client/friends/nearby/b/a/a;

    const-wide/16 v1, -0x1

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/roblox/client/friends/nearby/b/a/a;-><init>(JLjava/lang/String;Lcom/roblox/client/friends/c/c;)V

    .line 348
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-direct {p0, v0}, Lcom/roblox/client/friends/nearby/b/f;->d(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;)V

    .line 352
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-virtual {v0, p1}, Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/client/friends/c/c;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    new-instance v2, Lcom/roblox/client/friends/nearby/b/f$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/roblox/client/friends/nearby/b/f$5;-><init>(Lcom/roblox/client/friends/nearby/b/f;Landroidx/lifecycle/LiveData;Lcom/roblox/client/friends/c/c;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V

    return-void
.end method

.method private c(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ")",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/roblox/client/datastructures/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/friends/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/b/f;->d:Lcom/roblox/client/friends/a;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/friends/nearby/b/f;)Landroidx/lifecycle/n;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    return-object p0
.end method

.method private d(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ")",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Lcom/roblox/client/datastructures/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private d()V
    .locals 8

    .line 472
    iget v0, p0, Lcom/roblox/client/friends/nearby/b/f;->f:I

    if-lez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f;->m:Ljava/lang/Runnable;

    iget v0, p0, Lcom/roblox/client/friends/nearby/b/f;->f:I

    int-to-long v3, v0

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    .line 483
    iput-boolean v0, p0, Lcom/roblox/client/friends/nearby/b/f;->k:Z

    :cond_1
    return-void
.end method

.method private e(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ")",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Lcom/roblox/client/datastructures/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/friends/nearby/b/g;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/b/f;->e:Lcom/roblox/client/friends/nearby/b/g;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/roblox/client/friends/c/c;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/c/c;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;>;"
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/roblox/client/friends/nearby/b/f;->k:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/b/f;->d()V

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/friends/c/c;)V

    .line 138
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    return-object p1
.end method

.method protected a()V
    .locals 0

    .line 504
    invoke-super {p0}, Landroidx/lifecycle/u;->a()V

    .line 506
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/b/f;->c()V

    return-void
.end method

.method public a(JI)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->d:Lcom/roblox/client/friends/a;

    invoke-interface {v0}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/nearby/b/f$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/roblox/client/friends/nearby/b/f$4;-><init>(Lcom/roblox/client/friends/nearby/b/f;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-virtual {v0, p1}, Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/client/friends/nearby/b/a/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    new-instance v1, Lcom/roblox/client/friends/nearby/b/f$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/friends/nearby/b/f$2;-><init>(Lcom/roblox/client/friends/nearby/b/f;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 8

    .line 180
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOrAccept request. Current status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyUserViewModel"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 184
    invoke-virtual {v1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    .line 187
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v3

    const-string v4, "nearby"

    if-nez v3, :cond_1

    .line 188
    invoke-static {}, Lcom/roblox/client/b;->cy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v3, v5, v4}, Lcom/roblox/client/p;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    .line 196
    invoke-virtual {v1, v3}, Lcom/roblox/client/friends/nearby/b/a/a;->a(I)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 198
    invoke-static {}, Lcom/roblox/client/b;->cy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v3, v5, v4}, Lcom/roblox/client/p;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x3

    .line 206
    invoke-virtual {v1, v3}, Lcom/roblox/client/friends/nearby/b/a/a;->a(I)V

    .line 209
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/roblox/client/friends/nearby/b/f;->c(Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/datastructures/d;)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send or accept friend request to userId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-virtual {v1, p1}, Lcom/roblox/client/friends/nearby/b/e;->b(Lcom/roblox/client/friends/nearby/b/a/a;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f;->h:Landroidx/lifecycle/n;

    new-instance v3, Lcom/roblox/client/friends/nearby/b/f$3;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/roblox/client/friends/nearby/b/f$3;-><init>(Lcom/roblox/client/friends/nearby/b/f;Landroidx/lifecycle/LiveData;Lcom/roblox/client/friends/nearby/b/a/a;I)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 310
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lcom/roblox/client/friends/nearby/b/f;->k:Z

    :cond_0
    return-void
.end method
