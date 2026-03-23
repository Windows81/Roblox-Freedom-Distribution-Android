.class Lcom/roblox/client/game/GameLaunchActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/GameLaunchActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/GameLaunchActivity$4;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/GameLaunchActivity$4;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/roblox/client/game/GameLaunchActivity$4$1;->a:Lcom/roblox/client/game/GameLaunchActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$4$1;->a:Lcom/roblox/client/game/GameLaunchActivity$4;

    iget-object v0, v0, Lcom/roblox/client/game/GameLaunchActivity$4;->c:Lcom/roblox/client/game/GameLaunchActivity;

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity$4$1;->a:Lcom/roblox/client/game/GameLaunchActivity$4;

    iget-object v1, v1, Lcom/roblox/client/game/GameLaunchActivity$4;->c:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-static {v1}, Lcom/roblox/client/game/GameLaunchActivity;->b(Lcom/roblox/client/game/GameLaunchActivity;)Lcom/roblox/client/game/GameLaunchActivity$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/game/GameLaunchActivity;->b(Lcom/roblox/client/game/GameLaunchActivity;Lcom/roblox/client/game/GameLaunchActivity$a;)V

    .line 230
    return-void
.end method
