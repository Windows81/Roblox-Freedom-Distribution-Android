.class final Lcom/google/ads/interactivemedia/v3/impl/data/e;
.super Lcom/google/ads/interactivemedia/v3/impl/data/a$a;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final left:I

.field private final top:I

.field private final width:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->left:I

    .line 20
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->top:I

    .line 21
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->height:I

    .line 22
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->width:I

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    if-eqz v2, :cond_3

    .line 61
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;

    .line 62
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->left:I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->left()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->top:I

    .line 63
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->top()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->height:I

    .line 64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->height()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->width:I

    .line 65
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a$a;->width()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 72
    .line 74
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->left:I

    xor-int/2addr v0, v2

    .line 75
    mul-int/2addr v0, v2

    .line 76
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->top:I

    xor-int/2addr v0, v1

    .line 77
    mul-int/2addr v0, v2

    .line 78
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->height:I

    xor-int/2addr v0, v1

    .line 79
    mul-int/2addr v0, v2

    .line 80
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->width:I

    xor-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->height:I

    return v0
.end method

.method public left()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->left:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 47
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->left:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->top:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->height:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->width:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x56

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "BoundingRect{left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", top="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->top:I

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/e;->width:I

    return v0
.end method
