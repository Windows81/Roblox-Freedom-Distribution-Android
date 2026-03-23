.class public abstract Lcom/b/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field transient a:I

.field transient b:Z

.field transient c:Lcom/b/a/a/q;

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
            "Ljava/util/Set",
            "<",
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
.method protected constructor <init>(Lcom/b/a/a/o;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i;->d:Ljava/lang/String;

    .line 28
    iput-wide v2, p0, Lcom/b/a/a/i;->e:J

    .line 29
    iput-wide v4, p0, Lcom/b/a/a/i;->f:J

    .line 30
    iput-wide v2, p0, Lcom/b/a/a/i;->g:J

    .line 31
    iput-wide v4, p0, Lcom/b/a/a/i;->h:J

    .line 51
    invoke-virtual {p1}, Lcom/b/a/a/o;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/i;->f:J

    .line 52
    invoke-virtual {p1}, Lcom/b/a/a/o;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/i;->h:J

    .line 53
    invoke-virtual {p1}, Lcom/b/a/a/o;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/a/i;->j:Z

    .line 54
    invoke-virtual {p1}, Lcom/b/a/a/o;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i;->i:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/b/a/a/o;->f()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/i;->a:I

    .line 56
    invoke-virtual {p1}, Lcom/b/a/a/o;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/i;->m:J

    .line 57
    invoke-virtual {p1}, Lcom/b/a/a/o;->d()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/b/a/a/o;->h()Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/a/o;->h()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/b/a/a/o;->h()Ljava/util/HashSet;

    move-result-object v0

    .line 60
    :goto_0
    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, v1}, Lcom/b/a/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Lcom/b/a/a/i;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 64
    iput-object v1, p0, Lcom/b/a/a/i;->i:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i;->k:Ljava/util/Set;

    .line 69
    :cond_2
    return-void

    .line 59
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "job-single-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/b/a/a/j;I)I
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    iput p2, p0, Lcom/b/a/a/i;->l:I

    .line 209
    invoke-static {}, Lcom/b/a/a/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "running job %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {v0, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/a/i;->g()V

    .line 216
    invoke-static {}, Lcom/b/a/a/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "finished job %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v3, v7

    invoke-static {v0, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    move v3, v1

    .line 237
    :goto_0
    const-string v7, "safeRunResult for %s : %s. re run:%s. cancelled: %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p0, v8, v1

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v6

    iget-boolean v1, p0, Lcom/b/a/a/i;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    if-nez v0, :cond_6

    .line 253
    :goto_1
    return v2

    .line 219
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 221
    const-string v0, "error while executing job %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v1

    invoke-static {v3, v0, v7}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/b/a/a/i;->l()I

    move-result v0

    if-ge p2, v0, :cond_4

    move v0, v2

    .line 223
    :goto_2
    if-eqz v0, :cond_5

    iget-boolean v7, p0, Lcom/b/a/a/i;->b:Z

    if-nez v7, :cond_5

    .line 225
    :try_start_1
    invoke-virtual {p0}, Lcom/b/a/a/i;->l()I

    move-result v7

    invoke-virtual {p0, v3, p2, v7}, Lcom/b/a/a/i;->a(Ljava/lang/Throwable;II)Lcom/b/a/a/q;

    move-result-object v3

    .line 227
    if-nez v3, :cond_3

    .line 228
    sget-object v3, Lcom/b/a/a/q;->a:Lcom/b/a/a/q;

    .line 230
    :cond_3
    iput-object v3, p0, Lcom/b/a/a/i;->c:Lcom/b/a/a/q;

    .line 231
    invoke-virtual {v3}, Lcom/b/a/a/q;->a()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v3, v0

    move v0, v2

    .line 234
    goto :goto_0

    :cond_4
    move v0, v1

    .line 222
    goto :goto_2

    .line 232
    :catch_1
    move-exception v3

    .line 233
    const-string v7, "shouldReRunOnThrowable did throw an exception"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v3, v0

    move v0, v2

    goto :goto_0

    .line 241
    :cond_6
    invoke-virtual {p1}, Lcom/b/a/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    const/4 v2, 0x6

    goto :goto_1

    .line 244
    :cond_7
    invoke-virtual {p1}, Lcom/b/a/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    move v2, v4

    .line 245
    goto :goto_1

    .line 247
    :cond_8
    if-eqz v3, :cond_9

    move v2, v5

    .line 248
    goto :goto_1

    .line 250
    :cond_9
    invoke-virtual {p0}, Lcom/b/a/a/i;->l()I

    move-result v0

    if-ge p2, v0, :cond_a

    .line 251
    const/4 v2, 0x5

    goto :goto_1

    :cond_a
    move v2, v6

    .line 253
    goto :goto_1
.end method

.method protected abstract a(Ljava/lang/Throwable;II)Lcom/b/a/a/q;
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/b/a/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(I)V
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/b/a/a/i;->n:Landroid/content/Context;

    .line 427
    return-void
.end method

.method public final a(Lcom/b/a/a/k/b;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    iget-boolean v2, p0, Lcom/b/a/a/i;->o:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/b/a/a/i;->e:J

    invoke-interface {p1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/b/a/a/i;->f:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/b/a/a/i;->a:I

    return v0
.end method

.method public final b(Lcom/b/a/a/k/b;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    iget-boolean v2, p0, Lcom/b/a/a/i;->o:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/b/a/a/i;->g:J

    invoke-interface {p1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/b/a/a/i;->h:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/b/a/a/i;->m:J

    return-wide v0
.end method

.method public c(Lcom/b/a/a/k/b;)V
    .locals 10

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    const-wide/high16 v6, -0x8000000000000000L

    .line 445
    iget-boolean v0, p0, Lcom/b/a/a/i;->o:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add the same job twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    iget-wide v0, p0, Lcom/b/a/a/i;->f:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 450
    iput-wide v6, p0, Lcom/b/a/a/i;->e:J

    .line 458
    :goto_0
    iget-wide v0, p0, Lcom/b/a/a/i;->h:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 460
    iput-wide v6, p0, Lcom/b/a/a/i;->g:J

    .line 467
    :goto_1
    iget-wide v0, p0, Lcom/b/a/a/i;->e:J

    iget-wide v2, p0, Lcom/b/a/a/i;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 468
    iget-wide v0, p0, Lcom/b/a/a/i;->g:J

    iput-wide v0, p0, Lcom/b/a/a/i;->e:J

    .line 470
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/i;->o:Z

    .line 471
    return-void

    .line 451
    :cond_2
    iget-wide v0, p0, Lcom/b/a/a/i;->f:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    .line 452
    iput-wide v8, p0, Lcom/b/a/a/i;->e:J

    goto :goto_0

    .line 454
    :cond_3
    invoke-interface {p1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/b/a/a/i;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/a/i;->e:J

    goto :goto_0

    .line 461
    :cond_4
    iget-wide v0, p0, Lcom/b/a/a/i;->h:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    .line 462
    iput-wide v8, p0, Lcom/b/a/a/i;->g:J

    goto :goto_1

    .line 464
    :cond_5
    invoke-interface {p1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/b/a/a/i;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/a/i;->g:J

    goto :goto_1
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/b/a/a/i;->k:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/b/a/a/i;->j:Z

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

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/b/a/a/i;->g:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/b/a/a/i;->e:J

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/b/a/a/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/b/a/a/i;->k:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/b/a/a/i;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    const-string v2, "job-single-id:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x14

    return v0
.end method
