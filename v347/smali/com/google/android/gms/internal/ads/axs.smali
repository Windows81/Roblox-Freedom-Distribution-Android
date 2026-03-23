.class final Lcom/google/android/gms/internal/ads/axs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/axv;


# instance fields
.field private final synthetic a:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/axl;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/axs;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/axw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/gh;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/axw;->f:Lcom/google/android/gms/internal/ads/gh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/axs;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gh;->a(I)V

    :cond_0
    return-void
.end method
