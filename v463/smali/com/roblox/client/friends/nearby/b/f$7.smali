.class Lcom/roblox/client/friends/nearby/b/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/datastructures/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/d;

.field final synthetic b:Lcom/roblox/client/friends/nearby/b/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/datastructures/d;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$7;->b:Lcom/roblox/client/friends/nearby/b/f;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/f$7;->a:Lcom/roblox/client/datastructures/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting updated user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$7;->a:Lcom/roblox/client/datastructures/d;

    iget-object v1, v1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$7;->a:Lcom/roblox/client/datastructures/d;

    iget v1, v1, Lcom/roblox/client/datastructures/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyUserViewModel"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$7;->b:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/b/f;->d(Lcom/roblox/client/friends/nearby/b/f;)Landroidx/lifecycle/n;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$7;->a:Lcom/roblox/client/datastructures/d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    return-void
.end method
