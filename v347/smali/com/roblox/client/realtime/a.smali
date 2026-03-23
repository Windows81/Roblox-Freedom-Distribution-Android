.class public abstract Lcom/roblox/client/realtime/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static sSequenceNumber:J

.field protected static sSignalRConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/client/realtime/a;->sSignalRConnected:Z

    .line 24
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/roblox/client/realtime/a;->sSequenceNumber:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSequenceNumber()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lcom/roblox/client/realtime/a;->sSequenceNumber:J

    return-wide v0
.end method

.method public static isSignalRConnected()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/roblox/client/realtime/a;->sSignalRConnected:Z

    return v0
.end method


# virtual methods
.method public canStartConnectionOnConnectivityRestore()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected getTypeFromPayload(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const-string v0, ""

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v2, "Type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract setProcessor(Ljava/lang/String;Lcom/roblox/client/realtime/j;)V
.end method

.method public shouldStopPreviousConnectionOnStart()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
