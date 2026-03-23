.class public Lcom/roblox/client/chat/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/chat/a/f;


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/chat/a/d;-><init>(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    .line 47
    iput-wide p1, p0, Lcom/roblox/client/chat/a/d;->a:J

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    .line 68
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/a/d;->a:J

    .line 69
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/d;->f:Ljava/lang/String;

    .line 70
    const-string v0, "conversationType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/d;->c:Ljava/lang/String;

    .line 71
    const-string v0, "hasUnreadMessages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/chat/a/d;->b:Z

    .line 73
    const-string v0, "participants"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 77
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    const-string v3, "User"

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    new-instance v3, Lcom/roblox/client/chat/a/m;

    const-string v4, "targetId"

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/roblox/client/chat/a/n;->a(Lcom/roblox/client/chat/a/m;)V

    .line 82
    iget-object v2, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/chat/a/d;->l()V

    .line 88
    :cond_2
    const-string v0, "initiator"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    const-string v1, "targetId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/chat/a/d;->d:J

    .line 91
    const-string v0, "conversationTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    const-string v1, "isDefaultTitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/chat/a/d;->h:Z

    .line 93
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    .line 211
    return-void
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->f:Ljava/lang/String;

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->g:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private l()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    move v2, v0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 109
    if-lez v2, :cond_0

    .line 110
    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 106
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/a/d;->g:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/roblox/client/chat/a/d;->d:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/roblox/client/chat/a/d;->d:J

    .line 101
    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/d;)V
    .locals 2

    .prologue
    .line 222
    if-ne p1, p0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/d;->a(Ljava/util/ArrayList;)V

    .line 226
    invoke-direct {p0}, Lcom/roblox/client/chat/a/d;->l()V

    .line 227
    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/roblox/client/chat/a/d;->c(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/d;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/d;->a(J)V

    .line 229
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/d;->b(Z)V

    .line 230
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/d;->b(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/d;->a(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/roblox/client/chat/a/d;->f:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/roblox/client/chat/a/d;->h:Z

    .line 177
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/d;->c(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/roblox/client/chat/a/d;->a:J

    .line 151
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/roblox/client/chat/a/d;->c:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/roblox/client/chat/a/d;->b:Z

    .line 219
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/roblox/client/chat/a/d;->a:J

    return-wide v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/d;->h:Z

    return v0
.end method

.method public g()J
    .locals 6

    .prologue
    .line 180
    const-string v0, "OneToOneConversation"

    invoke-virtual {p0}, Lcom/roblox/client/chat/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 183
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v0

    .line 189
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/m;

    .line 196
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/m;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/roblox/client/chat/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/d;->b:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/chat/a/d;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
