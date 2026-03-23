.class public Lcom/roblox/client/friends/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/roblox/client/friends/c/c;->b:J

    return-void
.end method

.method public static a(Lcom/roblox/platform/http/returntypes/TokenResponseBody;)Lcom/roblox/client/friends/c/c;
    .locals 4

    .line 17
    new-instance v0, Lcom/roblox/client/friends/c/c;

    iget-object v1, p0, Lcom/roblox/platform/http/returntypes/TokenResponseBody;->code:Ljava/lang/String;

    iget-wide v2, p0, Lcom/roblox/platform/http/returntypes/TokenResponseBody;->expires:J

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/friends/c/c;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/roblox/client/friends/c/c;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/roblox/client/friends/c/c;->b:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    check-cast p1, Lcom/roblox/client/friends/c/c;

    .line 38
    iget-object v0, p0, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
