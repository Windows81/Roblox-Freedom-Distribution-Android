.class public abstract Lcom/birbit/android/jobqueue/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field transient a:I

.field transient b:Z

.field transient c:Lcom/birbit/android/jobqueue/m;

.field private d:Ljava/lang/String;

.field private e:J

.field private transient f:J

.field private g:J

.field private transient h:J

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient l:I

.field private transient m:J

.field private transient n:Landroid/content/Context;

.field private transient o:Z


# direct methods
.method protected constructor <init>(Lcom/birbit/android/jobqueue/l;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/g;->d:Ljava/lang/String;

    const-wide/high16 v0, -0x8000000000000000L

    .line 28
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->e:J

    const-wide/16 v2, 0x0

    .line 29
    iput-wide v2, p0, Lcom/birbit/android/jobqueue/g;->f:J

    .line 30
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->g:J

    .line 31
    iput-wide v2, p0, Lcom/birbit/android/jobqueue/g;->h:J

    .line 51
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->f:J

    .line 52
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->h:J

    .line 53
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/g;->j:Z

    .line 54
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/g;->i:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->f()I

    move-result v0

    iput v0, p0, Lcom/birbit/android/jobqueue/g;->a:I

    .line 56
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->m:J

    .line 57
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->d()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->h()Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->h()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/l;->h()Ljava/util/HashSet;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/birbit/android/jobqueue/g;->i:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 64
    iput-object v0, p0, Lcom/birbit/android/jobqueue/g;->i:Ljava/lang/String;

    .line 67
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/g;->k:Ljava/util/Set;

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "job-single-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final a(Lcom/birbit/android/jobqueue/h;I)I
    .locals 8

    .line 208
    iput p2, p0, Lcom/birbit/android/jobqueue/g;->l:I

    .line 209
    invoke-static {}, Lcom/birbit/android/jobqueue/log/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "running job %s"

    invoke-static {v3, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/g;->g()V

    .line 216
    invoke-static {}, Lcom/birbit/android/jobqueue/log/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "finished job %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 217
    invoke-static {v0, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string v4, "error while executing job %s"

    .line 221
    invoke-static {v0, v4, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/g;->l()I

    move-result v3

    if-ge p2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 223
    iget-boolean v4, p0, Lcom/birbit/android/jobqueue/g;->b:Z

    if-nez v4, :cond_4

    .line 225
    :try_start_1
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/g;->l()I

    move-result v4

    invoke-virtual {p0, v0, p2, v4}, Lcom/birbit/android/jobqueue/g;->a(Ljava/lang/Throwable;II)Lcom/birbit/android/jobqueue/m;

    move-result-object v0

    if-nez v0, :cond_3

    .line 228
    sget-object v0, Lcom/birbit/android/jobqueue/m;->a:Lcom/birbit/android/jobqueue/m;

    .line 230
    :cond_3
    iput-object v0, p0, Lcom/birbit/android/jobqueue/g;->c:Lcom/birbit/android/jobqueue/m;

    .line 231
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/m;->a()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "shouldReRunOnThrowable did throw an exception"

    .line 233
    invoke-static {v0, v5, v4}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v2

    xor-int/lit8 v2, v0, 0x1

    .line 237
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    iget-boolean v2, p0, Lcom/birbit/android/jobqueue/g;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v5, v7

    const-string v2, "safeRunResult for %s : %s. re run:%s. cancelled: %s"

    invoke-static {v2, v5}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_5

    return v1

    .line 241
    :cond_5
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 244
    :cond_6
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->n()Z

    move-result p1

    if-eqz p1, :cond_7

    return v7

    :cond_7
    if-eqz v3, :cond_8

    return v4

    .line 250
    :cond_8
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/g;->l()I

    move-result p1

    if-ge p2, p1, :cond_9

    const/4 p1, 0x5

    return p1

    :cond_9
    return v6
.end method

.method protected abstract a(Ljava/lang/Throwable;II)Lcom/birbit/android/jobqueue/m;
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/birbit/android/jobqueue/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(I)V
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/birbit/android/jobqueue/g;->n:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/birbit/android/jobqueue/timer/Timer;)Z
    .locals 7

    .line 276
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/g;->o:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/birbit/android/jobqueue/g;->e:J

    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/birbit/android/jobqueue/g;->f:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/birbit/android/jobqueue/g;->a:I

    return v0
.end method

.method public final b(Lcom/birbit/android/jobqueue/timer/Timer;)Z
    .locals 7

    .line 291
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/g;->o:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/birbit/android/jobqueue/g;->g:J

    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/birbit/android/jobqueue/g;->h:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/g;->m:J

    return-wide v0
.end method

.method public c(Lcom/birbit/android/jobqueue/timer/Timer;)V
    .locals 9

    .line 445
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/g;->o:Z

    if-nez v0, :cond_5

    .line 448
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/g;->f:J

    const-wide v2, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 450
    iput-wide v4, p0, Lcom/birbit/android/jobqueue/g;->e:J

    goto :goto_0

    :cond_0
    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    .line 452
    iput-wide v2, p0, Lcom/birbit/android/jobqueue/g;->e:J

    goto :goto_0

    .line 454
    :cond_1
    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lcom/birbit/android/jobqueue/g;->f:J

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->e:J

    .line 458
    :goto_0
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/g;->h:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 460
    iput-wide v4, p0, Lcom/birbit/android/jobqueue/g;->g:J

    goto :goto_1

    :cond_2
    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 462
    iput-wide v2, p0, Lcom/birbit/android/jobqueue/g;->g:J

    goto :goto_1

    .line 464
    :cond_3
    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/birbit/android/jobqueue/g;->h:J

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/g;->g:J

    .line 467
    :goto_1
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/g;->e:J

    iget-wide v2, p0, Lcom/birbit/android/jobqueue/g;->g:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 468
    iput-wide v2, p0, Lcom/birbit/android/jobqueue/g;->e:J

    :cond_4
    const/4 p1, 0x1

    .line 470
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/g;->o:Z

    return-void

    .line 446
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add the same job twice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/birbit/android/jobqueue/g;->k:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/g;->j:Z

    return v0
.end method

.method public abstract f()V
.end method

.method public abstract g()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public h()J
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/g;->g:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 350
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/g;->e:J

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/birbit/android/jobqueue/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/birbit/android/jobqueue/g;->k:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 374
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "job-single-id:"

    .line 375
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected l()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method
