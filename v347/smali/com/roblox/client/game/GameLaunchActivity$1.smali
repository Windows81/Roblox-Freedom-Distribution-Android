.class Lcom/roblox/client/game/GameLaunchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/GameLaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/roblox/client/game/GameLaunchActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/GameLaunchActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->b:Lcom/roblox/client/game/GameLaunchActivity;

    iput-object p2, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "GameLaunchActivity"

    const-string v1, "onAdStarted:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->b:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-static {v0}, Lcom/roblox/client/game/GameLaunchActivity;->a(Lcom/roblox/client/game/GameLaunchActivity;)V

    .line 99
    return-void
.end method

.method public a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 103
    const-string v0, "GameLaunchActivity"

    const-string v1, "resumeGameLaunch:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->b:Lcom/roblox/client/game/GameLaunchActivity;

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->a:Landroid/content/Intent;

    invoke-static {v1}, Lcom/roblox/client/game/GameLaunchActivity$a;->a(Landroid/content/Intent;)Lcom/roblox/client/game/GameLaunchActivity$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/game/GameLaunchActivity;->a(Lcom/roblox/client/game/GameLaunchActivity;Lcom/roblox/client/game/GameLaunchActivity$a;)Lcom/roblox/client/game/GameLaunchActivity$a;

    .line 105
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->b:Lcom/roblox/client/game/GameLaunchActivity;

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity$1;->b:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-static {v1}, Lcom/roblox/client/game/GameLaunchActivity;->b(Lcom/roblox/client/game/GameLaunchActivity;)Lcom/roblox/client/game/GameLaunchActivity$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/game/GameLaunchActivity;->b(Lcom/roblox/client/game/GameLaunchActivity;Lcom/roblox/client/game/GameLaunchActivity$a;)V

    .line 106
    return-void
.end method
