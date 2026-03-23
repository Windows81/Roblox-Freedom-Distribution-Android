.class public Lcom/roblox/client/chat/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "UserPresenceType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/chat/a/i;->a:I

    .line 19
    const-string v0, "LastLocation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/i;->b:Ljava/lang/String;

    .line 20
    const-string v0, "PlaceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/a/i;->c:J

    .line 21
    const-string v0, "GameId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/i;->d:Ljava/lang/String;

    .line 22
    const-string v0, "IsGamePlayableOnCurrentDevice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/chat/a/i;->e:Z

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/roblox/client/chat/a/i;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/roblox/client/chat/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/roblox/client/chat/a/i;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/chat/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/i;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    instance-of v2, p1, Lcom/roblox/client/chat/a/i;

    if-nez v2, :cond_2

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    check-cast p1, Lcom/roblox/client/chat/a/i;

    .line 77
    iget v2, p0, Lcom/roblox/client/chat/a/i;->a:I

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/i;->a()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/roblox/client/chat/a/i;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/roblox/client/chat/a/i;->d:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/i;->d()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/roblox/client/chat/a/i;->e:Z

    invoke-virtual {p1}, Lcom/roblox/client/chat/a/i;->e()Z

    move-result v3

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/roblox/client/chat/a/i;->c:J

    .line 79
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/i;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_0
.end method
