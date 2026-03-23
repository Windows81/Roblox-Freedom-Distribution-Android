.class public final Lcom/google/android/gms/internal/ads/anw;
.super Lcom/google/android/gms/internal/ads/aos;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/anv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/anv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aos;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anw;->a:Lcom/google/android/gms/internal/ads/anv;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anw;->a:Lcom/google/android/gms/internal/ads/anv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/anv;->onAdClicked()V

    return-void
.end method
