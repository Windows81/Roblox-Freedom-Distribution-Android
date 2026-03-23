.class public Lcom/b/a/a/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/g/e;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:[Lcom/b/a/a/g/j;

.field private final c:Lcom/b/a/a/g/a;

.field private final d:Lcom/b/a/a/k/b;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private final g:Lcom/b/a/a/g/c;


# direct methods
.method public constructor <init>(Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/b/a/a/g/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    iput-boolean v1, p0, Lcom/b/a/a/g/g;->f:Z

    .line 24
    new-instance v0, Lcom/b/a/a/g/a;

    invoke-direct {v0, p2}, Lcom/b/a/a/g/a;-><init>(Lcom/b/a/a/g/c;)V

    iput-object v0, p0, Lcom/b/a/a/g/g;->c:Lcom/b/a/a/g/a;

    .line 25
    iput-object p2, p0, Lcom/b/a/a/g/g;->g:Lcom/b/a/a/g/c;

    .line 26
    sget v0, Lcom/b/a/a/g/i;->o:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/b/a/a/g/j;

    iput-object v0, p0, Lcom/b/a/a/g/g;->b:[Lcom/b/a/a/g/j;

    .line 27
    iput-object p1, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget v0, Lcom/b/a/a/g/i;->o:I

    :goto_0
    if-ltz v0, :cond_1

    .line 49
    iget-object v2, p0, Lcom/b/a/a/g/g;->b:[Lcom/b/a/a/g/j;

    aget-object v2, v2, v0

    .line 50
    if-nez v2, :cond_0

    .line 48
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v2}, Lcom/b/a/a/g/j;->b()V

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-void
.end method

.method public a(Lcom/b/a/a/g/b;)V
    .locals 7

    .prologue
    .line 118
    iget-object v1, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/g/g;->f:Z

    .line 120
    iget-object v0, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    iget v0, v0, Lcom/b/a/a/g/i;->n:I

    .line 121
    iget-object v2, p0, Lcom/b/a/a/g/g;->b:[Lcom/b/a/a/g/j;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/b/a/a/g/g;->b:[Lcom/b/a/a/g/j;

    new-instance v3, Lcom/b/a/a/g/j;

    iget-object v4, p0, Lcom/b/a/a/g/g;->g:Lcom/b/a/a/g/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queue_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    invoke-virtual {v6}, Lcom/b/a/a/g/i;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/b/a/a/g/j;-><init>(Lcom/b/a/a/g/c;Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/b/a/a/g/g;->b:[Lcom/b/a/a/g/j;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1}, Lcom/b/a/a/g/j;->a(Lcom/b/a/a/g/b;)V

    .line 125
    iget-object v0, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    iget-object v2, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/b/a/a/k/b;->b(Ljava/lang/Object;)V

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
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
    .line 131
    iget-object v1, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/g/g;->f:Z

    .line 133
    iget-object v0, p0, Lcom/b/a/a/g/g;->c:Lcom/b/a/a/g/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/a/g/a;->a(Lcom/b/a/a/g/b;J)V

    .line 134
    iget-object v0, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    iget-object v2, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/b/a/a/k/b;->b(Ljava/lang/Object;)V

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/b/a/a/g/f;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 32
    iget-object v0, p0, Lcom/b/a/a/g/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only 1 consumer per MQ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/g/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/b/a/a/g/g;->b(Lcom/b/a/a/g/f;)Lcom/b/a/a/g/b;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "[%s] consuming message of type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "priority_mq"

    aput-object v4, v2, v3

    iget-object v3, v0, Lcom/b/a/a/g/b;->a:Lcom/b/a/a/g/i;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/b/a/a/g/f;->a(Lcom/b/a/a/g/b;)V

    .line 40
    iget-object v1, p0, Lcom/b/a/a/g/g;->g:Lcom/b/a/a/g/c;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/c;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public b(Lcom/b/a/a/g/f;)Lcom/b/a/a/g/b;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    .line 68
    :goto_0
    iget-object v2, p0, Lcom/b/a/a/g/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 71
    iget-object v4, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v6

    .line 73
    const-string v2, "[%s] looking for next message at time %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "priority_mq"

    aput-object v8, v3, v5

    const/4 v5, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v2, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Lcom/b/a/a/g/g;->c:Lcom/b/a/a/g/a;

    invoke-virtual {v2, v6, v7, p0}, Lcom/b/a/a/g/a;->a(JLcom/b/a/a/g/e;)Ljava/lang/Long;

    move-result-object v5

    .line 75
    const-string v2, "[%s] next delayed job %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "priority_mq"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    aput-object v5, v3, v8

    invoke-static {v2, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget v2, Lcom/b/a/a/g/i;->o:I

    move v3, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 77
    iget-object v2, p0, Lcom/b/a/a/g/g;->b:[Lcom/b/a/a/g/j;

    aget-object v2, v2, v3

    .line 78
    if-nez v2, :cond_1

    .line 76
    :cond_0
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v2}, Lcom/b/a/a/g/j;->c()Lcom/b/a/a/g/b;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    monitor-exit v4

    move-object v0, v2

    .line 113
    :goto_2
    return-object v0

    .line 86
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/b/a/a/g/g;->f:Z

    .line 87
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/b/a/a/g/f;->b()V

    move v0, v1

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_1
    const-string v3, "[%s] did on idle post a message? %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "priority_mq"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/b/a/a/g/g;->f:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-boolean v3, p0, Lcom/b/a/a/g/g;->f:Z

    if-eqz v3, :cond_4

    .line 96
    monitor-exit v2

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 87
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 98
    :cond_4
    if-eqz v5, :cond_5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gtz v3, :cond_5

    .line 99
    monitor-exit v2

    goto/16 :goto_0

    .line 101
    :cond_5
    iget-object v3, p0, Lcom/b/a/a/g/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    if-nez v5, :cond_7

    .line 104
    :try_start_4
    iget-object v3, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    iget-object v4, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/b/a/a/k/b;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :cond_6
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 106
    :cond_7
    :try_start_6
    iget-object v3, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    iget-object v4, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Lcom/b/a/a/k/b;->a(Ljava/lang/Object;J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 108
    :catch_0
    move-exception v3

    goto :goto_3

    .line 113
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b/a/a/g/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v1, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/g/g;->d:Lcom/b/a/a/k/b;

    iget-object v2, p0, Lcom/b/a/a/g/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/b/a/a/k/b;->b(Ljava/lang/Object;)V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
