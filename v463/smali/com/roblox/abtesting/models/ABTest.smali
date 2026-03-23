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

.field private static final BROWSER_TRACKER_ID_SUBJECT_TYPE_STR:Ljava/lang/String; = "BrowserTracker"

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

.field private static final USER_ID_SUBJECT_TYPE_STR:Ljava/lang/String; = "User"


# instance fields
.field private mExperimentName:Ljava/lang/String;

.field protected mStatus:Ljava/lang/String;

.field private mSubjectTargetId:J

.field private mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

.field protected mVariation:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/roblox/abtesting/models/ABTest;->mExperimentName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectTargetId:J

    .line 57
    iput-object p2, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const-string p1, "NoExperiment"

    .line 60
    iput-object p1, p0, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    return-void
.end method

.method public static fromJsonV1(Lorg/json/JSONObject;)Lcom/roblox/abtesting/models/ABTest;
    .locals 6

    const-string v0, "Variation"

    const-string v1, "ABTestManager"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ExperimentName"

    .line 129
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SubjectType"

    .line 130
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    .line 133
    :goto_0
    new-instance v5, Lcom/roblox/abtesting/models/ABTest;

    invoke-direct {v5, v3, v4}, Lcom/roblox/abtesting/models/ABTest;-><init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    const-string v3, "SubjectTargetId"

    .line 135
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/roblox/abtesting/models/ABTest;->setSubjectTargetId(J)V

    .line 139
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, v5, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    :cond_2
    const-string v0, "Status"

    .line 145
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    iput-object p0, v5, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    goto :goto_2

    .line 148
    :cond_3
    iget-object p0, v5, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    if-eqz p0, :cond_4

    const-string p0, "Enrolled"

    .line 151
    iput-object p0, v5, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    .line 154
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Test created: Name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/roblox/abtesting/models/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/roblox/abtesting/models/ABTest;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Variation: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/roblox/abtesting/models/ABTest;->getVariation()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing jsonObject. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ABTest.fromJson: Exception parsing jsonObject."

    .line 162
    invoke-static {p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return-object v2

    :catch_1
    const-string p0, "Exception parsing the Variation field."

    .line 157
    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ABTest.fromJson: Exception parsing the Variation field."

    .line 158
    invoke-static {p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return-object v2
.end method

.method private getInternalSubjectTypeV1()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne v0, v1, :cond_0

    const-string v0, "BrowserTracker"

    goto :goto_0

    :cond_0
    const-string v0, "User"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectType()Lcom/roblox/abtesting/models/ABTest$SubjectTypes;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectType:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mExperimentName:Ljava/lang/String;

    return-object v0
.end method

.method public getVariation()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/roblox/abtesting/models/ABTest;->mVariation:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSubjectTargetId(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectTargetId:J

    return-void
.end method

.method public toJsonV1()Lorg/json/JSONObject;
    .locals 4

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ExperimentName"

    .line 111
    iget-object v2, p0, Lcom/roblox/abtesting/models/ABTest;->mExperimentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "SubjectType"

    .line 112
    invoke-direct {p0}, Lcom/roblox/abtesting/models/ABTest;->getInternalSubjectTypeV1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "SubjectTargetId"

    .line 113
    iget-wide v2, p0, Lcom/roblox/abtesting/models/ABTest;->mSubjectTargetId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ABTest.toJson: Exception creating JSONObject."

    .line 115
    invoke-static {v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
