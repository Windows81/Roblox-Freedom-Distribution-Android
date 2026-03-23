.class public Lcom/roblox/client/contacts/model/d;
.super Lcom/roblox/client/contacts/model/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/contacts/model/a;",
        "Ljava/lang/Comparable<",
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
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/model/a;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/contacts/model/d;)I
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 124
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "contactUserId"

    const-wide/16 v1, -0x1

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    const-string v0, "contactUsername"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/contacts/model/d;->e:Ljava/lang/String;

    const-string v0, "sharedFriendsCount"

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/contacts/model/d;->f:I

    const-string v0, "friendshipStatus"

    .line 56
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    const-string v0, "phoneNumber"

    .line 57
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/contacts/model/d;->h:Ljava/lang/String;

    .line 59
    iget p1, p0, Lcom/roblox/client/contacts/model/d;->g:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/roblox/client/contacts/model/d;->k:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/roblox/client/contacts/model/d;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/roblox/client/contacts/model/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/contacts/model/d;->a(Lcom/roblox/client/contacts/model/d;)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/roblox/client/contacts/model/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 5

    .line 67
    iget-wide v0, p0, Lcom/roblox/client/contacts/model/d;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/roblox/client/contacts/model/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/roblox/client/contacts/model/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/roblox/client/contacts/model/d;->f:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    return v0
.end method

.method public k()V
    .locals 3

    .line 91
    iget v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x3

    .line 92
    iput v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    goto :goto_0

    .line 94
    :cond_0
    iput v1, p0, Lcom/roblox/client/contacts/model/d;->g:I

    .line 97
    :goto_0
    iput-boolean v1, p0, Lcom/roblox/client/contacts/model/d;->k:Z

    return-void
.end method

.method public l()Z
    .locals 2

    .line 101
    iget v0, p0, Lcom/roblox/client/contacts/model/d;->g:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->j:Z

    return v0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/roblox/client/contacts/model/d;->j:Z

    return-void
.end method
