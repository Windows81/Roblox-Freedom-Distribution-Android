.class final synthetic Lcom/google/android/gms/internal/ads/bag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bae;

.field private final b:Lcom/google/android/gms/internal/ads/ayy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bae;Lcom/google/android/gms/internal/ads/ayy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/bae;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bag;->b:Lcom/google/android/gms/internal/ads/ayy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bag;->a:Lcom/google/android/gms/internal/ads/bae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bag;->b:Lcom/google/android/gms/internal/ads/ayy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bae;->a:Lcom/google/android/gms/internal/ads/bab;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bab;->a(Lcom/google/android/gms/internal/ads/bab;)Lcom/google/android/gms/internal/ads/kr;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/kr;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ayy;->a()V

    return-void
.end method
