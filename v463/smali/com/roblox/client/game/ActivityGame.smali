.class public Lcom/roblox/client/game/ActivityGame;
.super Lcom/roblox/client/r;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/n;
.implements Lcom/roblox/engine/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/ActivityGame$b;,
        Lcom/roblox/client/game/ActivityGame$a;
    }
.end annotation


# static fields
.field private static C:Z = false


# instance fields
.field private A:Lcom/roblox/engine/b;

.field private B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private D:Landroid/view/ViewGroup;

.field private E:Lcom/roblox/client/l;

.field protected k:Lcom/roblox/engine/a/a;

.field private final l:Ljava/lang/String;

.field private final m:J

.field private q:Landroid/os/CountDownTimer;

.field private r:Z

.field private s:Landroid/content/ServiceConnection;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Lcom/roblox/client/game/f;

.field private v:Lcom/roblox/client/game/o;

.field private w:Landroid/os/Handler;

.field private x:Lcom/roblox/client/game/p;

.field private y:J

.field private z:Lcom/roblox/engine/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/r;-><init>()V

    const-string v0, "rbx.game"

    .line 60
    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->l:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    .line 63
    iput-wide v0, p0, Lcom/roblox/client/game/ActivityGame;->m:J

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->s:Landroid/content/ServiceConnection;

    .line 84
    new-instance v0, Lcom/roblox/engine/e;

    invoke-direct {v0}, Lcom/roblox/engine/e;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->z:Lcom/roblox/engine/e;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/ActivityGame;I)I
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/roblox/client/game/ActivityGame;->f(I)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 299
    sget v0, Lcom/roblox/client/o$f;->gl_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/RbxKeyboard;

    .line 300
    new-instance v0, Lcom/roblox/client/game/g;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/game/g;-><init>(Lcom/roblox/engine/b$a;Lcom/roblox/client/RbxKeyboard;)V

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->v:Lcom/roblox/client/game/o;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->s()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->y()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/game/ActivityGame;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/roblox/client/game/ActivityGame;->e(I)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/game/ActivityGame;)Landroid/view/ViewGroup;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/game/ActivityGame;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/roblox/client/game/ActivityGame;->g(I)V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->t()V

    return-void
.end method

.method private d(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(I)V
    .locals 1

    .line 625
    new-instance v0, Lcom/roblox/client/game/ActivityGame$7;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/game/ActivityGame$7;-><init>(Lcom/roblox/client/game/ActivityGame;I)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->w()V

    return-void
.end method

.method private f(I)I
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Game failed to start) Unexpected errorId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.game"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureUnknown:I

    return p1

    .line 679
    :pswitch_0
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureJoinScript:I

    return p1

    .line 678
    :pswitch_1
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureRestricted:I

    return p1

    .line 677
    :pswitch_2
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureUserLeft:I

    return p1

    .line 676
    :cond_0
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureGameFull:I

    return p1

    .line 675
    :cond_1
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureGameEnded:I

    return p1

    .line 674
    :cond_2
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureError:I

    return p1

    .line 673
    :cond_3
    sget p1, Lcom/roblox/client/o$j;->Game_Launch_Response_GameStartFailureDisabled:I

    return p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->u()V

    return-void
.end method

.method static synthetic g(Lcom/roblox/client/game/ActivityGame;)Lcom/roblox/client/game/o;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/roblox/client/game/ActivityGame;->v:Lcom/roblox/client/game/o;

    return-object p0
.end method

.method private g(I)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->x:Lcom/roblox/client/game/p;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lcom/roblox/client/game/ActivityGame$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/game/ActivityGame$b;-><init>(Lcom/roblox/client/game/ActivityGame;Lcom/roblox/client/game/ActivityGame$1;)V

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->x:Lcom/roblox/client/game/p;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->x:Lcom/roblox/client/game/p;

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/p;->b(I)V

    return-void
.end method

.method static synthetic h(Lcom/roblox/client/game/ActivityGame;)Lcom/roblox/client/game/f;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/roblox/client/game/ActivityGame;->u:Lcom/roblox/client/game/f;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/game/ActivityGame;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/roblox/client/game/ActivityGame;->y:J

    return-wide v0
.end method

.method static synthetic j(Lcom/roblox/client/game/ActivityGame;)Lcom/roblox/engine/b;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/roblox/client/game/ActivityGame;->A:Lcom/roblox/engine/b;

    return-object p0
.end method

.method static synthetic k(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->x()V

    return-void
.end method

.method private s()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private t()V
    .locals 2

    const-string v0, "rbx.game"

    const-string v1, "onGameTimeoutInBackground:"

    .line 509
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->u()V

    return-void
.end method

.method private u()V
    .locals 2

    .line 515
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rbx.game"

    const-string v1, "endGameInBackground: call finish() on this GL activity."

    .line 516
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x66

    .line 517
    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->setResult(I)V

    .line 518
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->finish()V

    :cond_0
    const/4 v0, 0x1

    .line 521
    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->a(Z)V

    return-void
.end method

.method private v()V
    .locals 7

    .line 528
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/roblox/client/game/ActivityGame$5;

    const-wide/16 v3, 0x7530

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/game/ActivityGame$5;-><init>(Lcom/roblox/client/game/ActivityGame;JJ)V

    .line 540
    invoke-virtual {v0}, Lcom/roblox/client/game/ActivityGame$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->q:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->q:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    .line 653
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->y()V

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->a(Z)V

    return-void
.end method

.method private y()V
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->q()V

    const/16 v0, 0x66

    .line 660
    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->setResult(I)V

    .line 661
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGameStarting: placeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.game"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame;->E:Lcom/roblox/client/l;

    invoke-virtual {p1}, Lcom/roblox/client/l;->d()Lcom/roblox/client/v/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/v/a;->d()V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->w:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGameEnded: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "Ok"

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    :goto_0
    const-string v0, "ActivityGame"

    const-string v1, "Ended"

    .line 493
    invoke-static {v0, v1, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGameStarted: placeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.game"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 475
    iput-boolean p1, p0, Lcom/roblox/client/game/ActivityGame;->r:Z

    .line 476
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame;->E:Lcom/roblox/client/l;

    invoke-virtual {p1}, Lcom/roblox/client/l;->d()Lcom/roblox/client/v/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/v/a;->e()V

    return-void
.end method

.method public c(J)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGameLoaded: placeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.game"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j_()Z
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->u:Lcom/roblox/client/game/f;

    invoke-virtual {v0}, Lcom/roblox/client/game/f;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 2

    const-string v0, "rbx.game"

    const-string v1, "onSettingsNotLoaded (detected from Game fragment)"

    .line 501
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x67

    .line 503
    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->setResult(I)V

    .line 504
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->finish()V

    :cond_0
    return-void
.end method

.method protected n()Landroid/content/BroadcastReceiver;
    .locals 3

    .line 552
    new-instance v0, Lcom/roblox/client/game/ActivityGame$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/game/ActivityGame$6;-><init>(Lcom/roblox/client/game/ActivityGame;)V

    .line 560
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/game/ActivityGame;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v0
.end method

.method public o()F
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->z:Lcom/roblox/engine/e;

    invoke-virtual {v0, p0}, Lcom/roblox/engine/e;->a(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->u:Lcom/roblox/client/game/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/game/f;->a(IILandroid/content/Intent;)V

    .line 311
    invoke-static {p0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult handled by Store Manager"

    .line 319
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/r;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->j_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeHandleBackPressed()V

    goto :goto_0

    .line 336
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/r;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: savedInstanceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v2, Lcom/roblox/client/s/c$b;->c:Lcom/roblox/client/s/c$b;

    invoke-virtual {v0, p0, v2}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->w:Landroid/os/Handler;

    .line 158
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    invoke-super {p0, p1}, Lcom/roblox/client/r;->onCreate(Landroid/os/Bundle;)V

    if-nez v0, :cond_0

    const-string p1, "Launching ActivityGame without Intent"

    .line 163
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->finish()V

    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "onCreate: No Settings with non-null savedInstanceState. finish() this Game activity."

    .line 171
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x67

    .line 172
    invoke-virtual {p0, p1}, Lcom/roblox/client/game/ActivityGame;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->finish()V

    return-void

    .line 178
    :cond_1
    invoke-static {p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    const-string v1, "roblox_browser_tracker_id"

    const-wide/16 v2, -0x1

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 184
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/roblox/client/j;->a(J)V

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "ActivityGame"

    const-string v1, "Create"

    .line 188
    invoke-static {p1, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    sget p1, Lcom/roblox/client/o$g;->activity_glview:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/game/ActivityGame;->setContentView(I)V

    .line 193
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->s()V

    .line 194
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/roblox/client/game/ActivityGame$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/ActivityGame$1;-><init>(Lcom/roblox/client/game/ActivityGame;)V

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 206
    invoke-static {}, Lcom/roblox/client/game/p;->b()Z

    move-result p1

    if-nez p1, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->I()V

    .line 216
    :cond_4
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame;->E:Lcom/roblox/client/l;

    .line 219
    new-instance p1, Lcom/roblox/client/game/j;

    invoke-direct {p1}, Lcom/roblox/client/game/j;-><init>()V

    const-string v1, "roblox_placeId"

    const-wide/16 v2, 0x0

    .line 220
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/game/ActivityGame;->y:J

    .line 221
    iput-wide v4, p1, Lcom/roblox/client/game/j;->c:J

    const-string v1, "roblox_accessCode"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/roblox/client/game/j;->d:Ljava/lang/String;

    const-string v1, "roblox_gameId"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/roblox/client/game/j;->e:Ljava/lang/String;

    const-string v1, "roblox_userId"

    .line 224
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/roblox/client/game/j;->b:J

    const-string v1, "roblox_conversationId"

    .line 225
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/roblox/client/game/j;->f:J

    const/4 v1, -0x1

    const-string v2, "roblox_joinRequestType"

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/roblox/client/game/j;->a:I

    const-string v1, "roblox_referralPage"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/roblox/client/game/j;->g:Ljava/lang/String;

    .line 229
    sget v0, Lcom/roblox/client/o$f;->fragment_glview_container:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    .line 231
    new-instance v0, Lcom/roblox/client/game/ActivityGame$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/game/ActivityGame$2;-><init>(Lcom/roblox/client/game/ActivityGame;)V

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setExitImplementation(Lcom/roblox/engine/jni/EngineExitJavaCallback2;)V

    .line 239
    invoke-static {}, Lcom/roblox/client/u;->as()V

    .line 241
    sget-boolean v0, Lcom/roblox/client/game/ActivityGame;->C:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 242
    sput-boolean v0, Lcom/roblox/client/game/ActivityGame;->C:Z

    .line 244
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeGameGlobalInit()V

    .line 247
    :cond_5
    new-instance v0, Lcom/roblox/client/game/ActivityGame$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/game/ActivityGame$a;-><init>(Lcom/roblox/client/game/ActivityGame;)V

    .line 248
    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;

    iget-object v2, p0, Lcom/roblox/client/game/ActivityGame;->w:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;-><init>(Landroid/os/Handler;Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    .line 249
    invoke-static {v1}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setImplementation(Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    .line 251
    new-instance v0, Lcom/roblox/client/game/f;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/game/f;-><init>(Lcom/roblox/client/game/ActivityGame;Lcom/roblox/client/game/j;)V

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->u:Lcom/roblox/client/game/f;

    .line 252
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/roblox/client/game/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/roblox/client/game/ActivityGame;->a(Landroid/view/View;)V

    .line 257
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame;->u:Lcom/roblox/client/game/f;

    invoke-virtual {p1}, Lcom/roblox/client/game/f;->c()Landroid/view/SurfaceView;

    move-result-object p1

    .line 259
    new-instance v0, Lcom/roblox/engine/b;

    invoke-direct {v0, p0, p1, p0}, Lcom/roblox/engine/b;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/roblox/engine/b$a;)V

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->A:Lcom/roblox/engine/b;

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    new-instance p1, Lcom/roblox/client/game/ActivityGame$3;

    invoke-direct {p1, p0, p0}, Lcom/roblox/client/game/ActivityGame$3;-><init>(Lcom/roblox/client/game/ActivityGame;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame;->k:Lcom/roblox/engine/a/a;

    .line 282
    new-instance p1, Lcom/roblox/client/game/ActivityGame$4;

    invoke-direct {p1, p0}, Lcom/roblox/client/game/ActivityGame$4;-><init>(Lcom/roblox/client/game/ActivityGame;)V

    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 289
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    invoke-static {}, Lcom/roblox/client/b;->cl()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 292
    iget-object p1, p0, Lcom/roblox/client/game/ActivityGame;->t:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_6

    .line 293
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->n()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame;->t:Landroid/content/BroadcastReceiver;

    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: isFinishing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.game"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->q()V

    .line 395
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 397
    invoke-static {}, Lcom/roblox/client/b;->cl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/ActivityGame;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 399
    iput-object v2, p0, Lcom/roblox/client/game/ActivityGame;->t:Landroid/content/BroadcastReceiver;

    .line 403
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->isFinishing()Z

    move-result v0

    .line 408
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy: shutdown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 416
    iget-boolean v0, p0, Lcom/roblox/client/game/ActivityGame;->r:Z

    if-eqz v0, :cond_2

    const-string v0, "onDestroy: Call stopDataModel (SYNC) if the GL fragment is still there..."

    .line 421
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->u:Lcom/roblox/client/game/f;

    invoke-virtual {v0}, Lcom/roblox/client/game/f;->b()V

    .line 426
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    .line 427
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/roblox/client/b;->ch()Z

    move-result v0

    if-nez v0, :cond_4

    .line 428
    :cond_3
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/roblox/client/b;->ci()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->I()V

    .line 433
    :cond_5
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    .line 435
    invoke-super {p0}, Lcom/roblox/client/r;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 119
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/game/ActivityGame;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/roblox/client/r;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    const/4 v1, 0x1

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {v1, p1, v0, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassKeyEvent(ZIIZ)V

    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/roblox/client/r;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/r;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/game/ActivityGame;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/roblox/client/r;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {v2, p1, v0, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassKeyEvent(ZIIZ)V

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 325
    invoke-super {p0, p1}, Lcom/roblox/client/r;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "rbx.game"

    const-string v0, "onNewIntent"

    .line 326
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/roblox/client/r;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->E:Lcom/roblox/client/l;

    invoke-virtual {v0}, Lcom/roblox/client/l;->d()Lcom/roblox/client/v/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/v/a;->b()V

    .line 379
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->A:Lcom/roblox/engine/b;

    invoke-virtual {v0}, Lcom/roblox/engine/b;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 384
    invoke-super {p0}, Lcom/roblox/client/r;->onResume()V

    .line 385
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->E:Lcom/roblox/client/l;

    invoke-virtual {v0}, Lcom/roblox/client/l;->d()Lcom/roblox/client/v/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/v/a;->c()V

    .line 386
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->A:Lcom/roblox/engine/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/engine/b;->a(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/roblox/client/r;->onStart()V

    .line 344
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeOnFragmentStart()V

    .line 347
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 350
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->w()V

    .line 353
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->s:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 360
    invoke-super {p0}, Lcom/roblox/client/r;->onStop()V

    .line 362
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeOnFragmentStop()V

    .line 364
    invoke-virtual {p0}, Lcom/roblox/client/game/ActivityGame;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 367
    invoke-direct {p0}, Lcom/roblox/client/game/ActivityGame;->v()V

    .line 369
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->s:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->s:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 440
    invoke-super {p0, p1}, Lcom/roblox/client/r;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "rbx.game"

    const-string v0, "TRIM_MEMORY_RUNNING_CRITICAL: notify the engine..."

    .line 444
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2OnLowMemory()V

    :goto_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    const-string v0, "rbx.screen"

    const-string v1, "removing GlobalLayoutListener"

    .line 702
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame;->D:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/game/ActivityGame;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 704
    iput-object v0, p0, Lcom/roblox/client/game/ActivityGame;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    return-void
.end method

.method protected r()Z
    .locals 1

    .line 724
    invoke-static {}, Lcom/roblox/client/b;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/b;->bW()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
