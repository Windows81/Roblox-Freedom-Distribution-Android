.class final Lcom/google/android/gms/internal/ads/axi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/axv;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/asf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/axh;Lcom/google/android/gms/internal/ads/asf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axi;->a:Lcom/google/android/gms/internal/ads/asf;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/asi;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/axw;->d:Lcom/google/android/gms/internal/ads/asi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axi;->a:Lcom/google/android/gms/internal/ads/asf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/asi;->a(Lcom/google/android/gms/internal/ads/asf;)V

    :cond_0
    return-void
.end method
