.class Lcom/roblox/client/friends/c/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/e$2;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Lcom/roblox/client/friends/c/e$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/e$2;Le/l;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iput-object p2, p0, Lcom/roblox/client/friends/c/e$2$1;->a:Le/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/friends/c/e$2$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateToken.onResponse. Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyTokenRepository"

    .line 100
    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v0, v0, Lcom/roblox/client/friends/c/e$2;->c:Lcom/roblox/client/friends/c/e;

    invoke-static {v0}, Lcom/roblox/client/friends/c/e;->a(Lcom/roblox/client/friends/c/e;)Lcom/roblox/client/friends/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/c/e$2$1$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/c/e$2$1$1;-><init>(Lcom/roblox/client/friends/c/e$2$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 112
    :cond_0
    iget v0, v0, Lcom/roblox/platform/http/returntypes/b;->a:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_1

    .line 120
    new-instance v0, Lcom/roblox/client/datastructures/d;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v2, v2, Lcom/roblox/client/friends/c/e$2;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lcom/roblox/client/datastructures/d;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v2, v2, Lcom/roblox/client/friends/c/e$2;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v0, Lcom/roblox/client/datastructures/d;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v2, v2, Lcom/roblox/client/friends/c/e$2;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/friends/c/e$2$1;->b:Lcom/roblox/client/friends/c/e$2;

    iget-object v1, v1, Lcom/roblox/client/friends/c/e$2;->c:Lcom/roblox/client/friends/c/e;

    invoke-static {v1}, Lcom/roblox/client/friends/c/e;->a(Lcom/roblox/client/friends/c/e;)Lcom/roblox/client/friends/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/c/e$2$1$2;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/friends/c/e$2$1$2;-><init>(Lcom/roblox/client/friends/c/e$2$1;Lcom/roblox/client/datastructures/d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
