.class public Lcom/birbit/android/jobqueue/messaging/f;
.super Lcom/birbit/android/jobqueue/messaging/h;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/messaging/MessageQueue;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/birbit/android/jobqueue/timer/Timer;

.field private final e:Lcom/birbit/android/jobqueue/messaging/a;

.field private f:Z

.field private final g:Lcom/birbit/android/jobqueue/messaging/c;


# direct methods
.method public constructor <init>(Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0, p2, p3}, Lcom/birbit/android/jobqueue/messaging/h;-><init>(Lcom/birbit/android/jobqueue/messaging/c;Ljava/lang/String;)V

    .line 9
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    .line 10
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/birbit/android/jobqueue/messaging/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->f:Z

    .line 18
    iput-object p2, p0, Lcom/birbit/android/jobqueue/messaging/f;->g:Lcom/birbit/android/jobqueue/messaging/c;

    .line 19
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    .line 20
    new-instance p1, Lcom/birbit/android/jobqueue/messaging/a;

    invoke-direct {p1, p2}, Lcom/birbit/android/jobqueue/messaging/a;-><init>(Lcom/birbit/android/jobqueue/messaging/c;)V

    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/f;->e:Lcom/birbit/android/jobqueue/messaging/a;

    return-void
.end method


# virtual methods
.method a(Lcom/birbit/android/jobqueue/messaging/d;)Lcom/birbit/android/jobqueue/messaging/b;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v3}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v3

    .line 65
    iget-object v5, p0, Lcom/birbit/android/jobqueue/messaging/f;->e:Lcom/birbit/android/jobqueue/messaging/a;

    invoke-virtual {v5, v3, v4, p0}, Lcom/birbit/android/jobqueue/messaging/a;->a(JLcom/birbit/android/jobqueue/messaging/MessageQueue;)Ljava/lang/Long;

    move-result-object v5

    .line 66
    invoke-super {p0}, Lcom/birbit/android/jobqueue/messaging/h;->a()Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 68
    monitor-exit v2

    return-object v6

    .line 70
    :cond_0
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->f:Z

    .line 71
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/d;->b()V

    const/4 v1, 0x1

    .line 78
    :cond_1
    iget-object v6, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 79
    :try_start_1
    iget-boolean v7, p0, Lcom/birbit/android/jobqueue/messaging/f;->f:Z

    if-eqz v7, :cond_2

    .line 80
    monitor-exit v6

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 82
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-gtz v9, :cond_3

    const-string v3, "[%s] next message is ready, requery"

    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    iget-object v4, p0, Lcom/birbit/android/jobqueue/messaging/f;->a:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    monitor-exit v6

    goto :goto_0

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    if-nez v5, :cond_4

    :try_start_2
    const-string v3, "[%s] will wait on the lock forever"

    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/birbit/android/jobqueue/messaging/f;->a:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/birbit/android/jobqueue/timer/Timer;->waitOnObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v3, "[%s] will wait on the lock until %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 92
    iget-object v7, p0, Lcom/birbit/android/jobqueue/messaging/f;->a:Ljava/lang/String;

    aput-object v7, v4, v0

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/birbit/android/jobqueue/timer/Timer;->waitOnObjectUntilNs(Ljava/lang/Object;J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :catch_0
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 71
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public cancelMessages(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-super {p0, p1}, Lcom/birbit/android/jobqueue/messaging/h;->a(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V

    .line 127
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->e:Lcom/birbit/android/jobqueue/messaging/a;

    invoke-virtual {v1, p1}, Lcom/birbit/android/jobqueue/messaging/a;->a(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-super {p0}, Lcom/birbit/android/jobqueue/messaging/h;->clear()V

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public consume(Lcom/birbit/android/jobqueue/messaging/d;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/d;->a()V

    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/messaging/f;->a(Lcom/birbit/android/jobqueue/messaging/d;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/d;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    .line 37
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/f;->g:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-virtual {v2, v0}, Lcom/birbit/android/jobqueue/messaging/c;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->a:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "[%s] finished queue"

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "only 1 consumer per MQ"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public post(Lcom/birbit/android/jobqueue/messaging/b;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 108
    :try_start_0
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->f:Z

    .line 109
    invoke-super {p0, p1}, Lcom/birbit/android/jobqueue/messaging/h;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    .line 110
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/birbit/android/jobqueue/timer/Timer;->notifyObject(Ljava/lang/Object;)V

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public postAt(Lcom/birbit/android/jobqueue/messaging/b;J)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 117
    :try_start_0
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->f:Z

    .line 118
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->e:Lcom/birbit/android/jobqueue/messaging/a;

    invoke-virtual {v1, p1, p2, p3}, Lcom/birbit/android/jobqueue/messaging/a;->a(Lcom/birbit/android/jobqueue/messaging/b;J)V

    .line 119
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object p2, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/birbit/android/jobqueue/timer/Timer;->notifyObject(Ljava/lang/Object;)V

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/f;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/f;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/birbit/android/jobqueue/timer/Timer;->notifyObject(Ljava/lang/Object;)V

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
