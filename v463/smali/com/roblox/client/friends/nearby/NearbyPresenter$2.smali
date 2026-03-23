.class Lcom/roblox/client/friends/nearby/NearbyPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/NearbyPresenter;->b(Lcom/roblox/client/friends/c/c;)V
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

    .line 166
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$2;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "published"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Publish failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NearbyPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$2;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    .line 177
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$2;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Features_Nearby_Label_PleaseTryAgain:I

    invoke-interface {p1, v0}, Lcom/roblox/client/friends/nearby/a$b;->a_(I)V

    .line 178
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$2;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/friends/nearby/c;->a(Ljava/lang/String;)V

    return-void
.end method
