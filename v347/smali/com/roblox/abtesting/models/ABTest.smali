.class public Lcom/roblox/abtesting/models/ABTest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/abtesting/models/ABTest$SubjectTypes;
    }
.end annotation


# static fields
.field public static final A_VARIANT:I = 0x1

.field private static final BROWSER_TRACKER_ID_SUBJECT_TYPE:I = 0x2

.field public static final B_VARIANT:I = 0x2

.field public static final C_VARIANT:I = 0x3

.field public static final D_VARIANT:I = 0x4

.field public static final ENROLLMENT_STATUS_DECLINED:Ljava/lang/String; = "Declined"

.field public static final ENROLLMENT_STATUS_ENROLLED:Ljava/lang/String; = "Enrolled"

.field public static final ENROLLMENT_STATUS_INACTIVE:Ljava/lang/String; = "Inactive"

.field public static final ENROLLMENT_STATUS_LOCKED_ON:Ljava/lang/String; = "LockedOn"

.field public static final ENROLLMENT_STATUS_NO_EXPERIMENT:Ljava/lang/String; = "NoExperiment"

.field public static final E_VARIANT:I = 0x5

.field private static final USER_ID_SUBJECT_TYPE:I = 0x1


# instance fields
.field private mExperimentName:Ljava/lang/String;

.field protected mStatus:Ljava/lang/String;

.field private mSubjectTargetId:J

.field private mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

.field protected mVariation:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/roblox/abtesting/models/ABTest;->mExperimentName:Ljava/lang/String;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectTargetId:J

    .line 53
    iput-object p2, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    .line 56
    const-string v0, "NoExperiment"

    iput-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    .line 58
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/roblox/abtesting/models/ABTest;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    :try_start_0
    const-string v0, "ExperimentName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v0, "SubjectType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    move-object v2, v0

    .line 129
    :goto_0
    new-instance v0, Lcom/roblox/abtesting/models/ABTest;

    invoke-direct {v0, v3, v2}, Lcom/roblox/abtesting/models/ABTest;-><init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 131
    const-string v2, "SubjectTargetId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/abtesting/models/ABTest;->setSubjectTargetId(J)V

    .line 135
    const-string v2, "Variation"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_0

    .line 137
    const-string v2, "Variation"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    .line 141
    :cond_0
    const-string v2, "Status"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 143
    iput-object v2, v0, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    .line 159
    :cond_1
    :goto_2
    return-object v0

    .line 126
    :cond_2
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    move-object v2, v0

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 144
    :cond_4
    iget-object v2, v0, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 147
    const-string v2, "Enrolled"

    iput-object v2, v0, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v0, "ABTestManager"

    const-string v2, "Exception parsing the Variation field."

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "ABTest.fromJson: Exception parsing the Variation field."

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const-string v0, "ABTestManager"

    const-string v2, "Error parsing jsonObject."

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "ABTest.fromJson: Exception parsing jsonObject."

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 156
    goto :goto_2
.end method

.method private getInternalSubjectType()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectType()Lcom/roblox/abtesting/models/ABTest$SubjectTypes;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mExperimentName:Ljava/lang/String;

    return-object v0
.end method

.method public getVariation()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSubjectTargetId(J)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectTargetId:J

    .line 62
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    const-string v1, "ExperimentName"

    iget-object v2, p0, Lcom/roblox/abtesting/models/ABTest;->mExperimentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "SubjectType"

    invoke-direct {p0}, Lcom/roblox/abtesting/models/ABTest;->getInternalSubjectType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "SubjectTargetId"

    iget-wide v2, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectTargetId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    const-string v1, "ABTest.toJson: Exception creating JSONObject."

    invoke-static {v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
