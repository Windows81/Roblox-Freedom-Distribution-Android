.class public Lcom/roblox/client/contacts/model/d;
.super Lcom/roblox/client/contacts/model/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/contacts/model/a;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/roblox/client/contacts/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/model/a;-><init>(JLjava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;)I
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    const-string v2, "contactUserId"

    invoke-virtual {p1, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/roblox/client/contacts/model/d;->d:J

    .line 56
    const-string v2, "contactUsername"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/contacts/model/d;->e:Ljava/lang/String;

    .line 57
    const-string v2, "sharedFriendsCount"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/roblox/client/contacts/model/d;->f:I

    .line 58
    const-string v2, "friendshipStatus"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/roblox/client/contacts/model/d;->g:I

    .line 59
    const-string v2, "phoneNumber"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/contacts/model/d;->h:Ljava/lang/String;

    .line 61
    iget v2, p0, Lcom/roblox/client/contacts/model/d;->g:I

    if-ne v0, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->k:Z

    .line 64
    iget-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 65
    iget-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    invoke-static {v0, v1}, Lcom/roblox/client/RobloxSettings;->NotificationUserProfileImageUrl(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/contacts/model/d;->c:Ljava/lang/String;

    .line 67
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/roblox/client/contacts/model/d;->i:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/roblox/client/contacts/model/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/model/d;->a(Lcom/roblox/client/contacts/model/d;)I

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/roblox/client/contacts/model/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/contacts/model/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/roblox/client/contacts/model/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/roblox/client/contacts/model/d;->f:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    return v0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    const/4 v0, 0x2

    iget v1, p0, Lcom/roblox/client/contacts/model/d;->g:I

    if-ne v0, v1, :cond_0

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    .line 104
    :goto_0
    iput-boolean v2, p0, Lcom/roblox/client/contacts/model/d;->k:Z

    .line 105
    return-void

    .line 101
    :cond_0
    iput v2, p0, Lcom/roblox/client/contacts/model/d;->g:I

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x3

    iget v1, p0, Lcom/roblox/client/contacts/model/d;->g:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->j:Z

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->j:Z

    .line 117
    return-void
.end method
