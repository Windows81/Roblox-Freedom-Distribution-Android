.class public Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/impl/g;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 74
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a()V

    .line 75
    return-object v0
.end method

.method private createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/u;->b:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 32
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->instance:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    return-object v0
.end method


# virtual methods
.method public createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/b;-><init>()V

    return-object v0
.end method

.method public createAdsLoader(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    return-object v0
.end method

.method public createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/u;->b:Landroid/net/Uri;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/g;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V

    return-object v0
.end method

.method public createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;-><init>()V

    return-object v0
.end method

.method public createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/l;-><init>()V

    return-object v0
.end method

.method public createCompanionAdSlot()Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/p;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/p;-><init>()V

    return-object v0
.end method

.method public createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;-><init>()V

    return-object v0
.end method

.method public createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ad;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/ad;-><init>()V

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ad;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->d(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/ad;->a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    .line 119
    return-object v0
.end method

.method public createStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ac;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/ac;-><init>()V

    return-object v0
.end method

.method public createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ad;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/ad;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->c(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/ad;->d(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/ad;->a(Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    .line 133
    return-object v0
.end method
