.class public Lcom/roblox/client/game/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/game/i$a;

.field private b:Lcom/roblox/client/game/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/roblox/client/game/i$a;->a:Lcom/roblox/client/game/i$a;

    iput-object v0, p0, Lcom/roblox/client/game/i;->a:Lcom/roblox/client/game/i$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/roblox/client/game/h;I)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/roblox/client/game/i;->a()Z

    move-result v0

    const-string v1, "GameManager"

    if-nez v0, :cond_0

    const-string p1, "Game launch halted - Can\'t start game."

    .line 48
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGameForResult: requestCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/game/GameLaunchActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-static {p2}, Lcom/roblox/client/game/h;->a(Lcom/roblox/client/game/h;)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "game_init_params"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p2, -0x1

    if-ne p3, p2, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GameManager"

    const-string v1, "onGameEnded:"

    .line 73
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v1, Lcom/roblox/client/game/i$a;->c:Lcom/roblox/client/game/i$a;

    iput-object v1, p0, Lcom/roblox/client/game/i;->a:Lcom/roblox/client/game/i$a;

    const-string v1, "onGameEnded: Check if we need to upload any crash dump..."

    .line 76
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/roblox/client/analytics/b;->a()Lcom/roblox/client/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/analytics/b;->a(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/roblox/client/game/b;->a(Z)V

    return-void
.end method

.method public a(Lcom/roblox/client/game/h;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/roblox/client/game/i;->b:Lcom/roblox/client/game/h;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 38
    invoke-static {}, Lcom/roblox/client/w;->a()Lcom/roblox/client/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameManager"

    const-string v1, "canStartGame = false: Upgrade required"

    .line 39
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/roblox/client/game/i;->a:Lcom/roblox/client/game/i$a;

    sget-object v1, Lcom/roblox/client/game/i$a;->b:Lcom/roblox/client/game/i$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 2

    const-string v0, "GameManager"

    const-string v1, "onGameStarted:"

    .line 68
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/roblox/client/game/i$a;->b:Lcom/roblox/client/game/i$a;

    iput-object v0, p0, Lcom/roblox/client/game/i;->a:Lcom/roblox/client/game/i$a;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/roblox/client/game/i;->b:Lcom/roblox/client/game/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lcom/roblox/client/game/h;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/roblox/client/game/i;->b:Lcom/roblox/client/game/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 97
    iput-object v1, p0, Lcom/roblox/client/game/i;->b:Lcom/roblox/client/game/h;

    :cond_0
    return-object v0
.end method
