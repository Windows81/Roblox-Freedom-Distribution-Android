.class public Lcom/roblox/client/pushnotification/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/pushnotification/b/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "AccepterUserName"

    .line 42
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
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    const-string v0, "AccepterUserId"

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    const-string v0, "EventDate"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 46
    :cond_2
    invoke-static {v2}, Lcom/roblox/client/ae/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->d:J

    .line 48
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/c;->e()V

    return-void
.end method

.method private e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 58
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "FriendRequestAcceptedNotification date is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "FriendRequestAcceptedNotification userId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "FriendRequestAcceptedNotification username is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    return-wide v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 2

    .line 75
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/c;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->a:Ljava/lang/String;

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/c;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    .line 79
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->d:J

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    return-object v0
.end method
