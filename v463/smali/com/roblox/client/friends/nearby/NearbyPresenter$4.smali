.class Lcom/roblox/client/friends/nearby/NearbyPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/NearbyPresenter;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/NearbyPresenter;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/friends/b/b;)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/roblox/client/friends/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/b/b;)Lcom/roblox/client/friends/c/c;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/c/c;)V

    :cond_0
    return-void
.end method
