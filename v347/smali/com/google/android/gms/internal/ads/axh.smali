.class final Lcom/google/android/gms/internal/ads/axh;
.super Lcom/google/android/gms/internal/ads/asj;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/awv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axh;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/asj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/asf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axh;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/axi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/axi;-><init>(Lcom/google/android/gms/internal/ads/axh;Lcom/google/android/gms/internal/ads/asf;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
