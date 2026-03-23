.class public final Lcom/google/android/gms/internal/ads/jk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/ni;

.field private static final b:Lcom/google/android/gms/internal/ads/ni;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/16 v4, 0xa

    const/4 v9, 0x5

    const-string v0, "Default"

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/nj;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ni;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/jk;->a:Lcom/google/android/gms/internal/ads/ni;

    const-string v0, "Loader"

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jk;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v9

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/nj;->a(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/ni;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/jk;->b:Lcom/google/android/gms/internal/ads/ni;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/ads/nd",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/jk;->a:Lcom/google/android/gms/internal/ads/ni;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ni;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/nd",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/jk;->a:Lcom/google/android/gms/internal/ads/ni;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ni;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/jl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/jl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/internal/ads/nd",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/jk;->b:Lcom/google/android/gms/internal/ads/ni;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ni;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    return-object v0
.end method
