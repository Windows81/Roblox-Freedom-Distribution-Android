.class Lcom/roblox/client/friends/nearby/a/b$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/a/b;

.field private b:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/a/b;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/b$b;->a:Lcom/roblox/client/friends/nearby/a/b;

    .line 454
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "audio"

    .line 455
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/b$b;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .line 465
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/b$b;->b:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentNearbyUsers"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b$b;->a:Lcom/roblox/client/friends/nearby/a/b;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/a/b;->b(Lcom/roblox/client/friends/nearby/a/b;)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 470
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/b$b;->a:Lcom/roblox/client/friends/nearby/a/b;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/a/b;->c(Lcom/roblox/client/friends/nearby/a/b;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/b$b;->a:Lcom/roblox/client/friends/nearby/a/b;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/a/b;->c(Lcom/roblox/client/friends/nearby/a/b;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
