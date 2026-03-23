.class final Lcom/google/android/gms/internal/ads/azt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/nt",
        "<",
        "Lcom/google/android/gms/internal/ads/ayy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bab;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/azk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azt;->a:Lcom/google/android/gms/internal/ads/bab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->b(Lcom/google/android/gms/internal/ads/azk;)Lcom/google/android/gms/internal/ads/bab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->a:Lcom/google/android/gms/internal/ads/bab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/azk;->b(Lcom/google/android/gms/internal/ads/azk;)Lcom/google/android/gms/internal/ads/bab;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->b(Lcom/google/android/gms/internal/ads/azk;)Lcom/google/android/gms/internal/ads/bab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bab;->e()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azt;->b:Lcom/google/android/gms/internal/ads/azk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azt;->a:Lcom/google/android/gms/internal/ads/bab;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;)Lcom/google/android/gms/internal/ads/bab;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
