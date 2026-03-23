.class Lcom/roblox/client/game/ActivityGame$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame;->n()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$6;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "rbx.game"

    const-string p2, "Device language change detected. Shutting down active game"

    .line 555
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame$6;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-static {p1}, Lcom/roblox/client/game/ActivityGame;->e(Lcom/roblox/client/game/ActivityGame;)V

    .line 557
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame$6;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-static {p1}, Lcom/roblox/client/game/ActivityGame;->f(Lcom/roblox/client/game/ActivityGame;)V

    return-void
.end method
