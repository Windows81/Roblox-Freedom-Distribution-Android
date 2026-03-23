.class final Lcom/google/android/gms/internal/ads/ip;
.super Lcom/google/android/gms/internal/ads/iy;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/in;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/in;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/in;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/iy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/arq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/in;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/in;->a(Lcom/google/android/gms/internal/ads/in;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/in;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/in;->b(Lcom/google/android/gms/internal/ads/in;)Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzang;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/arq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/in;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/in;->c(Lcom/google/android/gms/internal/ads/in;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->n()Lcom/google/android/gms/internal/ads/art;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ip;->a:Lcom/google/android/gms/internal/ads/in;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/in;->d(Lcom/google/android/gms/internal/ads/in;)Lcom/google/android/gms/internal/ads/arr;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/art;->a(Lcom/google/android/gms/internal/ads/arr;Lcom/google/android/gms/internal/ads/arq;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b_()V
    .locals 0

    return-void
.end method
