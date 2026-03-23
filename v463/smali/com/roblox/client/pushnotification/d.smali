.class public Lcom/roblox/client/pushnotification/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;
    .locals 1

    .line 31
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/pushnotification/o;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/roblox/client/pushnotification/b/h;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/h;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/roblox/client/pushnotification/b/h;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/h;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/h;
    .locals 1

    .line 37
    :try_start_0
    new-instance v0, Lcom/roblox/client/pushnotification/b/h;

    invoke-direct {v0, p1}, Lcom/roblox/client/pushnotification/b/h;-><init>(Lcom/roblox/client/pushnotification/b/i;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/roblox/client/pushnotification/i;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p2, p1, p3}, Lcom/roblox/client/pushnotification/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/pushnotification/b/i;Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/d;->a(Lcom/roblox/client/pushnotification/b/i;)Lcom/roblox/client/pushnotification/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/d;->a(Lcom/roblox/client/pushnotification/b/h;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, p1}, Lcom/roblox/client/pushnotification/d;->b(Lcom/roblox/client/pushnotification/b/h;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 24
    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/d;->a(Ljava/lang/String;)Lcom/roblox/client/pushnotification/i;

    move-result-object v0

    .line 25
    invoke-virtual {p0, p2, v0, p1}, Lcom/roblox/client/pushnotification/d;->a(Landroid/content/Context;Lcom/roblox/client/pushnotification/i;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
