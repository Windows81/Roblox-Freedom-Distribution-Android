.class public Lcom/roblox/client/pushnotification/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/pushnotification/b/b;)Lcom/roblox/client/pushnotification/i;
    .locals 4

    .line 54
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;J)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/roblox/client/pushnotification/b/i;Lcom/roblox/client/pushnotification/b/m;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "FriendRequestAccepted"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FriendRequestReceived"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PrivateMessageReceived"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "ChatNewMessage"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 46
    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {p0, p2}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/b;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    :goto_0
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/b;
    .locals 1

    .line 93
    :try_start_0
    new-instance v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/b;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/m;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    const-string v2, "FriendRequestAccepted"

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    new-instance v1, Lcom/roblox/client/pushnotification/b/c;

    invoke-direct {v1, p1}, Lcom/roblox/client/pushnotification/b/c;-><init>(Lcom/roblox/client/pushnotification/b/i;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    const-string v2, "FriendRequestReceived"

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v1, Lcom/roblox/client/pushnotification/b/d;

    invoke-direct {v1, p1}, Lcom/roblox/client/pushnotification/b/d;-><init>(Lcom/roblox/client/pushnotification/b/i;)V

    goto :goto_0

    :cond_1
    const-string v2, "PrivateMessageReceived"

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    new-instance v1, Lcom/roblox/client/pushnotification/b/f;

    invoke-direct {v1, p1}, Lcom/roblox/client/pushnotification/b/f;-><init>(Lcom/roblox/client/pushnotification/b/i;)V

    goto :goto_0

    :cond_2
    const-string v2, "ChatNewMessage"

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/h;->b(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/b;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/roblox/client/pushnotification/g; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/g;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 7

    .line 31
    new-instance v6, Lcom/roblox/client/pushnotification/b/a;

    move-object v0, v6

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/pushnotification/b/a;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 32
    move-object p2, v6

    check-cast p2, Lcom/roblox/client/pushnotification/b/b;

    invoke-direct {p0, p2}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/b;)Lcom/roblox/client/pushnotification/i;

    move-result-object p2

    .line 33
    invoke-virtual {p0, v6, p1, p2}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/m;Landroid/content/Context;Lcom/roblox/client/pushnotification/i;)V

    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/m;

    move-result-object v0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/i;Lcom/roblox/client/pushnotification/b/m;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    .line 26
    invoke-virtual {p0, v0, p2, p1}, Lcom/roblox/client/pushnotification/h;->a(Lcom/roblox/client/pushnotification/b/m;Landroid/content/Context;Lcom/roblox/client/pushnotification/i;)V

    return-void
.end method

.method a(Lcom/roblox/client/pushnotification/b/m;Landroid/content/Context;Lcom/roblox/client/pushnotification/i;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 61
    invoke-interface {p3, p2, p1}, Lcom/roblox/client/pushnotification/i;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V

    :cond_0
    return-void
.end method
