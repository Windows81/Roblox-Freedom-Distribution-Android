.class public Lcom/roblox/client/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/b/e$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/concurrent/ThreadFactory;

.field private static final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/roblox/client/b/e;->a:I

    .line 27
    sget v0, Lcom/roblox/client/b/e;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/roblox/client/b/e;->b:I

    .line 30
    new-instance v0, Lcom/roblox/client/b/e$1;

    invoke-direct {v0}, Lcom/roblox/client/b/e$1;-><init>()V

    sput-object v0, Lcom/roblox/client/b/e;->c:Ljava/util/concurrent/ThreadFactory;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/roblox/client/b/e;->d:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 10

    .prologue
    .line 47
    const-class v9, Lcom/roblox/client/b/e;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/roblox/client/b/e;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    sget v3, Lcom/roblox/client/b/e;->b:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/roblox/client/b/e;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/roblox/client/b/e;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 59
    new-instance v0, Lcom/roblox/client/b/e$a;

    invoke-direct {v0}, Lcom/roblox/client/b/e$a;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 61
    sput-object v1, Lcom/roblox/client/b/e;->e:Ljava/util/concurrent/Executor;

    .line 63
    :cond_0
    sget-object v0, Lcom/roblox/client/b/e;->e:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method
