.class public Lcom/roblox/client/realtime/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/realtime/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JJ)J
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-wide p3

    .line 109
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_1

    move-wide p3, p1

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    const-wide/16 p3, -0x1

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/p;

    invoke-direct {v1}, Lcom/roblox/client/h/p;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 103
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 36
    .line 38
    const/4 v4, 0x0

    .line 40
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v3, "Type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 42
    :try_start_1
    const-string v3, "EventArgs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    if-eqz v5, :cond_a

    .line 44
    const-string v2, "UserId1"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 45
    :try_start_2
    const-string v8, "UserId2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    :goto_0
    move-object v9, v4

    move-wide v4, v2

    move-wide v2, v0

    move-object v0, v9

    .line 53
    :goto_1
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/roblox/client/realtime/d;->a(JJ)J

    move-result-wide v2

    .line 54
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 55
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/n;->a(J)Lcom/roblox/client/chat/a/m;

    move-result-object v1

    .line 56
    const-string v4, "FriendshipCreated"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/n;->b(Lcom/roblox/client/chat/a/m;)V

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/e/m;

    invoke-direct {v2, v1, v7}, Lcom/roblox/client/e/m;-><init>(Lcom/roblox/client/chat/a/m;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 65
    :goto_2
    invoke-direct {p0}, Lcom/roblox/client/realtime/d;->a()V

    move v0, v6

    .line 98
    :goto_3
    return v0

    .line 47
    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move-wide v4, v0

    .line 48
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v9, v2

    move-wide v2, v0

    move-object v0, v9

    goto :goto_1

    .line 63
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/s;

    invoke-direct {v1, v2, v3, v6}, Lcom/roblox/client/h/s;-><init>(JZ)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    goto :goto_2

    .line 68
    :cond_1
    const-string v4, "FriendshipDestroyed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    if-nez v1, :cond_9

    .line 70
    new-instance v0, Lcom/roblox/client/chat/a/m;

    const-string v1, "unknown"

    invoke-direct {v0, v2, v3, v1}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;)V

    .line 72
    :goto_5
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/n;->c(Lcom/roblox/client/chat/a/m;)V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/e/m;

    invoke-direct {v2, v0, v6}, Lcom/roblox/client/e/m;-><init>(Lcom/roblox/client/chat/a/m;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    move v0, v6

    .line 74
    goto :goto_3

    .line 76
    :cond_2
    const-string v4, "FriendshipRequested"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 77
    invoke-static {}, Lcom/roblox/client/b;->bs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    if-nez v1, :cond_3

    .line 79
    new-instance v1, Lcom/roblox/client/chat/a/m;

    const-string v0, "unknown"

    invoke-direct {v1, v2, v3, v0}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;)V

    .line 81
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/e/m;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/roblox/client/e/m;-><init>(Lcom/roblox/client/chat/a/m;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 83
    :cond_4
    invoke-direct {p0}, Lcom/roblox/client/realtime/d;->a()V

    move v0, v6

    .line 84
    goto :goto_3

    .line 86
    :cond_5
    const-string v4, "FriendshipDeclined"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    invoke-static {}, Lcom/roblox/client/b;->bs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    if-nez v1, :cond_6

    .line 89
    new-instance v1, Lcom/roblox/client/chat/a/m;

    const-string v0, "unknown"

    invoke-direct {v1, v2, v3, v0}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;)V

    .line 91
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/e/m;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/roblox/client/e/m;-><init>(Lcom/roblox/client/chat/a/m;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 93
    :cond_7
    invoke-direct {p0}, Lcom/roblox/client/realtime/d;->a()V

    move v0, v6

    .line 94
    goto/16 :goto_3

    .line 47
    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move-wide v4, v0

    goto/16 :goto_4

    :catch_2
    move-exception v5

    move-object v9, v5

    move-object v10, v4

    move-wide v4, v2

    move-object v3, v9

    move-object v2, v10

    goto/16 :goto_4

    :cond_8
    move v0, v7

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_5

    :cond_a
    move-wide v2, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    .prologue
    .line 22
    const-string v0, "FriendshipNotifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p2}, Lcom/roblox/client/realtime/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
