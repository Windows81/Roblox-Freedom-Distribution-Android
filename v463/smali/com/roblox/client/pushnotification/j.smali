.class public Lcom/roblox/client/pushnotification/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/roblox/client/pushnotification/b/i;
    .locals 1

    .line 35
    :try_start_0
    new-instance v0, Lcom/roblox/client/pushnotification/b/i;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/i;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/roblox/client/pushnotification/b/i;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/i;Lcom/roblox/client/pushnotification/h;Lcom/roblox/client/pushnotification/d;Lcom/roblox/client/pushnotification/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 50
    invoke-direct {p0, p2}, Lcom/roblox/client/pushnotification/j;->a(Lcom/roblox/client/pushnotification/b/i;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    const-string v1, "FriendRequestAccepted"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FriendRequestReceived"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PrivateMessageReceived"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ChatNewMessage"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p3, p2, p1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p3, "PushExpiryMessage"

    .line 60
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 62
    invoke-virtual {p4, p2, p1}, Lcom/roblox/client/pushnotification/d;->a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string p3, "PushCategoryExpiryMessage"

    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p5, :cond_3

    .line 66
    invoke-virtual {p5, p2, p1}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/j;->a(Lorg/json/JSONObject;)Lcom/roblox/client/pushnotification/b/i;

    move-result-object v2

    .line 26
    new-instance v3, Lcom/roblox/client/pushnotification/h;

    invoke-direct {v3}, Lcom/roblox/client/pushnotification/h;-><init>()V

    .line 27
    new-instance v4, Lcom/roblox/client/pushnotification/d;

    invoke-direct {v4}, Lcom/roblox/client/pushnotification/d;-><init>()V

    .line 28
    new-instance v5, Lcom/roblox/client/pushnotification/c;

    invoke-direct {v5}, Lcom/roblox/client/pushnotification/c;-><init>()V

    move-object v0, p0

    move-object v1, p2

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/pushnotification/j;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/i;Lcom/roblox/client/pushnotification/h;Lcom/roblox/client/pushnotification/d;Lcom/roblox/client/pushnotification/c;)V

    return-void
.end method
