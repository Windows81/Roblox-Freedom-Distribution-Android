.class final Lcom/google/android/gms/internal/ads/aww;
.super Lcom/google/android/gms/internal/ads/aov;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/awv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aov;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/awx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/awx;-><init>(Lcom/google/android/gms/internal/ads/aww;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/awy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/awy;-><init>(Lcom/google/android/gms/internal/ads/aww;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/awz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/awz;-><init>(Lcom/google/android/gms/internal/ads/aww;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/axa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/axa;-><init>(Lcom/google/android/gms/internal/ads/aww;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/axb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/axb;-><init>(Lcom/google/android/gms/internal/ads/aww;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/axe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/axe;-><init>(Lcom/google/android/gms/internal/ads/aww;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aww;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/axd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/axd;-><init>(Lcom/google/android/gms/internal/ads/aww;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
