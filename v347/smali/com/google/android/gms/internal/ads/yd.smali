.class public final Lcom/google/android/gms/internal/ads/yd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yt;

.field private final b:Lcom/google/android/gms/internal/ads/yt;


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yt;->a([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/yt;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/yt;->a([B)Lcom/google/android/gms/internal/ads/yt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->b:Lcom/google/android/gms/internal/ads/yt;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/yt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->a()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->b:Lcom/google/android/gms/internal/ads/yt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yd;->b:Lcom/google/android/gms/internal/ads/yt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yt;->a()[B

    move-result-object v0

    goto :goto_0
.end method
