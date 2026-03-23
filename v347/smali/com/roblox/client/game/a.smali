.class public Lcom/roblox/client/game/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/roblox/client/game/a;->a:J

    .line 14
    iput-wide v0, p0, Lcom/roblox/client/game/a;->b:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/game/a;->c:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/game/a;->d:Ljava/lang/String;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/game/a;->e:I

    .line 21
    return-void
.end method

.method public static a(Lcom/roblox/client/game/a;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v1, "mPlaceId"

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 159
    const-string v1, "mUserId"

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    const-string v1, "mAccessCode"

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "mGameId"

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "mRequestType"

    invoke-virtual {p0}, Lcom/roblox/client/game/a;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 172
    if-nez p0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/roblox/client/game/a;

    invoke-direct {v0}, Lcom/roblox/client/game/a;-><init>()V

    .line 176
    const-string v1, "mPlaceId"

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/game/a;->a(J)V

    .line 177
    const-string v1, "mUserId"

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/game/a;->b(J)V

    .line 178
    const-string v1, "mAccessCode"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/a;->a(Ljava/lang/String;)V

    .line 179
    const-string v1, "mGameId"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/a;->b(Ljava/lang/String;)V

    .line 180
    const-string v1, "mRequestType"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/a;->a(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/roblox/client/game/a;
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 104
    new-instance v8, Lcom/roblox/client/game/a;

    invoke-direct {v8}, Lcom/roblox/client/game/a;-><init>()V

    .line 106
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    .line 107
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 109
    :goto_1
    const/4 v0, -0x1

    .line 111
    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v8, v2, v3}, Lcom/roblox/client/game/a;->b(J)V

    .line 114
    const/4 v0, 0x1

    .line 139
    :cond_0
    :goto_2
    if-eqz p4, :cond_6

    .line 140
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/roblox/client/game/a;->a(I)V

    .line 145
    :goto_3
    return-object v8

    :cond_1
    move-wide v6, v4

    .line 106
    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 107
    goto :goto_1

    .line 116
    :cond_3
    cmp-long v1, v6, v4

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v8, v6, v7}, Lcom/roblox/client/game/a;->a(J)V

    .line 120
    if-eqz p2, :cond_4

    .line 122
    invoke-virtual {v8, p2}, Lcom/roblox/client/game/a;->a(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x2

    goto :goto_2

    .line 125
    :cond_4
    if-eqz p3, :cond_5

    .line 127
    invoke-virtual {v8, p3}, Lcom/roblox/client/game/a;->b(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x3

    goto :goto_2

    .line 132
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 142
    :cond_6
    invoke-virtual {v8, v0}, Lcom/roblox/client/game/a;->a(I)V

    goto :goto_3
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/roblox/client/game/a;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/roblox/client/game/a;->e:I

    .line 75
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/roblox/client/game/a;->a:J

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/roblox/client/game/a;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/roblox/client/game/a;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/roblox/client/game/a;->b:J

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/roblox/client/game/a;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/game/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/roblox/client/game/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/roblox/client/game/a;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ placeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/game/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/game/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/game/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
