.class final Lcom/google/android/gms/internal/ads/bdz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sn",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bdo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bdy;Lcom/google/android/gms/internal/ads/bdo;Lcom/google/android/gms/internal/ads/bca;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdz;->a:Lcom/google/android/gms/internal/ads/bdo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdz;->b:Lcom/google/android/gms/internal/ads/bca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdz;->a:Lcom/google/android/gms/internal/ads/bdo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bdo;->a(Ljava/lang/String;)V
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
