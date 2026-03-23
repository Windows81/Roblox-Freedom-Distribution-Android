.class Lcom/roblox/client/friends/nearby/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/e;->b(Lcom/roblox/client/friends/nearby/b/a/a;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/d<",
        "Lc/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/p;

.field final synthetic b:Lcom/roblox/client/friends/nearby/b/a/a;

.field final synthetic c:Lcom/roblox/client/friends/nearby/b/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/e;Landroidx/lifecycle/p;Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$3;->c:Lcom/roblox/client/friends/nearby/b/e;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/e$3;->a:Landroidx/lifecycle/p;

    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/e$3;->b:Lcom/roblox/client/friends/nearby/b/a/a;

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
            "Lc/ad;",
            ">;",
            "Le/l<",
            "Lc/ad;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$3;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/client/friends/nearby/b/e;)Lcom/roblox/client/friends/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/friends/nearby/b/e$3$1;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/friends/nearby/b/e$3$1;-><init>(Lcom/roblox/client/friends/nearby/b/e$3;Le/l;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 218
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$3;->a:Landroidx/lifecycle/p;

    new-instance p2, Lcom/roblox/client/datastructures/d;

    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/e$3;->b:Lcom/roblox/client/friends/nearby/b/a/a;

    const/4 v1, 0x1

    invoke-direct {p2, v1, v0}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    return-void
.end method
