.class final Lcom/google/android/gms/internal/ads/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/nq;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cp;Lcom/google/android/gms/internal/ads/nq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cy;->a:Lcom/google/android/gms/internal/ads/nq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/cp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cp;->b(Lcom/google/android/gms/internal/ads/cp;)Lcom/google/android/gms/internal/ads/dl;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dl;->j:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cy;->a:Lcom/google/android/gms/internal/ads/nq;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/nq;)Lcom/google/android/gms/internal/ads/kf;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/kf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cp;->a:Lcom/google/android/gms/internal/ads/kf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/cp;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/jm;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cy;->b:Lcom/google/android/gms/internal/ads/cp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cp;->c(Lcom/google/android/gms/internal/ads/cp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
