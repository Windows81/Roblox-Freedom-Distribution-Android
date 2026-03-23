.class public Lcom/google/ads/interactivemedia/v3/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/g$c;,
        Lcom/google/ads/interactivemedia/v3/impl/g$a;,
        Lcom/google/ads/interactivemedia/v3/impl/g$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/ads/interactivemedia/v3/impl/x$b;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/x;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/ads/interactivemedia/v3/impl/t;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/AdsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/StreamRequest;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/a/a/g;

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/g;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    .line 290
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->a()V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/impl/x;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/g;-><init>(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/content/Context;)V

    .line 297
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 298
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/g$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/g;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$b;

    .line 161
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/t;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/t;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->f:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->g:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->i:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 302
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 303
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    .line 304
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/a/a/g;)Lcom/google/a/a/g;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->h:Lcom/google/a/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->f:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 393
    if-nez p1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "AdsRequest cannot be null."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 431
    :goto_0
    return v0

    .line 398
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v1

    .line 399
    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad display container must be provided in the AdsRequest."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 406
    :cond_1
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_2

    .line 407
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad display container must have a UI container."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->c()Lcom/google/ads/interactivemedia/v3/impl/z;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    .line 418
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/x;->c()Lcom/google/ads/interactivemedia/v3/impl/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()Lcom/google/ads/interactivemedia/v3/impl/w$a;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$a;->a:Lcom/google/ads/interactivemedia/v3/impl/w$a;

    if-ne v2, v3, :cond_3

    .line 419
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v1

    if-nez v1, :cond_3

    .line 420
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad Player was not provided."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 424
    :cond_3
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/c/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/c/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad tag url must non-null and non empty."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto/16 :goto_0

    .line 431
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 438
    if-nez p1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "StreamRequest cannot be null."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 458
    :goto_0
    return v0

    .line 444
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    .line 445
    if-nez v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Ad display container must be provided in the StreamRequest."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v1

    if-nez v1, :cond_2

    .line 452
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v6, "Stream requests must specify a player."

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 458
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/x;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 379
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 380
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 382
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 386
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 515
    const-string v0, "android%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.3.2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    .line 516
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 515
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/t;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "IMASDK"

    const-string v1, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "android:0"

    .line 542
    :goto_0
    return-object v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 536
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 537
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 538
    if-nez v0, :cond_1

    .line 539
    const-string v0, "android:0"

    goto :goto_0

    .line 542
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "android:%d:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/google/ads/interactivemedia/v3/impl/g$b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 553
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 554
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.google.ads.interactivemedia.v3"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 555
    const/high16 v3, 0x10000

    .line 556
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 557
    if-nez v2, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 562
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 563
    if-eqz v2, :cond_0

    .line 570
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    if-eqz v1, :cond_0

    .line 578
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g$b;->create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-result-object v0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private f()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->k:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceTvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    :goto_0
    return v1

    .line 590
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-gt v0, v3, :cond_1

    move v1, v2

    .line 591
    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->c:Landroid/content/Context;

    const-string v3, "uimode"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 594
    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    .line 594
    goto :goto_0

    :cond_2
    move v0, v2

    .line 595
    goto :goto_1
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/a/a/g;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->h:Lcom/google/a/a/g;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method static synthetic k(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/g$b;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->e()Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/google/ads/interactivemedia/v3/impl/g;)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/x;->a()V

    .line 321
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    .line 500
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$b;

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x$b;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/g$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$b;

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/impl/x$b;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/impl/x;->a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/g$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/impl/g$c;-><init>(Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/g$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 488
    return-void
.end method

.method public addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public contentComplete()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->b:Lcom/google/ads/interactivemedia/v3/impl/x;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->contentComplete:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    const-string v4, "*"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 331
    return-void
.end method

.method public getSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->j:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->d:Lcom/google/ads/interactivemedia/v3/impl/t;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/t;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 496
    return-void
.end method

.method public removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    .line 349
    return-object v0
.end method
