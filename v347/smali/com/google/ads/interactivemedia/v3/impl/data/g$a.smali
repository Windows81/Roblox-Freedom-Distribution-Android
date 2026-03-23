.class final Lcom/google/ads/interactivemedia/v3/impl/data/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/data/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/data/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private adTagParameters:Ljava/util/Map;
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

.field private adTagUrl:Ljava/lang/String;

.field private adsResponse:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private assetKey:Ljava/lang/String;

.field private attemptPreroll:Ljava/lang/Boolean;

.field private companionSlots:Ljava/util/Map;
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

.field private contentSourceId:Ljava/lang/String;

.field private env:Ljava/lang/String;

.field private extraParameters:Ljava/util/Map;
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

.field private isTv:Ljava/lang/Boolean;

.field private marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

.field private msParameter:Ljava/lang/String;

.field private network:Ljava/lang/String;

.field private settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private videoId:Ljava/lang/String;

.field private videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/data/i;)V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adsResponse()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adsResponse:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adTagUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adTagUrl:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->assetKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->assetKey:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->contentSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->contentSourceId:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->videoId:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->apiKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->apiKey:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->attemptPreroll()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->attemptPreroll:Ljava/lang/Boolean;

    .line 290
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adTagParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adTagParameters:Ljava/util/Map;

    .line 291
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->env()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->env:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->network()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->network:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/l$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    .line 294
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->companionSlots()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->companionSlots:Ljava/util/Map;

    .line 295
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->extraParameters:Ljava/util/Map;

    .line 296
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 297
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    .line 298
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->isTv()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->isTv:Ljava/lang/Boolean;

    .line 299
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->msParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->msParameter:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method public adTagParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/i$a;"
        }
    .end annotation

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adTagParameters:Ljava/util/Map;

    .line 339
    return-object p0
.end method

.method public adTagUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adTagUrl:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public adsResponse(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adsResponse:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public apiKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->apiKey:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public assetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->assetKey:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public attemptPreroll(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->attemptPreroll:Ljava/lang/Boolean;

    .line 334
    return-object p0
.end method

.method public build()Lcom/google/ads/interactivemedia/v3/impl/data/i;
    .locals 20

    .prologue
    .line 388
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/data/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adsResponse:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adTagUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->assetKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->contentSourceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->apiKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->attemptPreroll:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->adTagParameters:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->env:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->network:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->companionSlots:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->extraParameters:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->isTv:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->msParameter:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/ads/interactivemedia/v3/impl/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/l$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/g$b;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/g$1;)V

    return-object v1
.end method

.method public companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/i$a;"
        }
    .end annotation

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->companionSlots:Ljava/util/Map;

    .line 359
    return-object p0
.end method

.method public contentSourceId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->contentSourceId:Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->env:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public extraParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/impl/data/i$a;"
        }
    .end annotation

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->extraParameters:Ljava/util/Map;

    .line 364
    return-object p0
.end method

.method public isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->isTv:Ljava/lang/Boolean;

    .line 379
    return-object p0
.end method

.method public marketAppInfo(Lcom/google/ads/interactivemedia/v3/impl/g$b;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    .line 374
    return-object p0
.end method

.method public msParameter(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->msParameter:Ljava/lang/String;

    .line 384
    return-object p0
.end method

.method public network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->network:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 369
    return-object p0
.end method

.method public videoId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->videoId:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public videoPlayActivation(Lcom/google/ads/interactivemedia/v3/impl/l$a;)Lcom/google/ads/interactivemedia/v3/impl/data/i$a;
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g$a;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    .line 354
    return-object p0
.end method
