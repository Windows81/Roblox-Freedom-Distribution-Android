.class public Lcom/roblox/client/friends/nearby/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Lcom/roblox/client/friends/c/c;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/roblox/client/friends/nearby/b/a/a;->a:J

    .line 31
    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/a/a;->b:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/roblox/client/friends/nearby/b/a/a;->c:I

    .line 33
    iput-object p5, p0, Lcom/roblox/client/friends/nearby/b/a/a;->e:Lcom/roblox/client/friends/c/c;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/roblox/client/friends/c/c;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/friends/nearby/b/a/a;-><init>(JLjava/lang/String;ILcom/roblox/client/friends/c/c;)V

    return-void
.end method

.method public static a(Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;Lcom/roblox/client/friends/c/c;)Lcom/roblox/client/friends/nearby/b/a/a;
    .locals 4

    .line 85
    new-instance v0, Lcom/roblox/client/friends/nearby/b/a/a;

    iget-wide v1, p0, Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;->userId:J

    iget-object v3, p0, Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;->username:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/roblox/client/friends/nearby/b/a/a;-><init>(JLjava/lang/String;Lcom/roblox/client/friends/c/c;)V

    .line 86
    iget p0, p0, Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;->friendshipStatus:I

    invoke-virtual {v0, p0}, Lcom/roblox/client/friends/nearby/b/a/a;->a(I)V

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "friends"

    return-object p0

    :cond_1
    const-string p0, "pendingOnMe"

    return-object p0

    :cond_2
    const-string p0, "pendingOnOtherUser"

    return-object p0

    :cond_3
    const-string p0, "noFriendship"

    return-object p0
.end method


# virtual methods
.method public a()Lcom/roblox/client/friends/c/c;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/a/a;->e:Lcom/roblox/client/friends/c/c;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/roblox/client/friends/nearby/b/a/a;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/roblox/client/friends/nearby/b/a/a;->a:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/roblox/client/friends/nearby/b/a/a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 76
    iget-wide v2, p0, Lcom/roblox/client/friends/nearby/b/a/a;->a:J

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/a/a;->e:Lcom/roblox/client/friends/c/c;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/roblox/client/friends/c/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
