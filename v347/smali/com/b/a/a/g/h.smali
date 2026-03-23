.class public Lcom/b/a/a/g/h;
.super Lcom/b/a/a/g/j;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/g/e;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/b/a/a/k/b;

.field private final e:Lcom/b/a/a/g/a;

.field private f:Z

.field private final g:Lcom/b/a/a/g/c;


# direct methods
.method public constructor <init>(Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, p2, p3}, Lcom/b/a/a/g/j;-><init>(Lcom/b/a/a/g/c;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/b/a/a/g/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    iput-boolean v1, p0, Lcom/b/a/a/g/h;->f:Z

    .line 18
    iput-object p2, p0, Lcom/b/a/a/g/h;->g:Lcom/b/a/a/g/c;

    .line 19
    iput-object p1, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    .line 20
    new-instance v0, Lcom/b/a/a/g/a;

    invoke-direct {v0, p2}, Lcom/b/a/a/g/a;-><init>(Lcom/b/a/a/g/c;)V

    iput-object v0, p0, Lcom/b/a/a/g/h;->e:Lcom/b/a/a/g/a;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/b/a/a/g/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v1, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    iget-object v2, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/b/a/a/k/b;->b(Ljava/lang/Object;)V

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/b/a/a/g/b;)V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/g/h;->f:Z

    .line 109
    invoke-super {p0, p1}, Lcom/b/a/a/g/j;->a(Lcom/b/a/a/g/b;)V

    .line 110
    iget-object v0, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    iget-object v2, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/b/a/a/k/b;->b(Ljava/lang/Object;)V

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/b/a/a/g/b;J)V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/g/h;->f:Z

    .line 118
    iget-object v0, p0, Lcom/b/a/a/g/h;->e:Lcom/b/a/a/g/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/a/g/a;->a(Lcom/b/a/a/g/b;J)V

    .line 119
    iget-object v0, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    iget-object v2, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/b/a/a/k/b;->b(Ljava/lang/Object;)V

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/b/a/a/g/d;)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-super {p0, p1}, Lcom/b/a/a/g/j;->b(Lcom/b/a/a/g/d;)V

    .line 127
    iget-object v0, p0, Lcom/b/a/a/g/h;->e:Lcom/b/a/a/g/a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/g/a;->a(Lcom/b/a/a/g/d;)V

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/b/a/a/g/f;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 29
    iget-object v0, p0, Lcom/b/a/a/g/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only 1 consumer per MQ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/a/g/f;->a()V

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/g/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0, p1}, Lcom/b/a/a/g/h;->b(Lcom/b/a/a/g/f;)Lcom/b/a/a/g/b;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1, v0}, Lcom/b/a/a/g/f;->a(Lcom/b/a/a/g/b;)V

    .line 37
    iget-object v1, p0, Lcom/b/a/a/g/h;->g:Lcom/b/a/a/g/c;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/c;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "[%s] finished queue"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/b/a/a/g/h;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method b(Lcom/b/a/a/g/f;)Lcom/b/a/a/g/b;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    .line 60
    :goto_0
    iget-object v2, p0, Lcom/b/a/a/g/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    iget-object v3, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v4

    .line 65
    iget-object v2, p0, Lcom/b/a/a/g/h;->e:Lcom/b/a/a/g/a;

    invoke-virtual {v2, v4, v5, p0}, Lcom/b/a/a/g/a;->a(JLcom/b/a/a/g/e;)Ljava/lang/Long;

    move-result-object v6

    .line 66
    invoke-super {p0}, Lcom/b/a/a/g/j;->c()Lcom/b/a/a/g/b;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    monitor-exit v3

    move-object v0, v2

    .line 102
    :goto_1
    return-object v0

    .line 70
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/b/a/a/g/h;->f:Z

    .line 71
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/b/a/a/g/f;->b()V

    move v0, v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_1
    iget-boolean v3, p0, Lcom/b/a/a/g/h;->f:Z

    if-eqz v3, :cond_2

    .line 80
    monitor-exit v2

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 71
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 82
    :cond_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gtz v3, :cond_3

    .line 83
    const-string v3, "[%s] next message is ready, requery"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/b/a/a/g/h;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    monitor-exit v2

    goto :goto_0

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/b/a/a/g/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    if-nez v6, :cond_5

    .line 89
    :try_start_4
    const-string v3, "[%s] will wait on the lock forever"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/b/a/a/g/h;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    iget-object v4, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/b/a/a/k/b;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 92
    :cond_5
    :try_start_6
    const-string v3, "[%s] will wait on the lock until %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/b/a/a/g/h;->a:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v3, p0, Lcom/b/a/a/g/h;->d:Lcom/b/a/a/k/b;

    iget-object v4, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Lcom/b/a/a/k/b;->a(Ljava/lang/Object;J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 96
    :catch_0
    move-exception v3

    goto :goto_2

    .line 102
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/b/a/a/g/h;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    invoke-super {p0}, Lcom/b/a/a/g/j;->b()V

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
