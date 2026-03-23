.class Lcom/birbit/android/jobqueue/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/birbit/android/jobqueue/o;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/birbit/android/jobqueue/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/birbit/android/jobqueue/h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/birbit/android/jobqueue/c;->b:Lcom/birbit/android/jobqueue/o;

    .line 27
    iput-object p2, p0, Lcom/birbit/android/jobqueue/c;->c:[Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/c;->e:Ljava/util/Collection;

    .line 30
    iput-object p3, p0, Lcom/birbit/android/jobqueue/c;->f:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    return-void
.end method


# virtual methods
.method a(Lcom/birbit/android/jobqueue/h;I)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 91
    iget-object p2, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/birbit/android/jobqueue/c;->e:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/birbit/android/jobqueue/j;)V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/h;

    const/4 v2, 0x3

    .line 61
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/h;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "job\'s on cancel has thrown an exception. Ignoring..."

    .line 63
    invoke-static {v2, v4, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_1
    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/g;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p1, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v2, v1}, Lcom/birbit/android/jobqueue/JobQueue;->remove(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->f:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    if-eqz v0, :cond_4

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/c;->e:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    iget-object v2, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/birbit/android/jobqueue/h;

    .line 73
    invoke-virtual {v3}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/birbit/android/jobqueue/c;->e:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/birbit/android/jobqueue/h;

    .line 76
    invoke-virtual {v3}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 78
    :cond_3
    new-instance v2, Lcom/birbit/android/jobqueue/CancelResult;

    invoke-direct {v2, v0, v1}, Lcom/birbit/android/jobqueue/CancelResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 79
    iget-object v0, p1, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/c;->f:Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    invoke-virtual {v0, v2, v1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/CancelResult;Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/h;

    .line 82
    iget-object v2, p1, Lcom/birbit/android/jobqueue/j;->f:Lcom/birbit/android/jobqueue/b;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/g;Z)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method a(Lcom/birbit/android/jobqueue/j;Lcom/birbit/android/jobqueue/e;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->b:Lcom/birbit/android/jobqueue/o;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/c;->c:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/birbit/android/jobqueue/e;->a(Lcom/birbit/android/jobqueue/o;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/birbit/android/jobqueue/c;->a:Ljava/util/Set;

    .line 35
    iget-object p2, p1, Lcom/birbit/android/jobqueue/j;->e:Lcom/birbit/android/jobqueue/d;

    .line 36
    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/d;->j()V

    .line 37
    iget-object v0, p1, Lcom/birbit/android/jobqueue/j;->a:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/birbit/android/jobqueue/d;->a(J)V

    .line 38
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->b:Lcom/birbit/android/jobqueue/o;

    invoke-virtual {p2, v0}, Lcom/birbit/android/jobqueue/d;->a(Lcom/birbit/android/jobqueue/o;)V

    .line 39
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->a:Ljava/util/Set;

    invoke-virtual {p2, v0}, Lcom/birbit/android/jobqueue/d;->b(Ljava/util/Collection;)V

    .line 40
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->c:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/birbit/android/jobqueue/d;->a([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p2, v0}, Lcom/birbit/android/jobqueue/d;->c(Z)V

    .line 42
    iget-object v0, p1, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v0, p2}, Lcom/birbit/android/jobqueue/JobQueue;->findJobs(Lcom/birbit/android/jobqueue/d;)Ljava/util/Set;

    move-result-object v0

    .line 44
    iget-object v1, p1, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v1, p2}, Lcom/birbit/android/jobqueue/JobQueue;->findJobs(Lcom/birbit/android/jobqueue/d;)Ljava/util/Set;

    move-result-object p2

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/h;

    .line 47
    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/h;->m()V

    .line 48
    iget-object v2, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, p1, Lcom/birbit/android/jobqueue/j;->c:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v2, v1}, Lcom/birbit/android/jobqueue/JobQueue;->onJobCancelled(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/h;

    .line 52
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/h;->m()V

    .line 53
    iget-object v1, p0, Lcom/birbit/android/jobqueue/c;->d:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p1, Lcom/birbit/android/jobqueue/j;->b:Lcom/birbit/android/jobqueue/JobQueue;

    invoke-interface {v1, v0}, Lcom/birbit/android/jobqueue/JobQueue;->onJobCancelled(Lcom/birbit/android/jobqueue/h;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/birbit/android/jobqueue/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
