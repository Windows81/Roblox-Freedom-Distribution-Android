.class Lcom/birbit/android/jobqueue/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/birbit/android/jobqueue/timer/Timer;

.field final b:Lcom/birbit/android/jobqueue/JobQueue;

.field final c:Lcom/birbit/android/jobqueue/JobQueue;

.field final d:Lcom/birbit/android/jobqueue/e;

.field final e:Lcom/birbit/android/jobqueue/d;

.field final f:Lcom/birbit/android/jobqueue/b;

.field final g:Lcom/birbit/android/jobqueue/messaging/e;

.field h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

.field private final i:Landroid/content/Context;

.field private final j:J

.field private final k:Lcom/birbit/android/jobqueue/network/NetworkUtil;

.field private final l:Lcom/birbit/android/jobqueue/di/DependencyInjector;

.field private final m:Lcom/birbit/android/jobqueue/messaging/c;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/birbit/android/jobqueue/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/birbit/android/jobqueue/scheduling/a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/b/a;Lcom/birbit/android/jobqueue/messaging/e;Lcom/birbit/android/jobqueue/messaging/c;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/birbit/android/jobqueue/d;

    invoke-direct {v0}, Lcom/birbit/android/jobqueue/d;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/j;->q:Z

    .line 73
    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    .line 74
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->j()Lcom/birbit/android/jobqueue/log/CustomLogger;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->j()Lcom/birbit/android/jobqueue/log/CustomLogger;

    move-result-object p2

    invoke-static {p2}, Lcom/birbit/android/jobqueue/log/a;->a(Lcom/birbit/android/jobqueue/log/CustomLogger;)V

    .line 77
    :cond_0
    iput-object p3, p0, Lcom/birbit/android/jobqueue/j;->m:Lcom/birbit/android/jobqueue/messaging/c;

    .line 78
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->m()Lcom/birbit/android/jobqueue/timer/Timer;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    .line 79
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->a()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->i:Landroid/content/Context;

    .line 80
    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {p2}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/j;->j:J

    .line 81
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->o()Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    instance-of v0, p2, Lcom/birbit/android/jobqueue/a;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/birbit/android/jobqueue/a;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-direct {v0, p2, v1}, Lcom/birbit/android/jobqueue/a;-><init>(Lcom/birbit/android/jobqueue/scheduling/Scheduler;Lcom/birbit/android/jobqueue/timer/Timer;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->d()Lcom/birbit/android/jobqueue/QueueFactory;

    move-result-object p2

    iget-wide v0, p0, Lcom/birbit/android/jobqueue/j;->j:J

    invoke-interface {p2, p1, v0, v1}, Lcom/birbit/android/jobqueue/QueueFactory;->createPersistentQueue(Lcom/birbit/android/jobqueue/b/a;J)Lcom/birbit/android/jobqueue/JobQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    .line 88
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->d()Lcom/birbit/android/jobqueue/QueueFactory;

    move-result-object p2

    iget-wide v0, p0, Lcom/birbit/android/jobqueue/j;->j:J

    invoke-interface {p2, p1, v0, v1}, Lcom/birbit/android/jobqueue/QueueFactory;->createNonPersistent(Lcom/birbit/android/jobqueue/b/a;J)Lcom/birbit/android/jobqueue/JobQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    .line 90
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->g()Lcom/birbit/android/jobqueue/network/NetworkUtil;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->k:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    .line 91
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->e()Lcom/birbit/android/jobqueue/di/DependencyInjector;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->l:Lcom/birbit/android/jobqueue/di/DependencyInjector;

    .line 92
    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->k:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    instance-of v0, p2, Lcom/birbit/android/jobqueue/network/NetworkEventProvider;

    if-eqz v0, :cond_2

    .line 93
    check-cast p2, Lcom/birbit/android/jobqueue/network/NetworkEventProvider;

    invoke-interface {p2, p0}, Lcom/birbit/android/jobqueue/network/NetworkEventProvider;->setListener(Lcom/birbit/android/jobqueue/network/NetworkEventProvider$Listener;)V

    .line 95
    :cond_2
    new-instance p2, Lcom/birbit/android/jobqueue/e;

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-direct {p2, p0, v0, p3, p1}, Lcom/birbit/android/jobqueue/e;-><init>(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;Lcom/birbit/android/jobqueue/b/a;)V

    iput-object p2, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    .line 96
    new-instance p1, Lcom/birbit/android/jobqueue/b;

    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-direct {p1, p3, p2}, Lcom/birbit/android/jobqueue/b;-><init>(Lcom/birbit/android/jobqueue/messaging/c;Lcom/birbit/android/jobqueue/timer/Timer;)V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/n;->a()Ljava/util/Collection;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/d;->j()V

    .line 564
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v2}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/birbit/android/jobqueue/d;->a(J)V

    .line 565
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v1, p1}, Lcom/birbit/android/jobqueue/d;->a(I)V

    .line 566
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/d;->a(Ljava/util/Collection;)V

    .line 567
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/d;->c(Z)V

    .line 568
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/d;->a(Ljava/lang/Long;)V

    .line 571
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/JobQueue;->countReadyJobs(Lcom/birbit/android/jobqueue/d;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 572
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {v0, v1}, Lcom/birbit/android/jobqueue/JobQueue;->countReadyJobs(Lcom/birbit/android/jobqueue/d;)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h;
    .locals 4

    if-eqz p1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/d;->j()V

    .line 194
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/d;->a([Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    sget-object v0, Lcom/birbit/android/jobqueue/o;->b:Lcom/birbit/android/jobqueue/o;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/d;->a(Lcom/birbit/android/jobqueue/o;)V

    .line 196
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/JobQueue;->findJobs(Lcom/birbit/android/jobqueue/d;)Ljava/util/Set;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {v0, v1}, Lcom/birbit/android/jobqueue/JobQueue;->findJobs(Lcom/birbit/android/jobqueue/d;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/h;

    .line 200
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/birbit/android/jobqueue/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 204
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/birbit/android/jobqueue/h;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/birbit/android/jobqueue/g;)V
    .locals 6

    .line 167
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/g;->a(Lcom/birbit/android/jobqueue/timer/Timer;)Z

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-virtual {p1, v1}, Lcom/birbit/android/jobqueue/g;->b(Lcom/birbit/android/jobqueue/timer/Timer;)Z

    move-result v1

    .line 172
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-wide/16 v4, 0x7530

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    return-void

    .line 179
    :cond_2
    new-instance p1, Lcom/birbit/android/jobqueue/scheduling/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/birbit/android/jobqueue/scheduling/a;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 180
    :goto_1
    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/scheduling/a;->a(I)V

    .line 182
    invoke-virtual {p1, v2, v3}, Lcom/birbit/android/jobqueue/scheduling/a;->a(J)V

    .line 183
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->b(Lcom/birbit/android/jobqueue/scheduling/a;)V

    .line 184
    iput-boolean v4, p0, Lcom/birbit/android/jobqueue/j;->q:Z

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/h;)V
    .locals 7

    .line 508
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->s()Lcom/birbit/android/jobqueue/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 510
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->b(Lcom/birbit/android/jobqueue/h;)V

    return-void

    .line 513
    :cond_0
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/m;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/m;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/birbit/android/jobqueue/h;->b(I)V

    :cond_1
    const-wide/16 v1, -0x1

    .line 517
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/m;->b()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 518
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/m;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    mul-long v1, v1, v5

    add-long/2addr v3, v1

    goto :goto_0

    :cond_3
    const-wide/high16 v3, -0x8000000000000000L

    :goto_0
    invoke-virtual {p1, v3, v4}, Lcom/birbit/android/jobqueue/h;->d(J)V

    .line 523
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->b(Lcom/birbit/android/jobqueue/h;)V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/h;I)V
    .locals 3

    const/4 v0, 0x0

    .line 500
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/birbit/android/jobqueue/h;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "job\'s onCancel did throw an exception, ignoring..."

    .line 502
    invoke-static {p2, v2, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    :goto_0
    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/g;Z)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->e()V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/messaging/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/c;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/messaging/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/e;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/messaging/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/h;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/messaging/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/j;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/messaging/a/j;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/messaging/a/k;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/messaging/a/k;)V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/a;)V
    .locals 10

    .line 112
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/a;->c()Lcom/birbit/android/jobqueue/g;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->c()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->c()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-virtual {p1, v4}, Lcom/birbit/android/jobqueue/g;->c(Lcom/birbit/android/jobqueue/timer/Timer;)V

    .line 118
    new-instance v4, Lcom/birbit/android/jobqueue/h$a;

    invoke-direct {v4}, Lcom/birbit/android/jobqueue/h$a;-><init>()V

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/birbit/android/jobqueue/h$a;->a(I)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/birbit/android/jobqueue/h$a;->a(Lcom/birbit/android/jobqueue/g;)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v4

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/birbit/android/jobqueue/h$a;->a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v4

    iget-object v5, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v5}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/birbit/android/jobqueue/h$a;->a(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/birbit/android/jobqueue/h$a;->b(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/birbit/android/jobqueue/h$a;->d(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/h$a;->a()Lcom/birbit/android/jobqueue/h;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 127
    iget-object v4, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/birbit/android/jobqueue/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    .line 129
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    :goto_3
    if-eqz v1, :cond_4

    .line 131
    iget-object v6, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    sget-object v7, Lcom/birbit/android/jobqueue/o;->b:Lcom/birbit/android/jobqueue/o;

    new-array v8, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->k()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/birbit/android/jobqueue/e;->b(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;)Ljava/util/Set;

    .line 132
    invoke-interface {v5, v0, v1}, Lcom/birbit/android/jobqueue/JobQueue;->substitute(Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/h;)V

    goto :goto_4

    .line 134
    :cond_4
    invoke-interface {v5, v0}, Lcom/birbit/android/jobqueue/JobQueue;->insert(Lcom/birbit/android/jobqueue/h;)Z

    .line 136
    :goto_4
    invoke-static {}, Lcom/birbit/android/jobqueue/log/a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->j()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-virtual {p1, v6}, Lcom/birbit/android/jobqueue/g;->a(Lcom/birbit/android/jobqueue/timer/Timer;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v5, "added job class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s"

    invoke-static {v5, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "another job with same singleId: %s was already queued"

    invoke-static {v5, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->l:Lcom/birbit/android/jobqueue/di/DependencyInjector;

    if-eqz v1, :cond_7

    .line 146
    invoke-interface {v1, p1}, Lcom/birbit/android/jobqueue/di/DependencyInjector;->inject(Lcom/birbit/android/jobqueue/g;)V

    .line 148
    :cond_7
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/h;->a(Landroid/content/Context;)V

    .line 150
    :try_start_0
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/g;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "job\'s onAdded did throw an exception, ignoring..."

    .line 152
    invoke-static {v1, v5, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_6
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/g;)V

    if-eqz v4, :cond_8

    .line 156
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/e;->a()V

    .line 157
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 158
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/g;)V

    goto :goto_7

    .line 161
    :cond_8
    invoke-direct {p0, v0, v3}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/h;I)V

    .line 162
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/b;->b(Lcom/birbit/android/jobqueue/g;)V

    :cond_9
    :goto_7
    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/c;)V
    .locals 3

    .line 434
    new-instance v0, Lcom/birbit/android/jobqueue/c;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/c;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/c;->d()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/c;->e()Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/birbit/android/jobqueue/c;-><init>(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;)V

    .line 436
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v0, p0, p1}, Lcom/birbit/android/jobqueue/c;->a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/e;)V

    .line 437
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {v0, p0}, Lcom/birbit/android/jobqueue/c;->a(Lcom/birbit/android/jobqueue/j;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->n:Ljava/util/List;

    if-nez p1, :cond_1

    .line 441
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/j;->n:Ljava/util/List;

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/e;)V
    .locals 1

    .line 349
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/e;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 350
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/e;->stop()V

    .line 351
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/e;->clear()V

    :cond_0
    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/h;)V
    .locals 3

    .line 360
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->d()I

    move-result v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot handle public query with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/e;->d()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    goto :goto_0

    .line 385
    :pswitch_1
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->f()V

    .line 386
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/j;->b(Ljava/lang/String;)Lcom/birbit/android/jobqueue/k;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/k;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    goto :goto_0

    :pswitch_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "handling stop request..."

    .line 376
    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iput-boolean v2, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    .line 378
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/e;->c()V

    goto :goto_0

    :pswitch_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "handling start request..."

    .line 368
    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-boolean p1, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    .line 373
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/e;->b()V

    goto :goto_0

    .line 365
    :pswitch_5
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/j;->a(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    goto :goto_0

    .line 362
    :pswitch_6
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/j;->b()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/h;->c()Lcom/birbit/android/jobqueue/IntCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/birbit/android/jobqueue/IntCallback;->onResult(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/j;)V
    .locals 5

    .line 448
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/j;->d()I

    move-result v0

    .line 449
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/j;->c()Lcom/birbit/android/jobqueue/h;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/g;I)V

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unknown job holder result"

    .line 479
    invoke-static {v4, v3}, Lcom/birbit/android/jobqueue/log/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x6

    .line 466
    invoke-direct {p0, v1, v3}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/h;I)V

    .line 467
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->c(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x5

    .line 462
    invoke-direct {p0, v1, v3}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/h;I)V

    .line 463
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->c(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_0

    .line 470
    :pswitch_2
    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->s()Lcom/birbit/android/jobqueue/m;

    move-result-object v3

    .line 471
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_1

    :pswitch_3
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "running job failed and cancelled, doing nothing. Will be removed after it\'s onCancel is called by the CancelHandler"

    .line 474
    invoke-static {v4, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x2

    .line 458
    invoke-direct {p0, v1, v3}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/h;I)V

    .line 459
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->c(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_0

    .line 454
    :pswitch_5
    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->r()V

    .line 455
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->c(Lcom/birbit/android/jobqueue/h;)V

    :goto_0
    const/4 v3, 0x0

    .line 481
    :goto_1
    iget-object v4, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v4, p1, v1, v3}, Lcom/birbit/android/jobqueue/e;->a(Lcom/birbit/android/jobqueue/messaging/a/j;Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/m;)V

    .line 482
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/birbit/android/jobqueue/b;->b(Lcom/birbit/android/jobqueue/g;I)V

    .line 483
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->n:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_1

    .line 486
    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/birbit/android/jobqueue/c;

    .line 487
    invoke-virtual {v3, v1, v0}, Lcom/birbit/android/jobqueue/c;->a(Lcom/birbit/android/jobqueue/h;I)V

    .line 488
    invoke-virtual {v3}, Lcom/birbit/android/jobqueue/c;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 489
    invoke-virtual {v3, p0}, Lcom/birbit/android/jobqueue/c;->a(Lcom/birbit/android/jobqueue/j;)V

    .line 490
    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/k;)V
    .locals 3

    .line 284
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/k;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/k;->d()Lcom/birbit/android/jobqueue/scheduling/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->c(Lcom/birbit/android/jobqueue/scheduling/a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/k;->d()Lcom/birbit/android/jobqueue/scheduling/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->b(Lcom/birbit/android/jobqueue/scheduling/a;)V

    :goto_0
    return-void

    .line 290
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scheduler message with what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/j;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/j;->q:Z

    return p1
.end method

.method private a(Lcom/birbit/android/jobqueue/scheduling/a;)Z
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/birbit/android/jobqueue/e;->a(Lcom/birbit/android/jobqueue/scheduling/a;J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/d;->j()V

    .line 300
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v2}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/birbit/android/jobqueue/d;->a(J)V

    .line 301
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/d;->a(I)V

    .line 302
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/JobQueue;->countReadyJobs(Lcom/birbit/android/jobqueue/d;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private b(Ljava/lang/String;)Lcom/birbit/android/jobqueue/k;
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object p1, Lcom/birbit/android/jobqueue/k;->c:Lcom/birbit/android/jobqueue/k;

    return-object p1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/JobQueue;->findJobById(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/JobQueue;->findJobById(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 417
    sget-object p1, Lcom/birbit/android/jobqueue/k;->d:Lcom/birbit/android/jobqueue/k;

    return-object p1

    .line 419
    :cond_2
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->g()I

    move-result p1

    .line 420
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/birbit/android/jobqueue/h;->a(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    sget-object p1, Lcom/birbit/android/jobqueue/k;->a:Lcom/birbit/android/jobqueue/k;

    return-object p1

    :cond_3
    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    .line 424
    invoke-virtual {v0, v1, v2}, Lcom/birbit/android/jobqueue/h;->b(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 425
    sget-object p1, Lcom/birbit/android/jobqueue/k;->a:Lcom/birbit/android/jobqueue/k;

    return-object p1

    .line 427
    :cond_4
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/h;->i()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_5

    .line 428
    sget-object p1, Lcom/birbit/android/jobqueue/k;->a:Lcom/birbit/android/jobqueue/k;

    return-object p1

    .line 430
    :cond_5
    sget-object p1, Lcom/birbit/android/jobqueue/k;->b:Lcom/birbit/android/jobqueue/k;

    return-object p1
.end method

.method private b(Lcom/birbit/android/jobqueue/h;)V
    .locals 2

    .line 527
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/JobQueue;->insertOrReplace(Lcom/birbit/android/jobqueue/h;)Z

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/JobQueue;->insertOrReplace(Lcom/birbit/android/jobqueue/h;)Z

    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not re-adding cancelled job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 308
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/birbit/android/jobqueue/scheduling/a;

    .line 310
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/scheduling/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-nez v0, :cond_2

    return-void

    .line 318
    :cond_2
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/scheduling/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->b(Lcom/birbit/android/jobqueue/scheduling/a;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/birbit/android/jobqueue/j;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    return p0
.end method

.method static synthetic c(Lcom/birbit/android/jobqueue/j;)Lcom/birbit/android/jobqueue/messaging/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/birbit/android/jobqueue/j;->m:Lcom/birbit/android/jobqueue/messaging/c;

    return-object p0
.end method

.method private c(Lcom/birbit/android/jobqueue/h;)V
    .locals 1

    .line 539
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/JobQueue;->remove(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/JobQueue;->remove(Lcom/birbit/android/jobqueue/h;)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/b;->b(Lcom/birbit/android/jobqueue/g;)V

    return-void
.end method

.method private c(Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 329
    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Lcom/birbit/android/jobqueue/scheduling/a;Z)V

    :cond_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/scheduling/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 336
    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Lcom/birbit/android/jobqueue/scheduling/a;Z)V

    :cond_2
    return-void

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    if-nez v0, :cond_4

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/e;->b()V

    return-void
.end method

.method static synthetic d(Lcom/birbit/android/jobqueue/j;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/birbit/android/jobqueue/j;->q:Z

    return p0
.end method

.method private e()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 277
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/scheduling/a;

    .line 278
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/j;->a(Lcom/birbit/android/jobqueue/scheduling/a;)Z

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->h:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    invoke-virtual {v3, v1, v2}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Lcom/birbit/android/jobqueue/scheduling/a;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private f()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/JobQueue;->clear()V

    .line 404
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/JobQueue;->clear()V

    return-void
.end method

.method private g()I
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->k:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->i:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/birbit/android/jobqueue/network/NetworkUtil;->getNetworkStatus(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method a(Ljava/util/Collection;)Lcom/birbit/android/jobqueue/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/birbit/android/jobqueue/h;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/birbit/android/jobqueue/j;->a(Ljava/util/Collection;Z)Lcom/birbit/android/jobqueue/h;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/Collection;Z)Lcom/birbit/android/jobqueue/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/birbit/android/jobqueue/h;"
        }
    .end annotation

    .line 625
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-object v1

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->g()I

    move-result p2

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "looking for next job"

    .line 631
    invoke-static {v3, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/d;->j()V

    .line 633
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v3}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/birbit/android/jobqueue/d;->a(J)V

    .line 634
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v2, p2}, Lcom/birbit/android/jobqueue/d;->a(I)V

    .line 635
    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {p2, p1}, Lcom/birbit/android/jobqueue/d;->a(Ljava/util/Collection;)V

    .line 636
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/birbit/android/jobqueue/d;->c(Z)V

    .line 637
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v2}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/birbit/android/jobqueue/d;->a(Ljava/lang/Long;)V

    .line 638
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {p1, v2}, Lcom/birbit/android/jobqueue/JobQueue;->nextJobAndIncRunCount(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/h;

    move-result-object p1

    new-array v2, p2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "non persistent result %s"

    .line 639
    invoke-static {v3, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 642
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {p1, v2}, Lcom/birbit/android/jobqueue/JobQueue;->nextJobAndIncRunCount(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/h;

    move-result-object p1

    new-array v2, p2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v0, "persistent result %s"

    .line 644
    invoke-static {v0, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    .line 649
    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->l:Lcom/birbit/android/jobqueue/di/DependencyInjector;

    if-eqz p2, :cond_3

    .line 650
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/birbit/android/jobqueue/di/DependencyInjector;->inject(Lcom/birbit/android/jobqueue/g;)V

    .line 652
    :cond_3
    iget-object p2, p0, Lcom/birbit/android/jobqueue/j;->i:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/birbit/android/jobqueue/h;->a(Landroid/content/Context;)V

    return-object p1
.end method

.method a(Z)Ljava/lang/Long;
    .locals 6

    .line 582
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/n;->b()Ljava/lang/Long;

    move-result-object v0

    .line 583
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->g()I

    move-result v1

    .line 584
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->d:Lcom/birbit/android/jobqueue/e;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/n;->a()Ljava/util/Collection;

    move-result-object v2

    .line 585
    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v3}, Lcom/birbit/android/jobqueue/d;->j()V

    .line 586
    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    iget-object v4, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v4}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/birbit/android/jobqueue/d;->a(J)V

    .line 587
    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v3, v1}, Lcom/birbit/android/jobqueue/d;->a(I)V

    .line 588
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/d;->a(Ljava/util/Collection;)V

    .line 589
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/d;->c(Z)V

    .line 590
    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {v1, v2}, Lcom/birbit/android/jobqueue/JobQueue;->getNextJobDelayUntilNs(Lcom/birbit/android/jobqueue/d;)Ljava/lang/Long;

    move-result-object v1

    .line 591
    iget-object v2, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    invoke-interface {v2, v3}, Lcom/birbit/android/jobqueue/JobQueue;->getNextJobDelayUntilNs(Lcom/birbit/android/jobqueue/d;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 597
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    .line 600
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_4
    if-eqz p1, :cond_6

    .line 602
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->k:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    instance-of p1, p1, Lcom/birbit/android/jobqueue/network/NetworkEventProvider;

    if-nez p1, :cond_6

    .line 604
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lcom/birbit/android/jobqueue/i;->a:J

    add-long/2addr v1, v3

    if-nez v0, :cond_5

    goto :goto_3

    .line 605
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method a()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->k:Lcom/birbit/android/jobqueue/network/NetworkUtil;

    instance-of v0, v0, Lcom/birbit/android/jobqueue/network/NetworkEventProvider;

    return v0
.end method

.method b()I
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/JobQueue;->count()I

    move-result v0

    iget-object v1, p0, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v1}, Lcom/birbit/android/jobqueue/JobQueue;->count()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method c()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/j;->p:Z

    return v0
.end method

.method d()I
    .locals 1

    .line 558
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/j;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/j;->a(I)I

    move-result v0

    return v0
.end method

.method public onNetworkChange(I)V
    .locals 1

    .line 549
    iget-object p1, p0, Lcom/birbit/android/jobqueue/j;->m:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v0, Lcom/birbit/android/jobqueue/messaging/a/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object p1

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/f;

    .line 550
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/messaging/e;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    new-instance v1, Lcom/birbit/android/jobqueue/j$1;

    invoke-direct {v1, p0}, Lcom/birbit/android/jobqueue/j$1;-><init>(Lcom/birbit/android/jobqueue/j;)V

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/e;->consume(Lcom/birbit/android/jobqueue/messaging/d;)V

    return-void
.end method
