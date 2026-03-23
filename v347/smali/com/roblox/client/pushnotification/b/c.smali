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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    const-string v0, "AccepterUserName"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    .line 43
    const-string v0, "AccepterUserId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    .line 44
    const-string v0, "EventDate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    :goto_2
    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->d:J

    .line 48
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/c;->e()V

    .line 49
    return-void

    .line 42
    :cond_0
    const-string v0, "AccepterUserName"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "EventDate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/util/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "FriendRequestAcceptedNotification username is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 56
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "FriendRequestAcceptedNotification userId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    :cond_3
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "FriendRequestAcceptedNotification date is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    return-wide v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 2

    .prologue
    .line 75
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/c;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->a:Ljava/lang/String;

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/roblox/client/pushnotification/b/c;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->c:J

    .line 79
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->d:J

    .line 81
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/c;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/c;->b:Ljava/lang/String;

    return-object v0
.end method
