.class public Lcom/roblox/client/pushnotification/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 54
    invoke-static {p1}, Lcom/roblox/client/util/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/g;
    .locals 1

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lcom/roblox/client/pushnotification/b/g;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/g;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/g;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    invoke-direct {p0, v1}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-direct {p0, v1}, Lcom/roblox/client/pushnotification/c;->b(Lcom/roblox/client/pushnotification/b/g;)Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 25
    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/c;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 27
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 43
    :cond_1
    :goto_1
    return-void

    .line 27
    :sswitch_0
    const-string v3, "FriendRequestReceived"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "FriendRequestAccepted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "PrivateMessageReceived"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "ChatNewMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 31
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/roblox/client/pushnotification/c;->b(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0, p2, v4, v5}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/i;Landroid/content/Context;J)V

    goto :goto_1

    .line 36
    :pswitch_1
    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/c;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0, p2, v4, v5}, Lcom/roblox/client/pushnotification/c;->a(Lcom/roblox/client/pushnotification/i;Landroid/content/Context;J)V

    goto :goto_1

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x253fa4b8 -> :sswitch_1
        0x3766c7df -> :sswitch_3
        0x3ea07f25 -> :sswitch_2
        0x74fceef2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/roblox/client/pushnotification/i;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1, p2, p3, p4}, Lcom/roblox/client/pushnotification/i;->a(Landroid/content/Context;J)V

    .line 86
    :cond_0
    return-void
.end method
