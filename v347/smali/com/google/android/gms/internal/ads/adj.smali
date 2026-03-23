.class final Lcom/google/android/gms/internal/ads/adj;
.super Lcom/google/android/gms/internal/ads/adp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/adp;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/adg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/adg;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/adg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/adp;-><init>(Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/adh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/adh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/adj;-><init>(Lcom/google/android/gms/internal/ads/adg;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/adi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/adg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/adi;-><init>(Lcom/google/android/gms/internal/ads/adg;Lcom/google/android/gms/internal/ads/adh;)V

    return-object v0
.end method
