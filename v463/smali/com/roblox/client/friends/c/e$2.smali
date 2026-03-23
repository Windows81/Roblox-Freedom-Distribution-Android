.class Lcom/roblox/client/friends/c/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/c/e;->a(Lcom/roblox/client/friends/c/c;Lcom/roblox/client/friends/c/e$a;)V
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
.field final synthetic a:Lcom/roblox/client/friends/c/e$a;

.field final synthetic b:Lcom/roblox/client/friends/c/c;

.field final synthetic c:Lcom/roblox/client/friends/c/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/e;Lcom/roblox/client/friends/c/e$a;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/roblox/client/friends/c/e$2;->c:Lcom/roblox/client/friends/c/e;

    iput-object p2, p0, Lcom/roblox/client/friends/c/e$2;->a:Lcom/roblox/client/friends/c/e$a;

    iput-object p3, p0, Lcom/roblox/client/friends/c/e$2;->b:Lcom/roblox/client/friends/c/c;

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

    .line 96
    iget-object p1, p0, Lcom/roblox/client/friends/c/e$2;->c:Lcom/roblox/client/friends/c/e;

    invoke-static {p1}, Lcom/roblox/client/friends/c/e;->a(Lcom/roblox/client/friends/c/e;)Lcom/roblox/client/friends/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/friends/c/e$2$1;

    invoke-direct {v0, p0, p2}, Lcom/roblox/client/friends/c/e$2$1;-><init>(Lcom/roblox/client/friends/c/e$2;Le/l;)V

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

    const-string p1, "NearbyTokenRepository"

    const-string p2, "validateToken.onFailure."

    .line 137
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/roblox/client/friends/c/e$2;->a:Lcom/roblox/client/friends/c/e$a;

    new-instance p2, Lcom/roblox/client/datastructures/d;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/roblox/client/friends/c/e$a;->a(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method
