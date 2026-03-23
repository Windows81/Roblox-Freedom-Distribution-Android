.class public Lcom/roblox/client/pushnotification/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/pushnotification/b/b;)Lcom/roblox/client/pushnotification/i;
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;J)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method private a(Lcom/roblox/client/pushnotification/b/i;Lcom/roblox/client/pushnotification/b/m;)Lcom/roblox/client/pushnotification/i;
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    const-string v1, "FriendRequestAccepted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FriendRequestReceived"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PrivateMessageReceived"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "ChatNewMessage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {p0, p2}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/b;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/b;
    .locals 1

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/b;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/m;
    .locals 3

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    const-string v2, "FriendRequestAccepted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    new-instance v0, Lcom/roblox/client/pushnotification/b/c;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/c;-><init>(Lcom/roblox/client/pushnotification/b/i;)V

    :goto_0
    move-object v1, v0

    .line 88
    :cond_0
    :goto_1
    return-object v1

    .line 74
    :cond_1
    const-string v2, "FriendRequestReceived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    new-instance v0, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/d;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 76
    :cond_2
    :try_start_1
    const-string v2, "PrivateMessageReceived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    new-instance v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/f;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_3
    :try_start_2
    const-string v2, "ChatNewMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/h;->b(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/b;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 7

    .prologue
    .line 31
    new-instance v0, Lcom/roblox/client/pushnotification/b/a;

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/b/a;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    move-object v1, v0

    .line 32
    check-cast v1, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {p0, v1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/b;)Lcom/roblox/client/pushnotification/i;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, p1, v1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/m;Landroid/content/Context;Lcom/roblox/client/pushnotification/i;)V

    .line 34
    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/i;Lcom/roblox/client/pushnotification/b/m;)Lcom/roblox/client/pushnotification/i;

    move-result-object v1

    .line 26
    invoke-virtual {p0, v0, p2, v1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/m;Landroid/content/Context;Lcom/roblox/client/pushnotification/i;)V

    .line 27
    return-void
.end method

.method a(Lcom/roblox/client/pushnotification/b/m;Landroid/content/Context;Lcom/roblox/client/pushnotification/i;)V
    .locals 0

    .prologue
    .line 60
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 61
    invoke-interface {p3, p2, p1}, Lcom/roblox/client/pushnotification/i;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V

    .line 63
    :cond_0
    return-void
.end method
