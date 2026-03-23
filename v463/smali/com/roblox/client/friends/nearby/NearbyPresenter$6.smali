.class Lcom/roblox/client/friends/nearby/NearbyPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/NearbyPresenter;
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
.field final synthetic a:Lcom/roblox/client/friends/nearby/NearbyPresenter;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/datastructures/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed, updating UI. Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/roblox/client/datastructures/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget v0, p1, Lcom/roblox/client/datastructures/d;->b:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status not recognized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/roblox/client/datastructures/d;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-static {v0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 365
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Features_Nearby_Label_PleaseTryAgain:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/roblox/client/friends/nearby/a$b;->a_(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-static {v0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/nearby/b/a/a;)V

    goto/16 :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object v0

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/nearby/a$b;->b(Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 382
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Features_Nearby_Label_FriendRequestsFloodChecked:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/roblox/client/friends/nearby/a$b;->a_(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object v0, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object v0

    iget-object v1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-interface {v0, v1}, Lcom/roblox/client/friends/nearby/a$b;->b(Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 375
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->Features_Nearby_Label_FriendRequestsFailedFormatted:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    .line 377
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    .line 375
    invoke-interface {v0, v1, v3}, Lcom/roblox/client/friends/nearby/a$b;->a_(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-static {v0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/nearby/b/a/a;)V

    goto :goto_0

    .line 369
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object v0

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/nearby/a$b;->b(Lcom/roblox/client/friends/nearby/b/a/a;)V

    goto :goto_0

    .line 352
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;

    move-result-object v0

    iget-object p1, p1, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/nearby/a$b;->a(Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 353
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a:Lcom/roblox/client/friends/nearby/NearbyPresenter;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 345
    check-cast p1, Lcom/roblox/client/datastructures/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;->a(Lcom/roblox/client/datastructures/d;)V

    return-void
.end method
