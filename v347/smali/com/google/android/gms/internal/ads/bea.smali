.class final Lcom/google/android/gms/internal/ads/bea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sn",
        "<",
        "Lcom/google/android/gms/internal/ads/so;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bdq;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bca;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bdy;Lcom/google/android/gms/internal/ads/bdq;Lcom/google/android/gms/internal/ads/bca;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bea;->c:Lcom/google/android/gms/internal/ads/bdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bea;->a:Lcom/google/android/gms/internal/ads/bdq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bea;->b:Lcom/google/android/gms/internal/ads/bca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bea;->a:Lcom/google/android/gms/internal/ads/bdq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bdq;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/mj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
