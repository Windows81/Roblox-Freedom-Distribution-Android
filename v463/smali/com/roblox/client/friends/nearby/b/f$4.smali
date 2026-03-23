.class Lcom/roblox/client/friends/nearby/b/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/f;->a(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/roblox/client/friends/nearby/b/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f;JI)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$4;->c:Lcom/roblox/client/friends/nearby/b/f;

    iput-wide p2, p0, Lcom/roblox/client/friends/nearby/b/f$4;->a:J

    iput p4, p0, Lcom/roblox/client/friends/nearby/b/f$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$4;->c:Lcom/roblox/client/friends/nearby/b/f;

    iget-wide v1, p0, Lcom/roblox/client/friends/nearby/b/f$4;->a:J

    invoke-static {v0, v1, v2}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;J)Lcom/roblox/client/friends/nearby/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 289
    iget v2, p0, Lcom/roblox/client/friends/nearby/b/f$4;->b:I

    if-ne v1, v2, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalR status_pending not handled. Friendship status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyUserViewModel"

    .line 291
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_0
    iget v1, p0, Lcom/roblox/client/friends/nearby/b/f$4;->b:I

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/nearby/b/a/a;->a(I)V

    .line 297
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$4;->c:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v1, v0}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/friends/nearby/b/a/a;)Lcom/roblox/client/datastructures/d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;)V

    .line 298
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$4;->c:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/b/f;->e(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/friends/nearby/b/g;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/friends/nearby/b/f$4;->b:I

    iget-wide v2, p0, Lcom/roblox/client/friends/nearby/b/f$4;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/friends/nearby/b/g;->a(IJ)V

    :cond_1
    return-void
.end method
