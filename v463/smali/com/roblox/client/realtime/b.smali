.class public Lcom/roblox/client/realtime/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/realtime/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JJ)J
    .locals 3

    .line 116
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-wide p3

    .line 119
    :cond_0
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-nez v2, :cond_1

    return-wide p1

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Type"

    .line 43
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "EventArgs"

    .line 44
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v3, "UserId1"

    .line 46
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "UserId2"

    .line 47
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v12, v0

    move-wide v0, v3

    move-wide v3, v12

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-wide v3, v0

    :goto_0
    move-wide v8, v0

    move-wide v0, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-wide v3, v0

    .line 50
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-wide v8, v3

    .line 55
    :goto_2
    invoke-direct {p0, v8, v9, v0, v1}, Lcom/roblox/client/realtime/b;->a(JJ)J

    move-result-wide v6

    const-wide/16 v3, -0x1

    const/4 p1, 0x0

    const/4 v11, 0x1

    cmp-long v5, v6, v3

    if-eqz v5, :cond_9

    .line 57
    invoke-static {}, Lcom/roblox/client/e/a/b;->a()Lcom/roblox/client/e/a/b;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/roblox/client/e/a/b;->a(J)Lcom/roblox/client/e/a/a;

    move-result-object v3

    const-string v4, "FriendshipCreated"

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/l/f;

    invoke-direct {v1, v3, v8, v9, p1}, Lcom/roblox/client/l/f;-><init>(Lcom/roblox/client/e/a/a;JI)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_3

    .line 68
    :cond_1
    invoke-static {}, Lcom/roblox/client/s/g;->a()Lcom/birbit/android/jobqueue/i;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/r/e;

    const/4 v10, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/roblox/client/r/e;-><init>(JJZ)V

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/g;)V

    goto :goto_3

    :cond_2
    const-string v4, "FriendshipDestroyed"

    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "unknown"

    if-eqz v4, :cond_5

    if-nez v3, :cond_3

    .line 76
    new-instance v3, Lcom/roblox/client/e/a/a;

    invoke-direct {v3, v6, v7, v5}, Lcom/roblox/client/e/a/a;-><init>(JLjava/lang/String;)V

    .line 78
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/l/f;

    invoke-direct {v0, v3, v8, v9, v11}, Lcom/roblox/client/l/f;-><init>(Lcom/roblox/client/e/a/a;JI)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const-string v4, "FriendshipRequested"

    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 86
    invoke-static {}, Lcom/roblox/client/b;->aA()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v3, :cond_6

    .line 88
    new-instance v3, Lcom/roblox/client/e/a/a;

    invoke-direct {v3, v6, v7, v5}, Lcom/roblox/client/e/a/a;-><init>(JLjava/lang/String;)V

    .line 90
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/l/f;

    const/4 v1, 0x2

    invoke-direct {v0, v3, v8, v9, v1}, Lcom/roblox/client/l/f;-><init>(Lcom/roblox/client/e/a/a;JI)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    const-string v4, "FriendshipDeclined"

    .line 97
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 99
    invoke-static {}, Lcom/roblox/client/b;->aA()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v3, :cond_8

    .line 101
    new-instance v3, Lcom/roblox/client/e/a/a;

    invoke-direct {v3, v6, v7, v5}, Lcom/roblox/client/e/a/a;-><init>(JLjava/lang/String;)V

    .line 103
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v2, Lcom/roblox/client/l/f;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/roblox/client/l/f;-><init>(Lcom/roblox/client/e/a/a;JI)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    :goto_4
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "FriendshipNotifications"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-direct {p0, p2}, Lcom/roblox/client/realtime/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
