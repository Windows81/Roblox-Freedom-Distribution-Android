.class final Lcom/google/android/gms/internal/ads/bdd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/ads/AdRequest$ErrorCode;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcy;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdd;->b:Lcom/google/android/gms/internal/ads/bcy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdd;->a:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdd;->b:Lcom/google/android/gms/internal/ads/bcy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bcy;->a(Lcom/google/android/gms/internal/ads/bcy;)Lcom/google/android/gms/internal/ads/bca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdd;->a:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bdl;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bca;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
