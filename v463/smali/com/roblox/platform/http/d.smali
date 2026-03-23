.class public Lcom/roblox/platform/http/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/lang/Runnable;

.field private final d:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/roblox/platform/http/d;->a:Ljava/util/Deque;

    .line 21
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/roblox/platform/http/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    iput p2, p0, Lcom/roblox/platform/http/d;->d:I

    return-void
.end method

.method private declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/roblox/platform/http/d;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/roblox/platform/http/d;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/roblox/platform/http/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget v2, p0, Lcom/roblox/platform/http/d;->d:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 47
    iget-object v0, p0, Lcom/roblox/platform/http/d;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/roblox/platform/http/d;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/roblox/platform/http/d;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/roblox/platform/http/d;->a:Ljava/util/Deque;

    new-instance v1, Lcom/roblox/platform/http/d$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/platform/http/d$1;-><init>(Lcom/roblox/platform/http/d;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/roblox/platform/http/d;->c:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/roblox/platform/http/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
