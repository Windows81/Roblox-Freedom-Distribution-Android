.class Lcom/roblox/client/game/GameLaunchActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/GameLaunchActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/roblox/client/game/GameLaunchActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/GameLaunchActivity;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/roblox/client/game/GameLaunchActivity$4;->c:Lcom/roblox/client/game/GameLaunchActivity;

    iput-object p2, p0, Lcom/roblox/client/game/GameLaunchActivity$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/roblox/client/game/GameLaunchActivity$4;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$4;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/roblox/client/p;->d(Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$4;->b:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/game/GameLaunchActivity$4$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/GameLaunchActivity$4$1;-><init>(Lcom/roblox/client/game/GameLaunchActivity$4;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    return-void
.end method
