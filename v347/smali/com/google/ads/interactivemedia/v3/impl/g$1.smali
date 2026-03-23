.class Lcom/google/ads/interactivemedia/v3/impl/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/g;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/g;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    .line 139
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->d(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 142
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->e(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    .line 152
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/c;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->d(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 155
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->e(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Ljava/lang/String;Z)V
    .locals 16

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->e(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 114
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    new-instance v15, Lcom/google/ads/interactivemedia/v3/impl/i;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 116
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->b(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v3

    .line 118
    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v5

    .line 119
    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 122
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->c(Lcom/google/ads/interactivemedia/v3/impl/g;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 125
    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/i;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v14, v15}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->d(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/t;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/c;

    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/z;Ljava/util/List;Ljava/util/SortedSet;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/z;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 92
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    new-instance v15, Lcom/google/ads/interactivemedia/v3/impl/i;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 94
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->b(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v3

    .line 96
    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v5

    .line 97
    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 100
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->c(Lcom/google/ads/interactivemedia/v3/impl/g;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/impl/h;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/x;Lcom/google/ads/interactivemedia/v3/impl/z;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 103
    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/i;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v14, v15}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/g$1;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->d(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/t;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/impl/c;

    invoke-interface {v13}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/t;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0
.end method
