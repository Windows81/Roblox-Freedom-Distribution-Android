.class public Lcom/roblox/client/pushnotification/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/pushnotification/b/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "AuthorUserName"

    .line 40
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
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    const-string v0, "AuthorUserId"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    const-string v0, "BodyPreview"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    const-string v0, "MessageId"

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    const-string v0, "EventDate"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_3

    .line 46
    :cond_3
    invoke-static {v2}, Lcom/roblox/client/ae/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->f:J

    .line 48
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/f;->f()V

    return-void
.end method

.method private f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 58
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification messageId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification bodyPreview is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification date is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification authorUserId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_4
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification authorUserName is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    return-wide v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 3

    .line 81
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/f;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->a:Ljava/lang/String;

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    .line 85
    invoke-direct {v0}, Lcom/roblox/client/pushnotification/b/f;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    .line 87
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->f:J

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->f:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    return-wide v0
.end method
