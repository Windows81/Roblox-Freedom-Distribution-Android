.class public Lcom/google/ads/interactivemedia/v3/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/StreamRequest;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public getAdTagParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->a:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    return-object v0
.end method

.method public getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isPrerollRequested()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->f:Z

    return v0
.end method

.method public setAdTagParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->g:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public setPrerollRequested(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->f:Z

    .line 53
    return-void
.end method

.method public setUserRequestContext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ad;->h:Ljava/lang/Object;

    .line 72
    return-void
.end method
