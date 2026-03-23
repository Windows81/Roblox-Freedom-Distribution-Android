.class final Lcom/google/android/gms/internal/ads/axu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/axv;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/axw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/awv;Lcom/google/android/gms/internal/ads/axv;Lcom/google/android/gms/internal/ads/axw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axu;->a:Lcom/google/android/gms/internal/ads/axv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axu;->b:Lcom/google/android/gms/internal/ads/axw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axu;->a:Lcom/google/android/gms/internal/ads/axv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axu;->b:Lcom/google/android/gms/internal/ads/axw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/axv;->a(Lcom/google/android/gms/internal/ads/axw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not propagate interstitial ad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
