.class public Lcom/roblox/client/game/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/roblox/client/game/h;->a:J

    .line 14
    iput-wide v0, p0, Lcom/roblox/client/game/h;->b:J

    .line 15
    iput-wide v0, p0, Lcom/roblox/client/game/h;->c:J

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/roblox/client/game/h;->d:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/roblox/client/game/h;->e:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/roblox/client/game/h;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/roblox/client/game/h;->g:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/roblox/client/game/h;)Landroid/os/Bundle;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 209
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->a()J

    move-result-wide v0

    const-string v2, "mPlaceId"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->b()J

    move-result-wide v0

    const-string v2, "mUserId"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->c()J

    move-result-wide v0

    const-string v2, "mConversationId"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAccessCode"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mGameId"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->g()I

    move-result v0

    const-string v1, "mRequestType"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    invoke-virtual {p1}, Lcom/roblox/client/game/h;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mReferralPage"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/roblox/client/game/h;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-static {v0, p0}, Lcom/roblox/client/game/h;->a(Landroid/os/Bundle;Lcom/roblox/client/game/h;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/roblox/client/game/h;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_0
    new-instance v0, Lcom/roblox/client/game/h;

    invoke-direct {v0}, Lcom/roblox/client/game/h;-><init>()V

    const-string v1, "mPlaceId"

    const-wide/16 v2, 0x0

    .line 231
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/roblox/client/game/h;->a(J)V

    const-string v1, "mUserId"

    .line 232
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/roblox/client/game/h;->b(J)V

    const-string v1, "mConversationId"

    .line 233
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/game/h;->c(J)V

    const-string v1, "mAccessCode"

    const-string v2, ""

    .line 234
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/h;->a(Ljava/lang/String;)V

    const-string v1, "mGameId"

    .line 235
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/h;->b(Ljava/lang/String;)V

    const/4 v1, -0x1

    const-string v3, "mRequestType"

    .line 236
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/h;->a(I)V

    const-string v1, "mReferralPage"

    .line 237
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/roblox/client/game/h;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/roblox/client/game/h;
    .locals 6

    .line 108
    new-instance v0, Lcom/roblox/client/game/h;

    invoke-direct {v0}, Lcom/roblox/client/game/h;-><init>()V

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_1

    :cond_1
    move-wide p0, v1

    :goto_1
    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    cmp-long v5, p0, v1

    if-eqz v5, :cond_2

    .line 113
    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/game/h;->c(J)V

    .line 114
    invoke-virtual {v0, v3, v4}, Lcom/roblox/client/game/h;->a(J)V

    const/4 p0, 0x6

    .line 115
    invoke-virtual {v0, p0}, Lcom/roblox/client/game/h;->a(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {v0, p2}, Lcom/roblox/client/game/h;->c(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;
    .locals 7

    .line 149
    new-instance v0, Lcom/roblox/client/game/h;

    invoke-direct {v0}, Lcom/roblox/client/game/h;-><init>()V

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_1

    :cond_1
    move-wide p0, v1

    :goto_1
    const/4 v5, -0x1

    cmp-long v6, v3, v1

    if-nez v6, :cond_2

    cmp-long v6, p0, v1

    if-eqz v6, :cond_2

    .line 158
    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/game/h;->b(J)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    cmp-long p0, v3, v1

    if-eqz p0, :cond_5

    .line 163
    invoke-virtual {v0, v3, v4}, Lcom/roblox/client/game/h;->a(J)V

    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {v0, p2}, Lcom/roblox/client/game/h;->a(Ljava/lang/String;)V

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 172
    invoke-virtual {v0, p3}, Lcom/roblox/client/game/h;->b(Ljava/lang/String;)V

    const/4 v5, 0x3

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 185
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/roblox/client/game/h;->a(I)V

    goto :goto_3

    .line 187
    :cond_6
    invoke-virtual {v0, v5}, Lcom/roblox/client/game/h;->a(I)V

    :goto_3
    if-eqz p5, :cond_7

    .line 190
    invoke-virtual {v0, p5}, Lcom/roblox/client/game/h;->c(Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/roblox/client/game/h;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/roblox/client/game/h;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/roblox/client/game/h;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/roblox/client/game/h;->d:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/roblox/client/game/h;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/roblox/client/game/h;->b:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/roblox/client/game/h;->e:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/roblox/client/game/h;->c:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/roblox/client/game/h;->c:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/roblox/client/game/h;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/roblox/client/game/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/roblox/client/game/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/roblox/client/game/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/roblox/client/game/h;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{ placeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/roblox/client/game/h;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/roblox/client/game/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", conversationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/roblox/client/game/h;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accessCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/game/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/game/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reqType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/game/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", referralPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/game/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
