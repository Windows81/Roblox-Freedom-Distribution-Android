.class public Lcom/birbit/android/jobqueue/a;
.super Lcom/birbit/android/jobqueue/scheduling/Scheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/a$a;
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field private b:J

.field private c:J

.field private final d:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/birbit/android/jobqueue/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/birbit/android/jobqueue/timer/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/birbit/android/jobqueue/a;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/birbit/android/jobqueue/scheduling/Scheduler;Lcom/birbit/android/jobqueue/timer/Timer;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;-><init>()V

    .line 23
    sget-wide v0, Lcom/birbit/android/jobqueue/a;->a:J

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/a;->b:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/birbit/android/jobqueue/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/a;->c:J

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/birbit/android/jobqueue/a;->d:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    .line 30
    iput-object p2, p0, Lcom/birbit/android/jobqueue/a;->f:Lcom/birbit/android/jobqueue/timer/Timer;

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/a;Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/a;->e(Lcom/birbit/android/jobqueue/scheduling/a;)V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/a$a;Lcom/birbit/android/jobqueue/scheduling/a;J)Z
    .locals 2

    .line 82
    iget-object v0, p1, Lcom/birbit/android/jobqueue/a$a;->b:Lcom/birbit/android/jobqueue/scheduling/a;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/scheduling/a;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/scheduling/a;->c()I

    move-result p2

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    return v1

    .line 86
    :cond_0
    iget-wide p1, p1, Lcom/birbit/android/jobqueue/a$a;->a:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    .line 87
    iget-wide p3, p0, Lcom/birbit/android/jobqueue/a;->c:J

    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private e(Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 53
    iget-object v2, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/birbit/android/jobqueue/a$a;

    .line 54
    iget-object v2, v2, Lcom/birbit/android/jobqueue/a$a;->b:Lcom/birbit/android/jobqueue/scheduling/a;

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/scheduling/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a;->d:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Landroid/content/Context;Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;)V
    .locals 1

    .line 35
    invoke-super {p0, p1, p2}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Landroid/content/Context;Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;)V

    .line 36
    iget-object p2, p0, Lcom/birbit/android/jobqueue/a;->d:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    new-instance v0, Lcom/birbit/android/jobqueue/a$1;

    invoke-direct {v0, p0}, Lcom/birbit/android/jobqueue/a$1;-><init>(Lcom/birbit/android/jobqueue/a;)V

    invoke-virtual {p2, p1, v0}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Landroid/content/Context;Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;)V

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/scheduling/a;Z)V
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/a;->e(Lcom/birbit/android/jobqueue/scheduling/a;)V

    .line 100
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a;->d:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->a(Lcom/birbit/android/jobqueue/scheduling/a;Z)V

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/a;->b(Lcom/birbit/android/jobqueue/scheduling/a;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/birbit/android/jobqueue/scheduling/a;)Z
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a;->f:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    .line 63
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 64
    iget-object v4, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    monitor-enter v4

    .line 65
    :try_start_0
    iget-object v5, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/birbit/android/jobqueue/a$a;

    .line 66
    invoke-direct {p0, v6, p1, v2, v3}, Lcom/birbit/android/jobqueue/a;->a(Lcom/birbit/android/jobqueue/a$a;Lcom/birbit/android/jobqueue/scheduling/a;J)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p1, 0x0

    .line 67
    monitor-exit v4

    return p1

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->b()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/birbit/android/jobqueue/a;->b:J

    div-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    .line 72
    iget-wide v5, p0, Lcom/birbit/android/jobqueue/a;->b:J

    mul-long v2, v2, v5

    .line 73
    invoke-virtual {p1, v2, v3}, Lcom/birbit/android/jobqueue/scheduling/a;->a(J)V

    .line 74
    iget-object v5, p0, Lcom/birbit/android/jobqueue/a;->e:Ljava/util/List;

    new-instance v6, Lcom/birbit/android/jobqueue/a$a;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {v6, v0, v1, p1}, Lcom/birbit/android/jobqueue/a$a;-><init>(JLcom/birbit/android/jobqueue/scheduling/a;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 76
    monitor-exit v4

    return p1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public b(Lcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/a;->a(Lcom/birbit/android/jobqueue/scheduling/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a;->d:Lcom/birbit/android/jobqueue/scheduling/Scheduler;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/scheduling/Scheduler;->b(Lcom/birbit/android/jobqueue/scheduling/a;)V

    :cond_0
    return-void
.end method
