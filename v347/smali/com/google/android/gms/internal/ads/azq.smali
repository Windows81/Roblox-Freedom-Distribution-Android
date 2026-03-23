.class final Lcom/google/android/gms/internal/ads/azq;
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
.field private final synthetic a:Lcom/google/android/gms/internal/ads/agv;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ayy;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/lo;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/azk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azk;Lcom/google/android/gms/internal/ads/agv;Lcom/google/android/gms/internal/ads/ayy;Lcom/google/android/gms/internal/ads/lo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azq;->d:Lcom/google/android/gms/internal/ads/azk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azq;->a:Lcom/google/android/gms/internal/ads/agv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/azq;->b:Lcom/google/android/gms/internal/ads/ayy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/azq;->c:Lcom/google/android/gms/internal/ads/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azq;->d:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azq;->d:Lcom/google/android/gms/internal/ads/azk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azk;->d(Lcom/google/android/gms/internal/ads/azk;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azq;->d:Lcom/google/android/gms/internal/ads/azk;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/azk;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azq;->d:Lcom/google/android/gms/internal/ads/azk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azq;->a:Lcom/google/android/gms/internal/ads/agv;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/azk;->a(Lcom/google/android/gms/internal/ads/agv;)Lcom/google/android/gms/internal/ads/bab;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/azq;->b:Lcom/google/android/gms/internal/ads/ayy;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azq;->c:Lcom/google/android/gms/internal/ads/lo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ayy;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
