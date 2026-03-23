.class public final Lcom/google/android/gms/internal/ads/awd;
.super Lcom/google/android/gms/internal/ads/avd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/g$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/g$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/avd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awd;->a:Lcom/google/android/gms/ads/formats/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/auq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awd;->a:Lcom/google/android/gms/ads/formats/g$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/aut;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/aut;-><init>(Lcom/google/android/gms/internal/ads/auq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/g$a;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/g;)V

    return-void
.end method
