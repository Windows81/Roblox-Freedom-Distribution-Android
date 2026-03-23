.class Lcom/roblox/client/ActivityGlView$3;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityGlView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityGlView;JJ)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/roblox/client/ActivityGlView$3;->a:Lcom/roblox/client/ActivityGlView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "ActivityGlView"

    const-string v1, "CountDownTimer::onFinish -> onGameTimeoutInBackground()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView$3;->a:Lcom/roblox/client/ActivityGlView;

    invoke-static {v0}, Lcom/roblox/client/ActivityGlView;->b(Lcom/roblox/client/ActivityGlView;)V

    .line 386
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method
