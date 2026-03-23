.class public Lcom/roblox/client/pushnotification/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/pushnotification/b/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "SenderUserName"

    .line 57
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
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    const-string v0, "SenderDisplayName"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:Ljava/lang/String;

    const-string v0, "SenderUserId"

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    const-string v0, "EventDate"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->l:Ljava/lang/String;

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_3

    .line 62
    :cond_3
    invoke-static {v0}, Lcom/roblox/client/ae/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    :goto_3
    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    const-string v0, "ConversationTitle"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    const-string v0, "ConversationId"

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:J

    const-string v0, "ConversationType"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    const-string v0, "MessageId"

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    const-string v0, "MessageContent"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    const-string v0, "Category"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iput-object v2, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/b;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    .line 78
    iput-wide p2, p0, Lcom/roblox/client/pushnotification/b/b;->f:J

    .line 79
    iput-object p4, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 87
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    .line 90
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 102
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationType is invalid"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationType is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification messageContent is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification messageId is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_4
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationId is null"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_5
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationTitle is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_6
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification date is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_7
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification category is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_8
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification senderId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_9
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification senderName is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OneToOneConversation"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MultiUserConversation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 2

    .line 132
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/b;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    .line 134
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    .line 135
    check-cast p1, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    .line 138
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:J

    .line 139
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    return-object v0
.end method
