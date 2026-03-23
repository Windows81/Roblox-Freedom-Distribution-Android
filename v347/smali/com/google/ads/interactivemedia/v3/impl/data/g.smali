.class final Lcom/google/ads/interactivemedia/v3/impl/data/g;
.super Lcom/google/ads/interactivemedia/v3/impl/data/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/g$a;
    }
.end annotation


# instance fields
.field private final adTagParameters:Ljava/util/Map;
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

.field private final adTagUrl:Ljava/lang/String;

.field private final adsResponse:Ljava/lang/String;

.field private final apiKey:Ljava/lang/String;

.field private final assetKey:Ljava/lang/String;

.field private final attemptPreroll:Ljava/lang/Boolean;

.field private final companionSlots:Ljava/util/Map;
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

.field private final contentSourceId:Ljava/lang/String;

.field private final env:Ljava/lang/String;

.field private final extraParameters:Ljava/util/Map;
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

.field private final isTv:Ljava/lang/Boolean;

.field private final marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

.field private final msParameter:Ljava/lang/String;

.field private final network:Ljava/lang/String;

.field private final settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private final videoId:Ljava/lang/String;

.field private final videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/l$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/g$b;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/l$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;",
            "Lcom/google/ads/interactivemedia/v3/impl/g$b;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/i;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    .line 56
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    .line 57
    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    .line 58
    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    .line 59
    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    .line 60
    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    .line 61
    iput-object p12, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    .line 62
    iput-object p13, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    .line 63
    iput-object p14, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 64
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    .line 65
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    .line 66
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/l$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/g$b;Ljava/lang/Boolean;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/g$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p17}, Lcom/google/ads/interactivemedia/v3/impl/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/l$a;Ljava/util/Map;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/g$b;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adTagParameters()Ljava/util/Map;
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
    .line 114
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    return-object v0
.end method

.method public adTagUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    return-object v0
.end method

.method public adsResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    return-object v0
.end method

.method public apiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public assetKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    return-object v0
.end method

.method public attemptPreroll()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    return-object v0
.end method

.method public companionSlots()Ljava/util/Map;
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
    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    return-object v0
.end method

.method public contentSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public env()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-ne p1, p0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/i;

    if-eqz v2, :cond_14

    .line 200
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/i;

    .line 201
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adsResponse()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 202
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adTagUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 203
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->assetKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 204
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->contentSourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 205
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 206
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->apiKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    .line 207
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->attemptPreroll()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_7
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    if-nez v2, :cond_a

    .line 208
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adTagParameters()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 209
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->env()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 210
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->network()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    if-nez v2, :cond_d

    .line 211
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/l$a;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_b
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    if-nez v2, :cond_e

    .line 212
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->companionSlots()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_c
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    if-nez v2, :cond_f

    .line 213
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParameters()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_d
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v2, :cond_10

    .line 214
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_e
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    if-nez v2, :cond_11

    .line 215
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    .line 216
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->isTv()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_10
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 217
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->msParameter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adsResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 202
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adTagUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 203
    :cond_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->assetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 204
    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->contentSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 205
    :cond_7
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_5

    .line 206
    :cond_8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->apiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 207
    :cond_9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->attemptPreroll()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    .line 208
    :cond_a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->adTagParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_8

    .line 209
    :cond_b
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->env()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_9

    .line 210
    :cond_c
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->network()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_a

    .line 211
    :cond_d
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/l$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/l$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_b

    .line 212
    :cond_e
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->companionSlots()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_c

    .line 213
    :cond_f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->extraParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_d

    .line 214
    :cond_10
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_e

    .line 215
    :cond_11
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_f

    .line 216
    :cond_12
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->isTv()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_10

    .line 217
    :cond_13
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->msParameter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_14
    move v0, v1

    .line 219
    goto/16 :goto_0
.end method

.method public extraParameters()Ljava/util/Map;
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
    .line 144
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const v3, 0xf4243

    const/4 v1, 0x0

    .line 224
    .line 226
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v3

    .line 227
    mul-int v2, v0, v3

    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    .line 229
    mul-int v2, v0, v3

    .line 230
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v2

    .line 231
    mul-int v2, v0, v3

    .line 232
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    xor-int/2addr v0, v2

    .line 233
    mul-int v2, v0, v3

    .line 234
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    xor-int/2addr v0, v2

    .line 235
    mul-int v2, v0, v3

    .line 236
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    xor-int/2addr v0, v2

    .line 237
    mul-int v2, v0, v3

    .line 238
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    xor-int/2addr v0, v2

    .line 239
    mul-int v2, v0, v3

    .line 240
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    xor-int/2addr v0, v2

    .line 241
    mul-int v2, v0, v3

    .line 242
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    xor-int/2addr v0, v2

    .line 243
    mul-int v2, v0, v3

    .line 244
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    xor-int/2addr v0, v2

    .line 245
    mul-int v2, v0, v3

    .line 246
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    xor-int/2addr v0, v2

    .line 247
    mul-int v2, v0, v3

    .line 248
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    xor-int/2addr v0, v2

    .line 249
    mul-int v2, v0, v3

    .line 250
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    xor-int/2addr v0, v2

    .line 251
    mul-int v2, v0, v3

    .line 252
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    xor-int/2addr v0, v2

    .line 253
    mul-int v2, v0, v3

    .line 254
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    xor-int/2addr v0, v2

    .line 255
    mul-int v2, v0, v3

    .line 256
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    xor-int/2addr v0, v2

    .line 257
    mul-int/2addr v0, v3

    .line 258
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    if-nez v2, :cond_10

    :goto_10
    xor-int/2addr v0, v1

    .line 259
    return v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_5

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_6

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto/16 :goto_7

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_8

    .line 244
    :cond_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    .line 246
    :cond_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/l$a;->hashCode()I

    move-result v0

    goto/16 :goto_a

    .line 248
    :cond_b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto/16 :goto_b

    .line 250
    :cond_c
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto/16 :goto_c

    .line 252
    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_d

    .line 254
    :cond_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_e

    .line 256
    :cond_f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_f

    .line 258
    :cond_10
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_10
.end method

.method public isTv()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    return-object v0
.end method

.method public marketAppInfo()Lcom/google/ads/interactivemedia/v3/impl/g$b;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    return-object v0
.end method

.method public msParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    return-object v0
.end method

.method public network()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    return-object v0
.end method

.method public settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adsResponse:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->assetKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->contentSourceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->apiKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->attemptPreroll:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->adTagParameters:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->env:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->network:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->companionSlots:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->extraParameters:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->settings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->marketAppInfo:Lcom/google/ads/interactivemedia/v3/impl/g$b;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->isTv:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->msParameter:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xf3

    move/from16 v19, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v19, "GsonAdsRequest{adsResponse="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v18, ", adTagUrl="

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", assetKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentSourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apiKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attemptPreroll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adTagParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", env="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoPlayActivation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", companionSlots="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extraParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", settings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", marketAppInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isTv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msParameter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public videoPlayActivation()Lcom/google/ads/interactivemedia/v3/impl/l$a;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/g;->videoPlayActivation:Lcom/google/ads/interactivemedia/v3/impl/l$a;

    return-object v0
.end method
