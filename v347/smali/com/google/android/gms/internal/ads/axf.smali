.class final Lcom/google/android/gms/internal/ads/axf;
.super Lcom/google/android/gms/internal/ads/app;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/awv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axf;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/app;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axf;->a:Lcom/google/android/gms/internal/ads/awv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/awv;->a(Lcom/google/android/gms/internal/ads/awv;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/axg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/axg;-><init>(Lcom/google/android/gms/internal/ads/axf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
