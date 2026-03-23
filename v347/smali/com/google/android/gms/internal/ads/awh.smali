.class public final Lcom/google/android/gms/internal/ads/awh;
.super Lcom/google/android/gms/internal/ads/avn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/i$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/i$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/avn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awh;->a:Lcom/google/android/gms/ads/formats/i$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/auy;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awh;->a:Lcom/google/android/gms/ads/formats/i$b;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/avb;->a(Lcom/google/android/gms/internal/ads/auy;)Lcom/google/android/gms/internal/ads/avb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/i$b;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/i;)V

    return-void
.end method
