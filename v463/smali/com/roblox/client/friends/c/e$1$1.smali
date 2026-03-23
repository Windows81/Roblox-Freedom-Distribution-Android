.class Lcom/roblox/client/friends/c/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/e$1;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Lcom/roblox/client/friends/c/e$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/e$1;Le/l;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/roblox/client/friends/c/e$1$1;->b:Lcom/roblox/client/friends/c/e$1;

    iput-object p2, p0, Lcom/roblox/client/friends/c/e$1$1;->a:Le/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 45
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/friends/c/e$1$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToken.onResponse. Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyTokenRepository"

    .line 47
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "body: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, v0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/roblox/client/friends/c/e$1$1;->b:Lcom/roblox/client/friends/c/e$1;

    iget-object v0, v0, Lcom/roblox/client/friends/c/e$1;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/friends/c/e$1$1;->b:Lcom/roblox/client/friends/c/e$1;

    iget-object v1, v1, Lcom/roblox/client/friends/c/e$1;->a:Landroidx/lifecycle/p;

    new-instance v2, Lcom/roblox/client/datastructures/d;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/roblox/platform/http/returntypes/TokenResponseBody;

    .line 58
    invoke-static {v0}, Lcom/roblox/client/friends/c/c;->a(Lcom/roblox/platform/http/returntypes/TokenResponseBody;)Lcom/roblox/client/friends/c/c;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {v1, v2}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/friends/c/e$1$1;->a:Le/l;

    invoke-virtual {v0}, Le/l;->a()I

    move-result v0

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/roblox/client/friends/c/e$1$1;->b:Lcom/roblox/client/friends/c/e$1;

    iget-object v0, v0, Lcom/roblox/client/friends/c/e$1;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/c/e$1$1;->b:Lcom/roblox/client/friends/c/e$1;

    iget-object v0, v0, Lcom/roblox/client/friends/c/e$1;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
