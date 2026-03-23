.class public Lcom/birbit/android/jobqueue/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/birbit/android/jobqueue/messaging/f;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/birbit/android/jobqueue/callback/JobManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/birbit/android/jobqueue/messaging/c;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/birbit/android/jobqueue/timer/Timer;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/birbit/android/jobqueue/messaging/c;Lcom/birbit/android/jobqueue/timer/Timer;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iput-object p2, p0, Lcom/birbit/android/jobqueue/b;->e:Lcom/birbit/android/jobqueue/timer/Timer;

    .line 35
    new-instance v0, Lcom/birbit/android/jobqueue/messaging/f;

    const-string v1, "jq_callback"

    invoke-direct {v0, p2, p1, v1}, Lcom/birbit/android/jobqueue/messaging/f;-><init>(Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    .line 36
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/birbit/android/jobqueue/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    iput-object p1, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/b;)Lcom/birbit/android/jobqueue/timer/Timer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/birbit/android/jobqueue/b;->e:Lcom/birbit/android/jobqueue/timer/Timer;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/b;Lcom/birbit/android/jobqueue/messaging/a/b;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/messaging/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/birbit/android/jobqueue/b;Lcom/birbit/android/jobqueue/messaging/a/d;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/b;->a(Lcom/birbit/android/jobqueue/messaging/a/d;)V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/b;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->f()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->d()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/birbit/android/jobqueue/b;->d(Lcom/birbit/android/jobqueue/g;I)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->f()Lcom/birbit/android/jobqueue/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/b;->c(Lcom/birbit/android/jobqueue/g;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->f()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->e()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/birbit/android/jobqueue/b;->b(Lcom/birbit/android/jobqueue/g;Z)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->f()Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->d()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/birbit/android/jobqueue/b;->c(Lcom/birbit/android/jobqueue/g;I)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/b;->f()Lcom/birbit/android/jobqueue/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/b;->d(Lcom/birbit/android/jobqueue/g;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/a/d;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/d;->c()Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/a/d;->d()Lcom/birbit/android/jobqueue/CancelResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;->onCancelled(Lcom/birbit/android/jobqueue/CancelResult;)V

    .line 103
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->a()V

    return-void
.end method

.method static synthetic b(Lcom/birbit/android/jobqueue/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/birbit/android/jobqueue/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/birbit/android/jobqueue/b$1;

    invoke-direct {v1, p0}, Lcom/birbit/android/jobqueue/b$1;-><init>(Lcom/birbit/android/jobqueue/b;)V

    const-string v2, "job-manager-callbacks"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Lcom/birbit/android/jobqueue/g;Z)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;

    .line 128
    invoke-interface {v1, p1, p2}, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;->onJobCancelled(Lcom/birbit/android/jobqueue/g;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/birbit/android/jobqueue/g;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;

    .line 146
    invoke-interface {v1, p1}, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;->onDone(Lcom/birbit/android/jobqueue/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcom/birbit/android/jobqueue/g;I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;

    .line 134
    invoke-interface {v1, p1, p2}, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;->onJobRun(Lcom/birbit/android/jobqueue/g;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(Lcom/birbit/android/jobqueue/g;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;

    .line 152
    invoke-interface {v1, p1}, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;->onJobAdded(Lcom/birbit/android/jobqueue/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/birbit/android/jobqueue/g;I)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;

    .line 140
    invoke-interface {v1, p1, p2}, Lcom/birbit/android/jobqueue/callback/JobManagerCallback;->onAfterJobRun(Lcom/birbit/android/jobqueue/g;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/birbit/android/jobqueue/CancelResult;Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/d;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/d;

    .line 207
    invoke-virtual {v0, p2, p1}, Lcom/birbit/android/jobqueue/messaging/a/d;->a(Lcom/birbit/android/jobqueue/CancelResult$AsyncCancelCallback;Lcom/birbit/android/jobqueue/CancelResult;)V

    .line 208
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    .line 209
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->a()V

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;)V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/b;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/b;

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/messaging/a/b;->a(Lcom/birbit/android/jobqueue/g;I)V

    .line 193
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;I)V
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/b;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/b;

    const/4 v1, 0x2

    .line 161
    invoke-virtual {v0, p1, v1, p2}, Lcom/birbit/android/jobqueue/messaging/a/b;->a(Lcom/birbit/android/jobqueue/g;II)V

    .line 162
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method

.method public a(Lcom/birbit/android/jobqueue/g;Z)V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/b;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/b;

    const/4 v1, 0x3

    .line 183
    invoke-virtual {v0, p1, v1, p2}, Lcom/birbit/android/jobqueue/messaging/a/b;->a(Lcom/birbit/android/jobqueue/g;IZ)V

    .line 184
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method

.method public b(Lcom/birbit/android/jobqueue/g;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/b;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/b;

    const/4 v1, 0x4

    .line 201
    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/messaging/a/b;->a(Lcom/birbit/android/jobqueue/g;I)V

    .line 202
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method

.method public b(Lcom/birbit/android/jobqueue/g;I)V
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/birbit/android/jobqueue/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b;->c:Lcom/birbit/android/jobqueue/messaging/c;

    const-class v1, Lcom/birbit/android/jobqueue/messaging/a/b;

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/c;->a(Ljava/lang/Class;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    check-cast v0, Lcom/birbit/android/jobqueue/messaging/a/b;

    const/4 v1, 0x5

    .line 174
    invoke-virtual {v0, p1, v1, p2}, Lcom/birbit/android/jobqueue/messaging/a/b;->a(Lcom/birbit/android/jobqueue/g;II)V

    .line 175
    iget-object p1, p0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/f;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method
