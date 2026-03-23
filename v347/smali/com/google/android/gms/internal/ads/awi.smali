.class public final Lcom/google/android/gms/internal/ads/awi;
.super Lcom/google/android/gms/internal/ads/avt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/j$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/j$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/avt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awi;->a:Lcom/google/android/gms/ads/formats/j$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/avx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awi;->a:Lcom/google/android/gms/ads/formats/j$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/awa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/awa;-><init>(Lcom/google/android/gms/internal/ads/avx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/j$a;->onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/j;)V

    return-void
.end method
