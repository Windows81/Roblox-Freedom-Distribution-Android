.class Lcom/roblox/client/friends/c/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/c/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/c;Lcom/roblox/client/friends/c/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/c/f;

.field final synthetic b:Lcom/roblox/client/friends/c/c;

.field final synthetic c:Lcom/roblox/client/friends/c/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/g;Lcom/roblox/client/friends/c/f;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    iput-object p2, p0, Lcom/roblox/client/friends/c/g$5;->a:Lcom/roblox/client/friends/c/f;

    iput-object p3, p0, Lcom/roblox/client/friends/c/g$5;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/datastructures/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->e(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/c/g$5$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/friends/c/g$5$1;-><init>(Lcom/roblox/client/friends/c/g$5;Lcom/roblox/client/datastructures/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/roblox/client/friends/c/c;)V
    .locals 2

    const-string v0, "NearbyUserTokenViewModel"

    const-string v1, "My token is valid."

    .line 208
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5;->c:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->f(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/d;->d()V

    .line 210
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$5;->a:Lcom/roblox/client/friends/c/f;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/c/f;->a(Lcom/roblox/client/friends/c/c;)V

    return-void
.end method
