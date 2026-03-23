.class Lcom/birbit/android/jobqueue/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/birbit/android/jobqueue/n;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/birbit/android/jobqueue/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/birbit/android/jobqueue/e$a;",
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

.field private final j:Lcom/birbit/android/jobqueue/j;

.field private final k:Lcom/birbit/android/jobqueue/timer/Timer;

.field private final l:Lcom/birbit/android/jobqueue/messaging/c;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/birbit/android/jobqueue/h;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;Lcom/birbit/android/jobqueue/b/a;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/e;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    iput-object p1, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    .line 72
    iput-object p2, p0, Lcom/birbit/android/jobqueue/e;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    .line 73
    iput-object p3, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    .line 74
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/b/a;->k()I

    move-result p1

    iput p1, p0, Lcom/birbit/android/jobqueue/e;->h:I

    .line 75
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/b/a;->i()I

    move-result p1

    iput p1, p0, Lcom/birbit/android/jobqueue/e;->e:I

    .line 76
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/b/a;->h()I

    move-result p1

    iput p1, p0, Lcom/birbit/android/jobqueue/e;->d:I

    .line 77
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/b/a;->f()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/birbit/android/jobqueue/e;->f:J

    .line 79
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/b/a;->p()I

    move-result p1

    iput p1, p0, Lcom/birbit/android/jobqueue/e;->g:I

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    .line 81
    new-instance p1, Lcom/birbit/android/jobqueue/n;

    invoke-direct {p1, p2}, Lcom/birbit/android/jobqueue/n;-><init>(Lcom/birbit/android/jobqueue/timer/Timer;)V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    .line 82
    new-instance p1, Ljava/lang/ThreadGroup;

    const-string p2, "JobConsumers"

    invoke-direct {p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/e;->i:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/o;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 246
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/birbit/android/jobqueue/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 247
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/birbit/android/jobqueue/g;->d()Ljava/util/Set;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "checking job tag %s. tags of job: %s"

    invoke-static {v4, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->q()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->l()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/birbit/android/jobqueue/o;->a([Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_3

    .line 259
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->o()V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/h;->m()V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private a(Z)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/j;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d"

    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "jobqueue is not running, no consumers will be added"

    .line 121
    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "there are waiting workers, will poke them instead"

    .line 125
    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_2

    .line 127
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/e$a;

    .line 128
    iget-object v3, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v5, Lcom/birbit/android/jobqueue/messaging/a/e;

    invoke-virtual {v3, v5}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v3

    check-cast v3, Lcom/birbit/android/jobqueue/messaging/a/e;

    .line 129
    invoke-virtual {v3, v4}, Lcom/birbit/android/jobqueue/messaging/a/e;->a(I)V

    .line 130
    iget-object v1, v1, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {v1, v3}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "there were waiting workers, poked them and I\'m done"

    .line 135
    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/e;->g()Z

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "nothing has been poked. are we above load factor? %s"

    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/e;->f()V

    :cond_4
    return-void
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "adding another consumer"

    .line 146
    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lcom/birbit/android/jobqueue/e$a;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    iget-object v1, v1, Lcom/birbit/android/jobqueue/j;->g:Lcom/birbit/android/jobqueue/messaging/e;

    new-instance v2, Lcom/birbit/android/jobqueue/messaging/f;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/e;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v4, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    const-string v5, "consumer"

    invoke-direct {v2, v3, v4, v5}, Lcom/birbit/android/jobqueue/messaging/f;-><init>(Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    iget-object v4, p0, Lcom/birbit/android/jobqueue/e;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/birbit/android/jobqueue/e$a;-><init>(Lcom/birbit/android/jobqueue/messaging/MessageQueue;Lcom/birbit/android/jobqueue/messaging/f;Lcom/birbit/android/jobqueue/messaging/c;Lcom/birbit/android/jobqueue/timer/Timer;)V

    .line 149
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/e;->i:Ljava/lang/ThreadGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "job-queue-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 150
    iget v2, p0, Lcom/birbit/android/jobqueue/e;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 151
    iget-object v2, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private g()Z
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 157
    iget v1, p0, Lcom/birbit/android/jobqueue/e;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "too many consumers, clearly above load factor %s"

    invoke-static {v0, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/j;->d()I

    move-result v1

    .line 162
    iget-object v4, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 164
    iget v5, p0, Lcom/birbit/android/jobqueue/e;->h:I

    mul-int v5, v5, v0

    add-int v6, v1, v4

    if-lt v5, v6, :cond_2

    iget v5, p0, Lcom/birbit/android/jobqueue/e;->e:I

    if-ge v0, v5, :cond_1

    if-ge v0, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    iget v0, p0, Lcom/birbit/android/jobqueue/e;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    iget v2, p0, Lcom/birbit/android/jobqueue/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    iget v2, p0, Lcom/birbit/android/jobqueue/e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s runningsHolders: %s. isAbove:%s"

    invoke-static {v0, v6}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method


# virtual methods
.method a(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/o;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, v0}, Lcom/birbit/android/jobqueue/e;->a(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/e;->a(Z)V

    return-void
.end method

.method a(Lcom/birbit/android/jobqueue/messaging/a/j;Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/m;)V
    .locals 6

    .line 270
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/j;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/birbit/android/jobqueue/e$a;

    .line 271
    iget-boolean v0, p1, Lcom/birbit/android/jobqueue/e$a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p1, Lcom/birbit/android/jobqueue/e$a;->e:Z

    .line 275
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/n;->b(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 278
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/m;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/m;->b()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/m;->b()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lcom/birbit/android/jobqueue/n;->a(Ljava/lang/String;J)V

    :cond_0
    return-void

    .line 272
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this worker should not have a job"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/birbit/android/jobqueue/messaging/a/g;)Z
    .locals 10

    .line 177
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/e$a;

    .line 178
    iget-boolean v1, v0, Lcom/birbit/android/jobqueue/e$a;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 182
    iget-object v3, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    invoke-virtual {v3}, Lcom/birbit/android/jobqueue/j;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    iget-object v4, p0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {v4}, Lcom/birbit/android/jobqueue/n;->a()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/birbit/android/jobqueue/j;->a(Ljava/util/Collection;)Lcom/birbit/android/jobqueue/h;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 187
    iput-boolean v2, v0, Lcom/birbit/android/jobqueue/e$a;->e:Z

    .line 188
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/birbit/android/jobqueue/n;->a(Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v3, Lcom/birbit/android/jobqueue/messaging/a/i;

    invoke-virtual {p1, v3}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object p1

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/i;

    .line 190
    invoke-virtual {p1, v1}, Lcom/birbit/android/jobqueue/messaging/a/i;->a(Lcom/birbit/android/jobqueue/h;)V

    .line 191
    iget-object v3, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/birbit/android/jobqueue/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/birbit/android/jobqueue/e;->a:Lcom/birbit/android/jobqueue/n;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/birbit/android/jobqueue/n;->a(Ljava/lang/String;)V

    .line 195
    :cond_2
    iget-object v0, v0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return v2

    .line 198
    :cond_3
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/g;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/birbit/android/jobqueue/e;->f:J

    add-long/2addr v4, v6

    new-array p1, v2, [Ljava/lang/Object;

    .line 199
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, p1, v6

    const-string v1, "keep alive: %s"

    invoke-static {v1, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, Lcom/birbit/android/jobqueue/e;->e:I

    if-le p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 201
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v7

    cmp-long v1, v4, v7

    if-gez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v2

    const-string v3, "Consumer idle, will kill? %s . isRunning: %s"

    invoke-static {v3, v8}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 204
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/e;

    invoke-virtual {p1, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object p1

    check-cast p1, Lcom/birbit/android/jobqueue/messaging/a/e;

    .line 205
    invoke-virtual {p1, v2}, Lcom/birbit/android/jobqueue/messaging/a/e;->a(I)V

    .line 206
    iget-object v1, v0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {v1, p1}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    .line 207
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-array p1, v2, [Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v6

    const-string v0, "killed consumers. remaining consumers %d"

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_b

    .line 211
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 212
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 217
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez p1, :cond_9

    .line 219
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->j:Lcom/birbit/android/jobqueue/j;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/j;->a()Z

    move-result v1

    if-nez v1, :cond_b

    .line 220
    :cond_9
    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v3, Lcom/birbit/android/jobqueue/messaging/a/e;

    invoke-virtual {v1, v3}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/messaging/a/e;

    .line 221
    invoke-virtual {v1, v7}, Lcom/birbit/android/jobqueue/messaging/a/e;->a(I)V

    if-nez p1, :cond_a

    .line 223
    iget-object p1, p0, Lcom/birbit/android/jobqueue/e;->k:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {p1}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/birbit/android/jobqueue/e;->f:J

    add-long/2addr v3, v7

    move-wide v4, v3

    .line 225
    :cond_a
    iget-object p1, v0, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v1, v4, v5}, Lcom/birbit/android/jobqueue/messaging/f;->postAt(Lcom/birbit/android/jobqueue/messaging/b;J)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 226
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v6

    const-string v0, "poke consumer manager at %s"

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return v6
.end method

.method public a(Lcom/birbit/android/jobqueue/scheduling/a;J)Z
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/h;

    .line 297
    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->c()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, p2, p3}, Lcom/birbit/android/jobqueue/h;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    .line 305
    :cond_2
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/scheduling/a;->c()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p2, p3}, Lcom/birbit/android/jobqueue/h;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/o;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 241
    invoke-direct {p0, p1, p2, v0}, Lcom/birbit/android/jobqueue/e;->a(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/e;->a(Z)V

    return-void
.end method

.method c()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/e$a;

    .line 104
    iget-object v1, v1, Lcom/birbit/android/jobqueue/e$a;->a:Lcom/birbit/android/jobqueue/messaging/f;

    .line 105
    iget-object v2, p0, Lcom/birbit/android/jobqueue/e;->l:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v3, Lcom/birbit/android/jobqueue/messaging/a/e;

    invoke-virtual {v2, v3}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v2

    check-cast v2, Lcom/birbit/android/jobqueue/messaging/a/e;

    const/4 v3, 0x2

    .line 106
    invoke-virtual {v2, v3}, Lcom/birbit/android/jobqueue/messaging/a/e;->a(I)V

    .line 107
    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 111
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/birbit/android/jobqueue/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/birbit/android/jobqueue/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
