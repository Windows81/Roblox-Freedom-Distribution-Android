.class public final Lcom/google/android/gms/internal/ads/ayf;
.super Lcom/google/android/gms/internal/ads/apg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Lcom/google/android/gms/internal/ads/awu;

.field private d:Lcom/google/android/gms/ads/internal/m;

.field private final e:Lcom/google/android/gms/internal/ads/axw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/awu;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/awu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bbu;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/bt;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/ayf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/awu;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/awu;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/apg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayf;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ayf;->c:Lcom/google/android/gms/internal/ads/awu;

    new-instance v0, Lcom/google/android/gms/internal/ads/axw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/axw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->r()Lcom/google/android/gms/internal/ads/axz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/axz;->a(Lcom/google/android/gms/internal/ads/awu;)V

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->c:Lcom/google/android/gms/internal/ads/awu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/awu;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    goto :goto_0
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final D()Lcom/google/android/gms/internal/ads/apo;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E()Lcom/google/android/gms/internal/ads/aou;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ayf;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/a;->c(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ba;->H()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ba;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/af;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/axw;->e:Lcom/google/android/gms/internal/ads/aor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aou;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/axw;->a:Lcom/google/android/gms/internal/ads/aou;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/axw;->b:Lcom/google/android/gms/internal/ads/apk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/axw;->c:Lcom/google/android/gms/internal/ads/apo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/apu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayf;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/apu;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/asi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/asi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/gh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/gh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzjn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->a(Lcom/google/android/gms/internal/ads/zzjn;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzlu;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzmu;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayf;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzjj;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/axz;->a(Lcom/google/android/gms/internal/ads/zzjj;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "gw"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayf;->c()V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/axz;->a(Lcom/google/android/gms/internal/ads/zzjj;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayf;->c()V

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjj;->j:Lcom/google/android/gms/internal/ads/zzmq;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayf;->c()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->r()Lcom/google/android/gms/internal/ads/axz;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/axz;->a(Lcom/google/android/gms/internal/ads/zzjj;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "_ad"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/axz;->b(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/axz;->a(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ayc;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/ayc;->e:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayc;->a()Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/aye;->a()Lcom/google/android/gms/internal/ads/aye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aye;->e()V

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ayc;->a:Lcom/google/android/gms/ads/internal/m;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ayc;->c:Lcom/google/android/gms/internal/ads/awv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/axw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayf;->e:Lcom/google/android/gms/internal/ads/axw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/axw;->a(Lcom/google/android/gms/ads/internal/m;)V

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ayc;->f:Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/aye;->a()Lcom/google/android/gms/internal/ads/aye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aye;->d()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayf;->c()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aye;->a()Lcom/google/android/gms/internal/ads/aye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aye;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ayf;->b:Z

    return-void
.end method

.method public final i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->i()V

    :cond_0
    return-void
.end method

.method public final j()Lcom/google/android/gms/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->j()Lcom/google/android/gms/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzjn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->k()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->m()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jd;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->o()V

    :cond_0
    return-void
.end method

.method public final p()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->p()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public final p_()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ba;->p_()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->q()V

    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayf;->d:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Lcom/google/android/gms/internal/ads/aqc;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
