.class final Lcom/google/android/gms/internal/ads/azp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/ae",
        "<",
        "Lcom/google/android/gms/internal/ads/bah;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bab;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ayy;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/azk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;Lcom/google/android/gms/internal/ads/ayy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azp;->c:Lcom/google/android/gms/internal/ads/azk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/bab;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azp;->b:Lcom/google/android/gms/internal/ads/ayy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->c:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/bab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nu;->b()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/bab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nu;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->c:Lcom/google/android/gms/internal/ads/azk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->c:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->c(Lcom/google/android/gms/internal/ads/azk;)Lcom/google/android/gms/internal/ads/kr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azp;->b:Lcom/google/android/gms/internal/ads/ayy;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/kr;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/bab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azp;->b:Lcom/google/android/gms/internal/ads/ayy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/nu;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azp;->c:Lcom/google/android/gms/internal/ads/azk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azp;->a:Lcom/google/android/gms/internal/ads/bab;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/bab;)Lcom/google/android/gms/internal/ads/bab;

    const-string v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
