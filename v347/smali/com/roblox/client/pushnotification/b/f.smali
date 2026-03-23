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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    const-string v0, "AuthorUserName"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    .line 41
    const-string v0, "AuthorUserId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    .line 42
    const-string v0, "BodyPreview"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    .line 43
    const-string v0, "MessageId"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    .line 44
    const-string v0, "EventDate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    :goto_3
    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->f:J

    .line 48
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/f;->f()V

    .line 49
    return-void

    .line 40
    :cond_0
    const-string v0, "AuthorUserName"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    const-string v0, "BodyPreview"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 44
    :cond_2
    const-string v0, "EventDate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/util/d;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_3
.end method

.method private f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification authorUserName is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 56
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification authorUserId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    :cond_3
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification date is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    :cond_5
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification bodyPreview is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_6
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    .line 65
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "PrivateMessageNotification messageId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_7
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    return-wide v0
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 2

    .prologue
    .line 81
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/f;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->a:Ljava/lang/String;

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/b/f;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->b:Ljava/lang/String;

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/roblox/client/pushnotification/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->c:J

    .line 87
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->f:J

    .line 89
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->f:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/f;->e:J

    return-wide v0
.end method
