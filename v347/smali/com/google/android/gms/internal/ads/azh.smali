.class final Lcom/google/android/gms/internal/ads/azh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aza;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azh;->b:Lcom/google/android/gms/internal/ads/aza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azh;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aza;->a(Lcom/google/android/gms/internal/ads/aza;)Lcom/google/android/gms/internal/ads/qd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azh;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qd;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
