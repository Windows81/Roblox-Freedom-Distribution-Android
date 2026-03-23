.class public Lcom/birbit/android/jobqueue/messaging/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/messaging/MessageQueue;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:[Lcom/birbit/android/jobqueue/messaging/h;

.field private final c:Lcom/birbit/android/jobqueue/messaging/a;

.field private final d:Lcom/birbit/android/jobqueue/timer/Timer;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private final g:Lcom/birbit/android/jobqueue/messaging/c;


# direct methods
.method public constructor <init>(Lcom/birbit/android/jobqueue/timer/Timer;Lcom/birbit/android/jobqueue/messaging/c;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->f:Z

    .line 24
    new-instance v0, Lcom/birbit/android/jobqueue/messaging/a;

    invoke-direct {v0, p2}, Lcom/birbit/android/jobqueue/messaging/a;-><init>(Lcom/birbit/android/jobqueue/messaging/c;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->c:Lcom/birbit/android/jobqueue/messaging/a;

    .line 25
    iput-object p2, p0, Lcom/birbit/android/jobqueue/messaging/e;->g:Lcom/birbit/android/jobqueue/messaging/c;

    .line 26
    sget p2, Lcom/birbit/android/jobqueue/messaging/g;->o:I

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Lcom/birbit/android/jobqueue/messaging/h;

    iput-object p2, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    .line 27
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    return-void
.end method


# virtual methods
.method public a(Lcom/birbit/android/jobqueue/messaging/d;)Lcom/birbit/android/jobqueue/messaging/b;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 71
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    invoke-interface {v3}, Lcom/birbit/android/jobqueue/timer/Timer;->nanoTime()J

    move-result-wide v3

    const-string v5, "[%s] looking for next message at time %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "priority_mq"

    aput-object v8, v7, v0

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v5, p0, Lcom/birbit/android/jobqueue/messaging/e;->c:Lcom/birbit/android/jobqueue/messaging/a;

    invoke-virtual {v5, v3, v4, p0}, Lcom/birbit/android/jobqueue/messaging/a;->a(JLcom/birbit/android/jobqueue/messaging/MessageQueue;)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "[%s] next delayed job %s"

    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "priority_mq"

    aput-object v10, v8, v0

    aput-object v5, v8, v9

    .line 75
    invoke-static {v7, v8}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget v7, Lcom/birbit/android/jobqueue/messaging/g;->o:I

    :goto_1
    if-ltz v7, :cond_2

    .line 77
    iget-object v8, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    aget-object v8, v8, v7

    if-nez v8, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    invoke-virtual {v8}, Lcom/birbit/android/jobqueue/messaging/h;->a()Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 83
    monitor-exit v2

    return-object v8

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 86
    :cond_2
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->f:Z

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/messaging/d;->b()V

    const/4 v1, 0x1

    .line 92
    :cond_3
    iget-object v7, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    const-string v2, "[%s] did on idle post a message? %s"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "priority_mq"

    aput-object v8, v6, v0

    .line 93
    iget-boolean v8, p0, Lcom/birbit/android/jobqueue/messaging/e;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v2, v6}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-boolean v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->f:Z

    if-eqz v2, :cond_4

    .line 96
    monitor-exit v7

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 98
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v3

    if-gtz v2, :cond_5

    .line 99
    monitor-exit v7

    goto :goto_0

    .line 101
    :cond_5
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_7

    if-nez v5, :cond_6

    .line 104
    :try_start_2
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/birbit/android/jobqueue/timer/Timer;->waitOnObject(Ljava/lang/Object;)V

    goto :goto_3

    .line 106
    :cond_6
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v3, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/birbit/android/jobqueue/timer/Timer;->waitOnObjectUntilNs(Ljava/lang/Object;J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :catch_0
    :cond_7
    :goto_3
    :try_start_3
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 87
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public cancelMessages(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 141
    :goto_0
    :try_start_0
    sget v2, Lcom/birbit/android/jobqueue/messaging/g;->o:I

    if-gt v1, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {v2, p1}, Lcom/birbit/android/jobqueue/messaging/h;->a(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->c:Lcom/birbit/android/jobqueue/messaging/a;

    invoke-virtual {v1, p1}, Lcom/birbit/android/jobqueue/messaging/a;->a(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public clear()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget v1, Lcom/birbit/android/jobqueue/messaging/g;->o:I

    :goto_0
    if-ltz v1, :cond_1

    .line 49
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/messaging/h;->clear()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public consume(Lcom/birbit/android/jobqueue/messaging/d;)V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/messaging/e;->a(Lcom/birbit/android/jobqueue/messaging/d;)Lcom/birbit/android/jobqueue/messaging/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "priority_mq"

    aput-object v4, v2, v3

    .line 38
    iget-object v3, v0, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    aput-object v3, v2, v1

    const-string v3, "[%s] consuming message of type %s"

    invoke-static {v3, v2}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/messaging/d;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    .line 40
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->g:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-virtual {v2, v0}, Lcom/birbit/android/jobqueue/messaging/c;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    goto :goto_0

    :cond_1
    return-void

    .line 33
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
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 119
    :try_start_0
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->f:Z

    .line 120
    iget-object v1, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    iget v1, v1, Lcom/birbit/android/jobqueue/messaging/g;->n:I

    .line 121
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    new-instance v3, Lcom/birbit/android/jobqueue/messaging/h;

    iget-object v4, p0, Lcom/birbit/android/jobqueue/messaging/e;->g:Lcom/birbit/android/jobqueue/messaging/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    invoke-virtual {v6}, Lcom/birbit/android/jobqueue/messaging/g;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/birbit/android/jobqueue/messaging/h;-><init>(Lcom/birbit/android/jobqueue/messaging/c;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->b:[Lcom/birbit/android/jobqueue/messaging/h;

    aget-object v1, v2, v1

    invoke-virtual {v1, p1}, Lcom/birbit/android/jobqueue/messaging/h;->post(Lcom/birbit/android/jobqueue/messaging/b;)V

    .line 125
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/birbit/android/jobqueue/timer/Timer;->notifyObject(Ljava/lang/Object;)V

    .line 126
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

    .line 131
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 132
    :try_start_0
    iput-boolean v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->f:Z

    .line 133
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->c:Lcom/birbit/android/jobqueue/messaging/a;

    invoke-virtual {v1, p1, p2, p3}, Lcom/birbit/android/jobqueue/messaging/a;->a(Lcom/birbit/android/jobqueue/messaging/b;J)V

    .line 134
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object p2, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/birbit/android/jobqueue/timer/Timer;->notifyObject(Ljava/lang/Object;)V

    .line 135
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

    .line 60
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/e;->d:Lcom/birbit/android/jobqueue/timer/Timer;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/e;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/birbit/android/jobqueue/timer/Timer;->notifyObject(Ljava/lang/Object;)V

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
