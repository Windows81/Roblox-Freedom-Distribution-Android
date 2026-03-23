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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notificationId"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->a:Ljava/lang/String;

    const-string v0, "type"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    const-string v0, "detail"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/roblox/client/pushnotification/b/i;->c:Lorg/json/JSONObject;

    const-string v0, "fallbackDelivered"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/roblox/client/pushnotification/b/i;->d:Z

    .line 29
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/i;->d()V

    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/pushnotification/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PushNotificationMetadata notificationId is invalid"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PushNotificationMetadata notificationType is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PushNotificationMetadata details object is null"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/i;->c:Lorg/json/JSONObject;

    return-object v0
.end method
