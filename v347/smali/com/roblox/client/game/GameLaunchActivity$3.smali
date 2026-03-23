.class Lcom/roblox/client/game/GameLaunchActivity$3;
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

.field final synthetic b:Lcom/roblox/client/game/GameLaunchActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/GameLaunchActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/roblox/client/game/GameLaunchActivity$3;->b:Lcom/roblox/client/game/GameLaunchActivity;

    iput-object p2, p0, Lcom/roblox/client/game/GameLaunchActivity$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$3;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/roblox/client/p;->d(Landroid/content/Context;)V

    .line 204
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$3;->b:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-static {v0}, Lcom/roblox/client/game/GameLaunchActivity;->c(Lcom/roblox/client/game/GameLaunchActivity;)V

    .line 205
    return-void
.end method
