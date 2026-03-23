.class Lcom/roblox/client/friends/nearby/NearbyPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/NearbyPresenter;
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

    .line 57
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$1;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "Timed out!"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$1;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/f;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$1;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    sget v1, Lcom/roblox/client/o$j;->Features_Nearby_Label_LooksLikeNoOneIsAround:I

    invoke-static {v0, v1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;I)V

    .line 63
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$1;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/c;

    move-result-object v0

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/nearby/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
