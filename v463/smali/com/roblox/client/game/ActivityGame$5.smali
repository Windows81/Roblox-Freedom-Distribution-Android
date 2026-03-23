.class Lcom/roblox/client/game/ActivityGame$5;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame;JJ)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$5;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "rbx.game"

    const-string v1, "CountDownTimer::onFinish -> onGameTimeoutInBackground()"

    .line 536
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame$5;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-static {v0}, Lcom/roblox/client/game/ActivityGame;->d(Lcom/roblox/client/game/ActivityGame;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
