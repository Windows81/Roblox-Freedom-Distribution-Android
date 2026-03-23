.class public Lcom/roblox/client/pushnotification/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/m;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/pushnotification/b/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/i;->c()Lorg/json/JSONObject;

    move-result-object v4

    .line 55
    const-string v0, "SenderUserName"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    .line 56
    const-string v0, "SenderUserId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/roblox/client/pushnotification/b/b;->c:J

    .line 57
    const-string v0, "EventDate"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    .line 61
    const-string v0, "ConversationTitle"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:Ljava/lang/String;

    .line 62
    const-string v0, "ConversationId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    .line 63
    const-string v0, "ConversationType"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    .line 65
    const-string v0, "MessageId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    .line 66
    const-string v0, "MessageContent"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    .line 68
    const-string v0, "Category"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    iput-object v1, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/roblox/client/pushnotification/b/b;->a()V

    .line 71
    return-void

    .line 55
    :cond_0
    const-string v0, "SenderUserName"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "EventDate"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/util/d;->b(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    .line 61
    :cond_3
    const-string v0, "ConversationTitle"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 63
    :cond_4
    const-string v0, "ConversationType"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 65
    :cond_5
    const-string v0, "MessageId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 66
    :cond_6
    const-string v0, "MessageContent"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 68
    :cond_7
    const-string v0, "Category"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    .line 75
    iput-wide p2, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    .line 76
    iput-object p4, p0, Lcom/roblox/client/pushnotification/b/b;->f:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/pushnotification/g;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification senderName is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 85
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification senderId <= 0"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    :cond_3
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification category is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    :cond_5
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification date is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    :cond_7
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationTitle is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_8
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 97
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationId is null"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    :cond_a
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification messageId is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_b
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    :cond_c
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification messageContent is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_d
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 106
    :cond_e
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationType is null or empty"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_f
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/pushnotification/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 109
    new-instance v0, Lcom/roblox/client/pushnotification/g;

    const-string v1, "ChatNewMessageNotification conversationType is invalid"

    invoke-direct {v0, v1}, Lcom/roblox/client/pushnotification/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_10
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    const-string v0, "OneToOneConversation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MultiUserConversation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 2

    .prologue
    .line 129
    instance-of v0, p1, Lcom/roblox/client/pushnotification/b/b;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    .line 131
    invoke-interface {p1}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    move-object v0, p1

    .line 133
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:J

    move-object v0, p1

    .line 134
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:Ljava/lang/String;

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    move-object v0, p1

    .line 137
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    .line 139
    check-cast p1, Lcom/roblox/client/pushnotification/b/b;

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/b/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    .line 141
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/roblox/client/pushnotification/b/b;->c:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/b;->j:Ljava/lang/String;

    return-object v0
.end method
