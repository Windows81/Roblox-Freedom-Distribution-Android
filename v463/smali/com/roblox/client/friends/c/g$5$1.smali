.class Lcom/roblox/client/friends/c/g$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/g$5;->a(Lcom/roblox/client/datastructures/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/d;

.field final synthetic b:Lcom/roblox/client/friends/c/g$5;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/g$5;Lcom/roblox/client/datastructures/d;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iput-object p2, p0, Lcom/roblox/client/friends/c/g$5$1;->a:Lcom/roblox/client/datastructures/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1;->a:Lcom/roblox/client/datastructures/d;

    iget v0, v0, Lcom/roblox/client/datastructures/d;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->f(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/c/d;->b(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->f(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/roblox/client/friends/c/d;->a(I)V

    goto :goto_0

    :cond_1
    const-string v0, "NearbyUserTokenViewModel"

    const-string v1, "INVALIDATE MY TOKEN!."

    .line 220
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->f(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/d;->e()V

    .line 223
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->e(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/c/g$5$1$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/c/g$5$1$1;-><init>(Lcom/roblox/client/friends/c/g$5$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5$1;->b:Lcom/roblox/client/friends/c/g$5;

    iget-object v0, v0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->f(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/c/d;->b(I)V

    :goto_0
    return-void
.end method
