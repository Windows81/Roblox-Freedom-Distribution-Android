.class public Lcom/roblox/client/pushnotification/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    .line 46
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    .line 50
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/lang/String;)J
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/roblox/client/ae/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/g;
    .locals 1

    .line 74
    :try_start_0
    new-instance v0, Lcom/roblox/client/pushnotification/b/g;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/g;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V
    .locals 8

    .line 19
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/g;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/c;->b(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 25
    invoke-direct {p0, v1}, Lcom/roblox/client/pushnotification/c;->c(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, -0x1

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "FriendRequestReceived"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "PrivateMessageReceived"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v4, "ChatNewMessage"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v4, "FriendRequestAccepted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->e()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/c;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/i;Landroid/content/Context;J)V

    goto :goto_1

    .line 31
    :cond_2
    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/c;->b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/i;Landroid/content/Context;J)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x253fa4b8 -> :sswitch_3
        0x3766c7df -> :sswitch_2
        0x3ea07f25 -> :sswitch_1
        0x74fceef2 -> :sswitch_0
    .end sparse-switch
.end method

.method a(Lcom/roblox/client/pushnotification/i;Landroid/content/Context;J)V
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1, p2, p3, p4}, Lcom/roblox/client/pushnotification/i;->a(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
