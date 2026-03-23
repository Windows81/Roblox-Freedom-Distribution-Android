.class Lcom/roblox/client/signup/multiscreen/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/b/g;->a(Lcom/roblox/client/signup/multiscreen/b/f$a;)Landroidx/lifecycle/LiveData;
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
.field final synthetic a:I

.field final synthetic b:Lcom/roblox/client/signup/multiscreen/b/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/b/g;I)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    iput p2, p0, Lcom/roblox/client/signup/multiscreen/b/g$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 2
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

    .line 44
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/b/g;->b(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/g$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/signup/multiscreen/b/g$1$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/g$1;Le/l;Le/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Le/b;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 64
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/g$1;->b:Lcom/roblox/client/signup/multiscreen/b/g;

    invoke-static {p2}, Lcom/roblox/client/signup/multiscreen/b/g;->b(Lcom/roblox/client/signup/multiscreen/b/g;)Lcom/roblox/client/signup/multiscreen/c;

    move-result-object p2

    invoke-interface {p2}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/g$1$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/signup/multiscreen/b/g$1$2;-><init>(Lcom/roblox/client/signup/multiscreen/b/g$1;Le/b;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
