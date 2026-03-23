.class Lcom/roblox/client/friends/nearby/b/f$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/f$3;->a(Lcom/roblox/client/datastructures/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/roblox/client/datastructures/d;

.field final synthetic c:Lcom/roblox/client/friends/nearby/b/f$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 219
    const-class v0, Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/roblox/client/friends/nearby/b/f$3$1;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f$3;Lcom/roblox/client/datastructures/d;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->b:Lcom/roblox/client/datastructures/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 222
    sget-boolean v0, Lcom/roblox/client/friends/nearby/b/f$3$1;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->b:Lcom/roblox/client/datastructures/d;

    iget-object v0, v0, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->b:Lcom/roblox/client/datastructures/d;

    iget-object v0, v0, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast v0, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 225
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->b:Lcom/roblox/client/datastructures/d;

    iget v1, v1, Lcom/roblox/client/datastructures/d;->b:I

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/f$3;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->a()Lcom/roblox/client/friends/c/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 227
    invoke-virtual {v1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget-object v4, v4, Lcom/roblox/client/friends/nearby/b/f$3;->b:Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-virtual {v4}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    .line 228
    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget v2, v2, Lcom/roblox/client/friends/nearby/b/f$3;->c:I

    invoke-virtual {v1, v2}, Lcom/roblox/client/friends/nearby/b/a/a;->a(I)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure accepting/sending friend request. Setting back the status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget v3, v3, Lcom/roblox/client/friends/nearby/b/f$3;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NearbyUserViewModel"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->b:Lcom/roblox/client/datastructures/d;

    iget v2, v2, Lcom/roblox/client/datastructures/d;->b:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    const/4 v6, 0x7

    if-eq v2, v6, :cond_4

    const/16 v6, 0x8

    if-eq v2, v6, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const-string v2, "unknown"

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    const-string v2, "maxRedemption"

    goto :goto_1

    :cond_3
    const-string v2, "badToken"

    goto :goto_2

    :cond_4
    const-string v2, "tokenNotFound"

    goto :goto_2

    :cond_5
    const-string v2, "floodChecked"

    :goto_1
    const/4 v3, 0x4

    .line 257
    :goto_2
    iget-object v4, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget-object v4, v4, Lcom/roblox/client/friends/nearby/b/f$3;->d:Lcom/roblox/client/friends/nearby/b/f;

    new-instance v5, Lcom/roblox/client/datastructures/d;

    invoke-direct {v5, v3, v1}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;)V

    .line 258
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/f$3;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v1}, Lcom/roblox/client/friends/nearby/b/f;->e(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/friends/nearby/b/g;

    move-result-object v1

    .line 259
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v3

    .line 260
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v4

    .line 258
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/roblox/client/friends/nearby/b/g;->a(IJLjava/lang/String;)V

    goto :goto_3

    .line 264
    :cond_6
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$3$1;->c:Lcom/roblox/client/friends/nearby/b/f$3;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/f$3;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v1}, Lcom/roblox/client/friends/nearby/b/f;->e(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/friends/nearby/b/g;

    move-result-object v1

    .line 265
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v2

    .line 266
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v3

    .line 264
    invoke-virtual {v1, v2, v3, v4}, Lcom/roblox/client/friends/nearby/b/g;->a(IJ)V

    :cond_7
    :goto_3
    return-void
.end method
