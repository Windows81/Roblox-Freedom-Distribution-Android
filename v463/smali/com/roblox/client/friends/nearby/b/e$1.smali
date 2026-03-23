.class Lcom/roblox/client/friends/nearby/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/client/friends/c/c;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/d<",
        "Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/p;

.field final synthetic b:Lcom/roblox/client/friends/c/c;

.field final synthetic c:Lcom/roblox/client/friends/nearby/b/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/e;Landroidx/lifecycle/p;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$1;->c:Lcom/roblox/client/friends/nearby/b/e;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/e$1;->a:Landroidx/lifecycle/p;

    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/e$1;->b:Lcom/roblox/client/friends/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;",
            ">;",
            "Le/l<",
            "Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$1;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/client/friends/nearby/b/e;)Lcom/roblox/client/friends/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/friends/nearby/b/e$1$1;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/friends/nearby/b/e$1$1;-><init>(Lcom/roblox/client/friends/nearby/b/e$1;Le/l;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lcom/roblox/platform/http/returntypes/NearbyUserResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUserFromToken.onFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NearbyUserRepository"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$1;->a:Landroidx/lifecycle/p;

    new-instance p2, Lcom/roblox/client/datastructures/d;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    return-void
.end method
