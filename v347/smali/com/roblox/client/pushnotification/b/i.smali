.class public Lcom/roblox/client/pushnotification/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "notificationId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->a:Ljava/lang/String;

    .line 25
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    .line 26
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/i;->c:Lorg/json/JSONObject;

    .line 27
    const-string v0, "fallbackDelivered"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/pushnotification/b/i;->d:Z

    .line 29
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/i;->d()V

    .line 30
    return-void

    .line 24
    :cond_0
    const-string v0, "notificationId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_2
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PushNotificationMetadata details object is null"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PushNotificationMetadata notificationType is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/pushnotification/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PushNotificationMetadata notificationId is invalid"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->c:Lorg/json/JSONObject;

    return-object v0
.end method
