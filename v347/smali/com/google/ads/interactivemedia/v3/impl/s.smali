.class public Lcom/google/ads/interactivemedia/v3/impl/s;
.super Lcom/google/ads/interactivemedia/v3/impl/ab;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;J)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/impl/ab;-><init>(J)V

    .line 18
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/s;->a:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/s;->a:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    const-string v0, "IMASDK"

    const-string v1, "ContentProgressProvider.getContentProgress() is null. Use VideoProgressUpdate.VIDEO_TIME_NOT_READY instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 29
    :cond_0
    return-object v0
.end method
