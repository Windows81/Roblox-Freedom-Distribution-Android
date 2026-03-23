.class final Lcom/google/android/gms/internal/ads/awq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/awo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/no;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awo;Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/zzsg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awq;->b:Lcom/google/android/gms/internal/ads/no;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/awq;->c:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awo;->b(Lcom/google/android/gms/internal/ads/awo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awo;->c(Lcom/google/android/gms/internal/ads/awo;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awo;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/awo;->a(Lcom/google/android/gms/internal/ads/awo;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awq;->a:Lcom/google/android/gms/internal/ads/awo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awo;->d(Lcom/google/android/gms/internal/ads/awo;)Lcom/google/android/gms/internal/ads/awj;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/awr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/awq;->b:Lcom/google/android/gms/internal/ads/no;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/awq;->c:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/awr;-><init>(Lcom/google/android/gms/internal/ads/awq;Lcom/google/android/gms/internal/ads/awj;Lcom/google/android/gms/internal/ads/no;Lcom/google/android/gms/internal/ads/zzsg;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jk;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/nd;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/awq;->b:Lcom/google/android/gms/internal/ads/no;

    new-instance v3, Lcom/google/android/gms/internal/ads/aws;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/awq;->b:Lcom/google/android/gms/internal/ads/no;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/aws;-><init>(Lcom/google/android/gms/internal/ads/no;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/nj;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/no;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
