.class public Lcom/google/ads/interactivemedia/v3/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;


# instance fields
.field private a:I
    .annotation runtime Lcom/google/ads/interactivemedia/v3/a/a/c;
        a = "bitrate"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/a/a/c;
        a = "mimeTypes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/a/a/c;
        a = "uiElements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lcom/google/ads/interactivemedia/v3/a/a/c;
        a = "enablePreloading"
    .end annotation
.end field

.field private e:D
    .annotation runtime Lcom/google/ads/interactivemedia/v3/a/a/c;
        a = "playAdsAfterTime"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/ads/interactivemedia/v3/a/a/c;
        a = "loadVideoTimeout"
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Ljava/util/List;

    .line 22
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:D

    .line 25
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->f:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->g:Z

    return-void
.end method


# virtual methods
.method public getBitrateKbps()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:I

    return v0
.end method

.method public getEnablePreloading()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Z

    return v0
.end method

.method public getMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Ljava/util/List;

    return-object v0
.end method

.method public isRenderCompanions()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->g:Z

    return v0
.end method

.method public setBitrateKbps(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:I

    .line 43
    return-void
.end method

.method public setEnablePreloading(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Z

    .line 79
    return-void
.end method

.method public setMimeTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setPlayAdsAfterTime(D)V
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:D

    .line 103
    return-void
.end method

.method public setRenderCompanions(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->g:Z

    .line 98
    return-void
.end method

.method public setUiElements(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Ljava/util/Set;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 83
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Z

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:D

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x86

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "AdsRenderingSettings [bitrate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", mimeTypes="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiElements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enablePreloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playAdsAfterTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
