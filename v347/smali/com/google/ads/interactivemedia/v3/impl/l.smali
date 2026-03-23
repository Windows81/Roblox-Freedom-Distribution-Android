.class public Lcom/google/ads/interactivemedia/v3/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/l$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private c:Ljava/util/Map;
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

.field private d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private f:Lcom/google/ads/interactivemedia/v3/impl/l$a;

.field private transient g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/interactivemedia/v3/impl/l$a;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    return-object v0
.end method

.method public getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    return-object v0
.end method

.method public getAdTagUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public getExtraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraParameters()Ljava/util/Map;
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
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 122
    return-void
.end method

.method public setAdTagUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAdWillAutoPlay(Z)V
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->AUTO:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->CLICK:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->f:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    goto :goto_0
.end method

.method public setAdsResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->d:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->e:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    .line 132
    return-void
.end method

.method public setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Map;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public setUserRequestContext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l;->g:Ljava/lang/Object;

    .line 96
    return-void
.end method
