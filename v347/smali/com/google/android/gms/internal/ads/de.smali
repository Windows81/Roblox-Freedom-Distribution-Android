.class public abstract Lcom/google/android/gms/internal/ads/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dc;
.implements Lcom/google/android/gms/internal/ads/kf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dc;",
        "Lcom/google/android/gms/internal/ads/kf",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/nq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nq",
            "<",
            "Lcom/google/android/gms/internal/ads/zzaef;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dc;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/nq;Lcom/google/android/gms/internal/ads/dc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/nq",
            "<",
            "Lcom/google/android/gms/internal/ads/zzaef;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/de;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de;->a:Lcom/google/android/gms/internal/ads/nq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaej;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/de;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dc;->a(Lcom/google/android/gms/internal/ads/zzaej;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dq;Lcom/google/android/gms/internal/ads/zzaef;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/dn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dn;-><init>(Lcom/google/android/gms/internal/ads/dc;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/ads/dq;->a(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/dt;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->i()Lcom/google/android/gms/internal/ads/in;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/in;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dc;->a(Lcom/google/android/gms/internal/ads/zzaej;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->a()V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->d()Lcom/google/android/gms/internal/ads/dq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de;->b:Lcom/google/android/gms/internal/ads/dc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dc;->a(Lcom/google/android/gms/internal/ads/zzaej;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/de;->a()V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/de;->a:Lcom/google/android/gms/internal/ads/nq;

    new-instance v2, Lcom/google/android/gms/internal/ads/dg;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/dg;-><init>(Lcom/google/android/gms/internal/ads/de;Lcom/google/android/gms/internal/ads/dq;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/dh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dh;-><init>(Lcom/google/android/gms/internal/ads/de;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/nq;->a(Lcom/google/android/gms/internal/ads/nt;Lcom/google/android/gms/internal/ads/nr;)V

    goto :goto_0
.end method

.method public abstract d()Lcom/google/android/gms/internal/ads/dq;
.end method
