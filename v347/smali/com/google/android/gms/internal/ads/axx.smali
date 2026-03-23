.class final Lcom/google/android/gms/internal/ads/axx;
.super Lcom/google/android/gms/internal/ads/aov;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aou;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aou;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aov;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/ayh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/aro;->bb:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ads/aro;->bc:Lcom/google/android/gms/internal/ads/are;

    invoke-static {}, Lcom/google/android/gms/internal/ads/aoo;->f()Lcom/google/android/gms/internal/ads/arm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/arm;->a(Lcom/google/android/gms/internal/ads/are;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v1, :cond_0

    if-gez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->r()Lcom/google/android/gms/internal/ads/axz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axz;->a()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aou;->a()V

    return-void

    :cond_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/ads/jm;->a:Landroid/os/Handler;

    sget-object v3, Lcom/google/android/gms/internal/ads/axy;->a:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/aou;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aou;->b()V

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aou;->c()V

    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aou;->d()V

    return-void
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aou;->e()V

    return-void
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axx;->a:Lcom/google/android/gms/internal/ads/aou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aou;->f()V

    return-void
.end method
