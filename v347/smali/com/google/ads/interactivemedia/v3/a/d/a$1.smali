.class final Lcom/google/ads/interactivemedia/v3/a/d/a$1;
.super Lcom/google/ads/interactivemedia/v3/a/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/a/d/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1602
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/a/b/a/e;

    if-eqz v0, :cond_0

    .line 1603
    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/b/a/e;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/e;->o()V

    .line 1621
    :goto_0
    return-void

    .line 1606
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)I

    move-result v0

    .line 1607
    if-nez v0, :cond_1

    .line 1608
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b(Lcom/google/ads/interactivemedia/v3/a/d/a;)I

    move-result v0

    .line 1610
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1611
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;I)I

    goto :goto_0

    .line 1612
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1613
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;I)I

    goto :goto_0

    .line 1614
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1615
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;I)I

    goto :goto_0

    .line 1617
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1618
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c(Lcom/google/ads/interactivemedia/v3/a/d/a;)I

    move-result v2

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->d(Lcom/google/ads/interactivemedia/v3/a/d/a;)I

    move-result v3

    .line 1619
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->q()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x46

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Expected a name but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at line "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
