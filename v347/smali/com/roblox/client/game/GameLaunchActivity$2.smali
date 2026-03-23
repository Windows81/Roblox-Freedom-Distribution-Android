.class Lcom/roblox/client/game/GameLaunchActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/engine/jni/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/GameLaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/GameLaunchActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/GameLaunchActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/roblox/client/game/GameLaunchActivity$2;->a:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeaveGameFinished: isFinishing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity$2;->a:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-virtual {v2}, Lcom/roblox/client/game/GameLaunchActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->getImplementation()Lcom/roblox/engine/jni/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/engine/jni/b;->a(Lcom/roblox/engine/jni/b$a;)V

    .line 121
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$2;->a:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-virtual {v0}, Lcom/roblox/client/game/GameLaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$2;->a:Lcom/roblox/client/game/GameLaunchActivity;

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity$2;->a:Lcom/roblox/client/game/GameLaunchActivity;

    invoke-static {v1}, Lcom/roblox/client/game/GameLaunchActivity;->b(Lcom/roblox/client/game/GameLaunchActivity;)Lcom/roblox/client/game/GameLaunchActivity$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/game/GameLaunchActivity;->b(Lcom/roblox/client/game/GameLaunchActivity;Lcom/roblox/client/game/GameLaunchActivity$a;)V

    .line 124
    :cond_0
    return-void
.end method
