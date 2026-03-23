.class final Lcom/google/ads/interactivemedia/v3/impl/m;
.super Lcom/google/ads/interactivemedia/v3/impl/g$b;
.source "SourceFile"


# instance fields
.field private final appVersion:I

.field private final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g$b;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->appVersion:I

    .line 16
    if-nez p2, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->packageName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public appVersion()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->appVersion:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p1, p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/g$b;

    if-eqz v2, :cond_3

    .line 46
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/g$b;

    .line 47
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->appVersion:I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/g$b;->appVersion()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->packageName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/g$b;->packageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const v1, 0xf4243

    .line 55
    .line 57
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->appVersion:I

    xor-int/2addr v0, v1

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->appVersion:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/m;->packageName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MarketAppInfo{appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
