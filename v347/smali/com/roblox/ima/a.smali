.class public Lcom/roblox/ima/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/ima/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private c:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private d:Lcom/roblox/ima/AdPlayer;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/roblox/client/a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/roblox/ima/AdPlayer;Ljava/lang/String;Lcom/roblox/client/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v3, p0, Lcom/roblox/ima/a;->h:Z

    .line 38
    iput-boolean v3, p0, Lcom/roblox/ima/a;->i:Z

    .line 39
    iput-boolean v3, p0, Lcom/roblox/ima/a;->j:Z

    .line 108
    const-string v0, "AdPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdPlayerController: language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p2, p0, Lcom/roblox/ima/a;->d:Lcom/roblox/ima/AdPlayer;

    .line 110
    iput-boolean v3, p0, Lcom/roblox/ima/a;->f:Z

    .line 112
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;-><init>()V

    .line 113
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/ima/a;->c:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 115
    iget-object v1, p0, Lcom/roblox/ima/a;->c:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/ima/a;->a:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 117
    iget-object v0, p0, Lcom/roblox/ima/a;->a:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    new-instance v1, Lcom/roblox/ima/a$1;

    invoke-direct {v1, p0}, Lcom/roblox/ima/a$1;-><init>(Lcom/roblox/ima/a;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 134
    iget-object v0, p0, Lcom/roblox/ima/a;->a:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    new-instance v1, Lcom/roblox/ima/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/roblox/ima/a$a;-><init>(Lcom/roblox/ima/a;Lcom/roblox/ima/a$1;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 136
    iput-object p4, p0, Lcom/roblox/ima/a;->g:Lcom/roblox/client/a;

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/roblox/ima/a;)J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/roblox/ima/a;->k:J

    return-wide v0
.end method

.method static synthetic a(Lcom/roblox/ima/a;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/ima/a;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/roblox/ima/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/ima/a;)Lcom/roblox/client/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/ima/a;->g:Lcom/roblox/client/a;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/roblox/ima/a;->d:Lcom/roblox/ima/AdPlayer;

    invoke-virtual {v0}, Lcom/roblox/ima/AdPlayer;->a()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/ima/a;->f:Z

    .line 142
    return-void
.end method

.method static synthetic b(Lcom/roblox/ima/a;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/roblox/ima/a;->f:Z

    return p1
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/roblox/ima/a;->f:Z

    .line 146
    iput-boolean v0, p0, Lcom/roblox/ima/a;->h:Z

    .line 147
    iget-object v0, p0, Lcom/roblox/ima/a;->g:Lcom/roblox/client/a;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/roblox/ima/a;->g:Lcom/roblox/client/a;

    invoke-interface {v0}, Lcom/roblox/client/a;->b()V

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/roblox/ima/a;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/roblox/ima/a;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/roblox/ima/a;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/roblox/ima/a;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/roblox/ima/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/roblox/ima/a;->b()V

    return-void
.end method

.method static synthetic e(Lcom/roblox/ima/a;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object v0
.end method

.method static synthetic f(Lcom/roblox/ima/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/roblox/ima/a;->c()V

    return-void
.end method

.method static synthetic g(Lcom/roblox/ima/a;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/roblox/ima/a;->j:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 213
    const-string v0, "AdPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAds: mAdsManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/ima/a;->j:Z

    .line 216
    iget-object v0, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/roblox/ima/a;->c()V

    goto :goto_0
.end method

.method public a(Lcom/roblox/ima/AdPlayer;)V
    .locals 2

    .prologue
    .line 103
    const-string v0, "AdPlayerController"

    const-string v1, "setAdPlayer:..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/roblox/ima/a;->d:Lcom/roblox/ima/AdPlayer;

    .line 105
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/roblox/ima/a;->e:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 154
    const-string v0, "AdPlayerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAds: customParameters = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentAdTagUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/ima/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/roblox/ima/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/ima/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    const-string v0, "AdPlayerController"

    const-string v1, "requestAds: No VAST ad tag URL specified"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/roblox/ima/a;->c()V

    .line 210
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 179
    :cond_2
    :goto_2
    const-string v0, ""

    .line 181
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 187
    :goto_3
    iget-object v1, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/roblox/ima/a;->b:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/roblox/ima/a;->a:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    .line 192
    iget-object v1, p0, Lcom/roblox/ima/a;->c:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/roblox/ima/a;->d:Lcom/roblox/ima/AdPlayer;

    invoke-virtual {v2}, Lcom/roblox/ima/AdPlayer;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    .line 194
    iget-object v2, p0, Lcom/roblox/ima/a;->d:Lcom/roblox/ima/AdPlayer;

    invoke-virtual {v2}, Lcom/roblox/ima/AdPlayer;->getAdUiContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 197
    iget-object v2, p0, Lcom/roblox/ima/a;->c:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v2

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 199
    iget-object v0, p0, Lcom/roblox/ima/a;->e:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 204
    :goto_4
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V

    .line 205
    iget-object v0, p0, Lcom/roblox/ima/a;->d:Lcom/roblox/ima/AdPlayer;

    invoke-virtual {v0}, Lcom/roblox/ima/AdPlayer;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    .line 208
    iget-object v0, p0, Lcom/roblox/ima/a;->a:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/ima/a;->k:J

    goto/16 :goto_0

    .line 174
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 182
    :catch_1
    move-exception v1

    .line 183
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/roblox/ima/a;->e:Ljava/lang/String;

    const-string v4, "&cust_params="

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    goto :goto_4
.end method
