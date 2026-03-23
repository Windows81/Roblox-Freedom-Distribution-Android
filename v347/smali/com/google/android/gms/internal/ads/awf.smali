.class public final Lcom/google/android/gms/internal/ads/awf;
.super Lcom/google/android/gms/internal/ads/avk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/i$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/i$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/avk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awf;->a:Lcom/google/android/gms/ads/formats/i$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/auy;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awf;->a:Lcom/google/android/gms/ads/formats/i$a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/avb;->a(Lcom/google/android/gms/internal/ads/auy;)Lcom/google/android/gms/internal/ads/avb;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/ads/formats/i$a;->onCustomClick(Lcom/google/android/gms/ads/formats/i;Ljava/lang/String;)V

    return-void
.end method
