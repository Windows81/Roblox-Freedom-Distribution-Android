.class final Lcom/google/android/gms/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/d/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/d/r",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/d/a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/j;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/d/j;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/d/j;->c:Lcom/google/android/gms/d/a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/d/j;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/j;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/d/j;)Lcom/google/android/gms/d/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/j;->c:Lcom/google/android/gms/d/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/d/f;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/d/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/j;->c:Lcom/google/android/gms/d/a;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/d/j;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/d/k;

    invoke-direct {v1, p0}, Lcom/google/android/gms/d/k;-><init>(Lcom/google/android/gms/d/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
