.class Lcom/b/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/f$1;,
        Lcom/b/a/a/f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/a/r;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/ThreadGroup;

.field private final j:Lcom/b/a/a/l;

.field private final k:Lcom/b/a/a/k/b;

.field private final l:Lcom/b/a/a/g/c;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/b/a/a/l;Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;Lcom/b/a/a/c/a;)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/f;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    iput-object p1, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    .line 72
    iput-object p2, p0, Lcom/b/a/a/f;->k:Lcom/b/a/a/k/b;

    .line 73
    iput-object p3, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    .line 74
    invoke-virtual {p4}, Lcom/b/a/a/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/f;->h:I

    .line 75
    invoke-virtual {p4}, Lcom/b/a/a/c/a;->i()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/f;->e:I

    .line 76
    invoke-virtual {p4}, Lcom/b/a/a/c/a;->h()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/f;->d:I

    .line 77
    invoke-virtual {p4}, Lcom/b/a/a/c/a;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/a/f;->f:J

    .line 79
    invoke-virtual {p4}, Lcom/b/a/a/c/a;->p()I

    move-result v0

    iput v0, p0, Lcom/b/a/a/f;->g:I

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/b/a/a/r;

    invoke-direct {v0, p2}, Lcom/b/a/a/r;-><init>(Lcom/b/a/a/k/b;)V

    iput-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    .line 82
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "JobConsumers"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/a/f;->i:Ljava/lang/ThreadGroup;

    .line 83
    return-void
.end method

.method private a(Lcom/b/a/a/s;[Ljava/lang/String;Z)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/s;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 246
    iget-object v0, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 247
    const-string v3, "checking job tag %s. tags of job: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/b/a/a/i;->d()Ljava/util/Set;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v0}, Lcom/b/a/a/j;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/b/a/a/j;->n()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/b/a/a/j;->l()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/b/a/a/s;->a([Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    if-eqz p3, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/b/a/a/j;->o()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {v0}, Lcom/b/a/a/j;->m()V

    goto :goto_0

    .line 265
    :cond_2
    return-object v1
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 117
    const-string v0, "considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    invoke-virtual {v2}, Lcom/b/a/a/l;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    invoke-virtual {v0}, Lcom/b/a/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "jobqueue is not running, no consumers will be added"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 125
    const-string v0, "there are waiting workers, will poke them instead"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 127
    iget-object v0, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/f$a;

    .line 128
    iget-object v1, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    const-class v3, Lcom/b/a/a/g/a/e;

    invoke-virtual {v1, v3}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/g/a/e;

    .line 129
    invoke-virtual {v1, v5}, Lcom/b/a/a/g/a/e;->a(I)V

    .line 130
    iget-object v0, v0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    .line 131
    if-nez p1, :cond_3

    .line 135
    :cond_2
    const-string v0, "there were waiting workers, poked them and I\'m done"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 138
    :cond_4
    invoke-direct {p0}, Lcom/b/a/a/f;->g()Z

    move-result v0

    .line 139
    const-string v1, "nothing has been poked. are we above load factor? %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/b/a/a/f;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 146
    const-string v0, "adding another consumer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lcom/b/a/a/f$a;

    iget-object v1, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    iget-object v1, v1, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    new-instance v2, Lcom/b/a/a/g/h;

    iget-object v3, p0, Lcom/b/a/a/f;->k:Lcom/b/a/a/k/b;

    iget-object v4, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    const-string v5, "consumer"

    invoke-direct {v2, v3, v4, v5}, Lcom/b/a/a/g/h;-><init>(Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    iget-object v4, p0, Lcom/b/a/a/f;->k:Lcom/b/a/a/k/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/a/f$a;-><init>(Lcom/b/a/a/g/e;Lcom/b/a/a/g/h;Lcom/b/a/a/g/c;Lcom/b/a/a/k/b;)V

    .line 149
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/b/a/a/f;->i:Ljava/lang/ThreadGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "job-queue-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    iget v2, p0, Lcom/b/a/a/f;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 151
    iget-object v2, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method private g()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 157
    iget v0, p0, Lcom/b/a/a/f;->d:I

    if-lt v3, v0, :cond_0

    .line 158
    const-string v0, "too many consumers, clearly above load factor %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    invoke-virtual {v0}, Lcom/b/a/a/l;->d()I

    move-result v4

    .line 162
    iget-object v0, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    .line 164
    iget v0, p0, Lcom/b/a/a/f;->h:I

    mul-int/2addr v0, v3

    add-int v6, v4, v5

    if-lt v0, v6, :cond_1

    iget v0, p0, Lcom/b/a/a/f;->e:I

    if-ge v3, v0, :cond_2

    add-int v0, v4, v5

    if-ge v3, v0, :cond_2

    :cond_1
    move v0, v2

    .line 166
    :goto_1
    const-string v6, "check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s runningsHolders: %s. isAbove:%s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    iget v1, p0, Lcom/b/a/a/f;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/b/a/a/f;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/b/a/a/f;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 170
    goto :goto_0

    :cond_2
    move v0, v1

    .line 164
    goto :goto_1
.end method


# virtual methods
.method a(Lcom/b/a/a/s;[Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/s;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/a/f;->a(Lcom/b/a/a/s;[Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/a/f;->a(Z)V

    .line 95
    return-void
.end method

.method a(Lcom/b/a/a/g/a/j;Lcom/b/a/a/j;Lcom/b/a/a/q;)V
    .locals 8

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/b/a/a/g/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/f$a;

    .line 271
    iget-boolean v1, v0, Lcom/b/a/a/f$a;->e:Z

    if-nez v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this worker should not have a job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/b/a/a/f$a;->e:Z

    .line 275
    iget-object v0, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p2}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {p2}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/r;->b(Ljava/lang/String;)V

    .line 278
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/b/a/a/q;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/b/a/a/q;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {p2}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/f;->k:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/b/a/a/q;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/r;->a(Ljava/lang/String;J)V

    .line 285
    :cond_1
    return-void
.end method

.method a(Lcom/b/a/a/g/a/g;)Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 177
    invoke-virtual {p1}, Lcom/b/a/a/g/a/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/f$a;

    .line 178
    iget-boolean v1, v0, Lcom/b/a/a/f$a;->e:Z

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    return v3

    .line 181
    :cond_0
    const/4 v1, 0x0

    .line 182
    iget-object v4, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    invoke-virtual {v4}, Lcom/b/a/a/l;->c()Z

    move-result v7

    .line 183
    if-eqz v7, :cond_b

    .line 184
    iget-object v1, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    iget-object v4, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {v4}, Lcom/b/a/a/r;->a()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/b/a/a/l;->a(Ljava/util/Collection;)Lcom/b/a/a/j;

    move-result-object v1

    move-object v4, v1

    .line 186
    :goto_1
    if-eqz v4, :cond_2

    .line 187
    iput-boolean v3, v0, Lcom/b/a/a/f$a;->e:Z

    .line 188
    iget-object v1, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {v4}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/r;->a(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    const-class v2, Lcom/b/a/a/g/a/i;

    invoke-virtual {v1, v2}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/g/a/i;

    .line 190
    invoke-virtual {v1, v4}, Lcom/b/a/a/g/a/i;->a(Lcom/b/a/a/j;)V

    .line 191
    iget-object v2, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/b/a/a/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v4}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {v4}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/b/a/a/r;->a(Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v0, v0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/a/g/a/g;->c()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/b/a/a/f;->f:J

    add-long/2addr v4, v8

    .line 199
    const-string v1, "keep alive: %s"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v1, v6}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v6, p0, Lcom/b/a/a/f;->e:I

    if-le v1, v6, :cond_4

    move v6, v3

    .line 201
    :goto_2
    if-eqz v7, :cond_3

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/b/a/a/f;->k:Lcom/b/a/a/k/b;

    invoke-interface {v1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-gez v1, :cond_5

    :cond_3
    move v1, v3

    .line 202
    :goto_3
    const-string v8, "Consumer idle, will kill? %s . isRunning: %s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v3

    invoke-static {v8, v9}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    if-eqz v1, :cond_6

    .line 204
    iget-object v1, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    const-class v4, Lcom/b/a/a/g/a/e;

    invoke-virtual {v1, v4}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/g/a/e;

    .line 205
    invoke-virtual {v1, v3}, Lcom/b/a/a/g/a/e;->a(I)V

    .line 206
    iget-object v4, v0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v4, v1}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    .line 207
    iget-object v1, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    const-string v0, "killed consumers. remaining consumers %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/b/a/a/f;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_a

    .line 211
    iget-object v0, p0, Lcom/b/a/a/f;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 212
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_4
    move v6, v2

    .line 200
    goto :goto_2

    :cond_5
    move v1, v2

    .line 201
    goto :goto_3

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 217
    iget-object v1, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_7
    if-nez v6, :cond_8

    iget-object v1, p0, Lcom/b/a/a/f;->j:Lcom/b/a/a/l;

    invoke-virtual {v1}, Lcom/b/a/a/l;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 220
    :cond_8
    iget-object v1, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    const-class v7, Lcom/b/a/a/g/a/e;

    invoke-virtual {v1, v7}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/g/a/e;

    .line 221
    invoke-virtual {v1, v11}, Lcom/b/a/a/g/a/e;->a(I)V

    .line 222
    if-nez v6, :cond_9

    .line 223
    iget-object v4, p0, Lcom/b/a/a/f;->k:Lcom/b/a/a/k/b;

    invoke-interface {v4}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/b/a/a/f;->f:J

    add-long/2addr v4, v6

    .line 225
    :cond_9
    iget-object v0, v0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    invoke-virtual {v0, v1, v4, v5}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;J)V

    .line 226
    const-string v0, "poke consumer manager at %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    move v3, v2

    .line 229
    goto/16 :goto_0

    :cond_b
    move-object v4, v1

    goto/16 :goto_1
.end method

.method public a(Lcom/b/a/a/j/b;J)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 296
    iget-object v0, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 297
    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/a/i;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/b/a/a/j/b;->c()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/b/a/a/j;->a(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 311
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/a/j/b;->c()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/b/a/a/j;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 307
    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/b/a/a/f;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/b/a/a/s;[Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/s;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/a/f;->a(Lcom/b/a/a/s;[Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/b/a/a/f;->a(Z)V

    .line 99
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/f$a;

    .line 104
    iget-object v2, v0, Lcom/b/a/a/f$a;->a:Lcom/b/a/a/g/h;

    .line 105
    iget-object v0, p0, Lcom/b/a/a/f;->l:Lcom/b/a/a/g/c;

    const-class v3, Lcom/b/a/a/g/a/e;

    invoke-virtual {v0, v3}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/e;

    .line 106
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/b/a/a/g/a/e;->a(I)V

    .line 107
    invoke-virtual {v2, v0}, Lcom/b/a/a/g/h;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/b/a/a/f;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 111
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 114
    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/b/a/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
