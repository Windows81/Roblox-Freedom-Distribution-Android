.class public Lcom/roblox/client/analytics/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/analytics/h$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/util/concurrent/ThreadFactory;

.field private static final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/roblox/client/analytics/h;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 27
    sput v0, Lcom/roblox/client/analytics/h;->b:I

    .line 30
    new-instance v0, Lcom/roblox/client/analytics/h$1;

    invoke-direct {v0}, Lcom/roblox/client/analytics/h$1;-><init>()V

    sput-object v0, Lcom/roblox/client/analytics/h;->c:Ljava/util/concurrent/ThreadFactory;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/roblox/client/analytics/h;->d:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 10

    const-class v0, Lcom/roblox/client/analytics/h;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/roblox/client/analytics/h;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    sget v4, Lcom/roblox/client/analytics/h;->b:I

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/roblox/client/analytics/h;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/roblox/client/analytics/h;->c:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 59
    new-instance v2, Lcom/roblox/client/analytics/h$a;

    invoke-direct {v2}, Lcom/roblox/client/analytics/h$a;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 61
    sput-object v1, Lcom/roblox/client/analytics/h;->e:Ljava/util/concurrent/Executor;

    .line 63
    :cond_0
    sget-object v1, Lcom/roblox/client/analytics/h;->e:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
