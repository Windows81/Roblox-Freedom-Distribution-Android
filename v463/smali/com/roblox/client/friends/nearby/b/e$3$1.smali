.class Lcom/roblox/client/friends/nearby/b/e$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/e$3;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Lcom/roblox/client/friends/nearby/b/e$3;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/e$3;Le/l;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->b:Lcom/roblox/client/friends/nearby/b/e$3;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->a:Le/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 189
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOrAcceptFriendRequest. Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyUserRepository"

    .line 190
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->b:Lcom/roblox/client/friends/nearby/b/e$3;

    iget-object v0, v0, Lcom/roblox/client/friends/nearby/b/e$3;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->b:Lcom/roblox/client/friends/nearby/b/e$3;

    iget-object v3, v3, Lcom/roblox/client/friends/nearby/b/e$3;->b:Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 198
    :cond_0
    iget v1, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_2

    const/16 v0, 0x1ad

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->b:Lcom/roblox/client/friends/nearby/b/e$3;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/e$3;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->c()I

    move-result v0

    invoke-static {v1, v0}, Lcom/roblox/client/friends/nearby/b/e;->b(Lcom/roblox/client/friends/nearby/b/e;I)I

    move-result v0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->b:Lcom/roblox/client/friends/nearby/b/e$3;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/e$3;->a:Landroidx/lifecycle/p;

    new-instance v2, Lcom/roblox/client/datastructures/d;

    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/e$3$1;->b:Lcom/roblox/client/friends/nearby/b/e$3;

    iget-object v3, v3, Lcom/roblox/client/friends/nearby/b/e$3;->b:Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-direct {v2, v0, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
