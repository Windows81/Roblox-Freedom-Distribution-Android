.class final Lcom/google/android/gms/internal/ads/azg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aza;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azg;->b:Lcom/google/android/gms/internal/ads/aza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azg;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azg;->b:Lcom/google/android/gms/internal/ads/aza;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aza;->a(Lcom/google/android/gms/internal/ads/aza;)Lcom/google/android/gms/internal/ads/qd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azg;->a:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/qd;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
