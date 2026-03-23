.class Lcom/roblox/client/friends/nearby/b/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/friends/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/roblox/client/datastructures/d<",
        "Lcom/roblox/client/friends/nearby/b/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/roblox/client/friends/c/c;

.field final synthetic c:Lcom/roblox/client/friends/nearby/b/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f;Landroidx/lifecycle/LiveData;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$5;->c:Lcom/roblox/client/friends/nearby/b/f;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/f$5;->a:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lcom/roblox/client/friends/nearby/b/f$5;->b:Lcom/roblox/client/friends/c/c;

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
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;)V"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/roblox/client/datastructures/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyUserViewModel"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$5;->c:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/b/f;->d(Lcom/roblox/client/friends/nearby/b/f;)Landroidx/lifecycle/n;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$5;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;)V

    .line 359
    iget v0, p1, Lcom/roblox/client/datastructures/d;->b:I

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$5;->c:Lcom/roblox/client/friends/nearby/b/f;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$5;->b:Lcom/roblox/client/friends/c/c;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$5;->c:Lcom/roblox/client/friends/nearby/b/f;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$5;->b:Lcom/roblox/client/friends/c/c;

    invoke-static {v0, p1, v1}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;Lcom/roblox/client/friends/c/c;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 353
    check-cast p1, Lcom/roblox/client/datastructures/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/nearby/b/f$5;->a(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method
