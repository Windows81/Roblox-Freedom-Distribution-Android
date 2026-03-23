.class final Lcom/google/ads/interactivemedia/v3/impl/data/h;
.super Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/data/h$a;
    }
.end annotation


# instance fields
.field private final disableExperiments:Z

.field private final enableMonitorAppLifecycle:Z

.field private final extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final forceExperimentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final forceTvMode:Z

.field private final ignoreStrictModeFalsePositives:Z

.field private final useTestStreamManager:Z

.field private final useVideoElementMock:Z

.field private final videoElementMockDuration:F


# direct methods
.method private constructor <init>(ZZFZZLjava/util/List;ZZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZFZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->disableExperiments:Z

    .line 33
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useVideoElementMock:Z

    .line 34
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoElementMockDuration:F

    .line 35
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useTestStreamManager:Z

    .line 36
    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->enableMonitorAppLifecycle:Z

    .line 37
    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    .line 38
    iput-boolean p7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceTvMode:Z

    .line 39
    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->ignoreStrictModeFalsePositives:Z

    .line 40
    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(ZZFZZLjava/util/List;ZZLjava/util/Map;Lcom/google/ads/interactivemedia/v3/impl/data/h$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p9}, Lcom/google/ads/interactivemedia/v3/impl/data/h;-><init>(ZZFZZLjava/util/List;ZZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public disableExperiments()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->disableExperiments:Z

    return v0
.end method

.method public enableMonitorAppLifecycle()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->enableMonitorAppLifecycle:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p1, p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v2, :cond_5

    .line 111
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    .line 112
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->disableExperiments:Z

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->disableExperiments()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useVideoElementMock:Z

    .line 113
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->useVideoElementMock()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoElementMockDuration:F

    .line 114
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->videoElementMockDuration()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useTestStreamManager:Z

    .line 115
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->useTestStreamManager()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->enableMonitorAppLifecycle:Z

    .line 116
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->enableMonitorAppLifecycle()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    if-nez v2, :cond_3

    .line 117
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceTvMode:Z

    .line 118
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceTvMode()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->ignoreStrictModeFalsePositives:Z

    .line 119
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 120
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->extraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->forceExperimentIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->extraParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public extraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public forceExperimentIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    return-object v0
.end method

.method public forceTvMode()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceTvMode:Z

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const v5, 0xf4243

    .line 127
    .line 129
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->disableExperiments:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v5

    .line 130
    mul-int v4, v0, v5

    .line 131
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useVideoElementMock:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v4

    .line 132
    mul-int/2addr v0, v5

    .line 133
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoElementMockDuration:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    xor-int/2addr v0, v4

    .line 134
    mul-int v4, v0, v5

    .line 135
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useTestStreamManager:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    xor-int/2addr v0, v4

    .line 136
    mul-int v4, v0, v5

    .line 137
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->enableMonitorAppLifecycle:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    xor-int/2addr v0, v4

    .line 138
    mul-int v4, v0, v5

    .line 139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    if-nez v0, :cond_4

    move v0, v3

    :goto_4
    xor-int/2addr v0, v4

    .line 140
    mul-int v4, v0, v5

    .line 141
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceTvMode:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    xor-int/2addr v0, v4

    .line 142
    mul-int/2addr v0, v5

    .line 143
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->ignoreStrictModeFalsePositives:Z

    if-eqz v4, :cond_6

    :goto_6
    xor-int/2addr v0, v1

    .line 144
    mul-int/2addr v0, v5

    .line 145
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    if-nez v1, :cond_7

    :goto_7
    xor-int/2addr v0, v3

    .line 146
    return v0

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    :cond_1
    move v0, v2

    .line 131
    goto :goto_1

    :cond_2
    move v0, v2

    .line 135
    goto :goto_2

    :cond_3
    move v0, v2

    .line 137
    goto :goto_3

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v2

    .line 141
    goto :goto_5

    :cond_6
    move v1, v2

    .line 143
    goto :goto_6

    .line 145
    :cond_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public ignoreStrictModeFalsePositives()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->ignoreStrictModeFalsePositives:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->disableExperiments:Z

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useVideoElementMock:Z

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoElementMockDuration:F

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useTestStreamManager:Z

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->enableMonitorAppLifecycle:Z

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceExperimentIds:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->forceTvMode:Z

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->ignoreStrictModeFalsePositives:Z

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->extraParams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0x10c

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "TestingConfiguration{disableExperiments="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", useVideoElementMock="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoElementMockDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useTestStreamManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMonitorAppLifecycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceExperimentIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceTvMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignoreStrictModeFalsePositives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useTestStreamManager()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useTestStreamManager:Z

    return v0
.end method

.method public useVideoElementMock()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->useVideoElementMock:Z

    return v0
.end method

.method public videoElementMockDuration()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/h;->videoElementMockDuration:F

    return v0
.end method
