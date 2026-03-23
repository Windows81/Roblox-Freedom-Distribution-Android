.class final Lcom/google/a/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    const-class v1, Lcom/google/a/a/f;

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/google/a/a/f;->f()Lcom/google/android/gms/ads/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/google/android/gms/ads/a/a;

    iget-object v2, p0, Lcom/google/a/a/f$b;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/a/a;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/a;->a()V

    .line 75
    invoke-static {v0}, Lcom/google/a/a/f;->a(Lcom/google/android/gms/ads/a/a;)Lcom/google/android/gms/ads/a/a;
    :try_end_0
    .catch Lcom/google/android/gms/common/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Lcom/google/a/a/f;->a(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    :try_start_3
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 81
    :catch_1
    move-exception v0

    .line 86
    :try_start_4
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 83
    :catch_2
    move-exception v0

    .line 86
    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/google/a/a/f;->g()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
