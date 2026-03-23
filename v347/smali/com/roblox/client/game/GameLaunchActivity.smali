.class public Lcom/roblox/client/game/GameLaunchActivity;
.super Lcom/roblox/client/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/game/GameLaunchActivity$c;,
        Lcom/roblox/client/game/GameLaunchActivity$a;,
        Lcom/roblox/client/game/GameLaunchActivity$b;
    }
.end annotation


# instance fields
.field private m:Lcom/roblox/client/game/GameLaunchActivity$b;

.field private p:Lcom/roblox/client/game/GameLaunchActivity$a;

.field private q:I

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    .line 60
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->a:Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->r:J

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/game/GameLaunchActivity;Lcom/roblox/client/game/GameLaunchActivity$a;)Lcom/roblox/client/game/GameLaunchActivity$a;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    return-object p1
.end method

.method private a(Lcom/roblox/client/game/GameLaunchActivity$a;)V
    .locals 4

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchGameWithParams: Start game activity for placeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p1, p0}, Lcom/roblox/client/game/GameLaunchActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 322
    const/16 v1, 0x2775

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/game/GameLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 323
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->b:Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->r:J

    .line 325
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/b;->b()V

    .line 327
    const-string v0, "SessionReporterState_GameLoadStart"

    iget-wide v2, p1, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    invoke-static {v0, v2, v3}, Lcom/roblox/client/m/a;->a(Ljava/lang/String;J)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v0, "GameLaunchActivity"

    const-string v1, "launchGameWithParams: game-params is null. Just close this activity!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/roblox/client/game/GameLaunchActivity;->l()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/game/GameLaunchActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/roblox/client/game/GameLaunchActivity;->k()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/game/GameLaunchActivity;)Lcom/roblox/client/game/GameLaunchActivity$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/game/GameLaunchActivity;Lcom/roblox/client/game/GameLaunchActivity$a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/roblox/client/game/GameLaunchActivity;->a(Lcom/roblox/client/game/GameLaunchActivity$a;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/game/GameLaunchActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/roblox/client/game/GameLaunchActivity;->l()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "GameLaunchActivity"

    const-string v1, "hideProgressView:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/GameLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/roblox/client/game/GameLaunchActivity;->finish()V

    .line 336
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/game/b;->a(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->r:J

    sub-long/2addr v0, v2

    .line 341
    const-string v2, "GameLaunchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Game duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/roblox/client/c/a;->a()Lcom/roblox/client/c/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/c/a;->a(J)V

    .line 344
    return-void
.end method


# virtual methods
.method protected j()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 284
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 v0, 0x2775

    if-ne p1, v0, :cond_1

    .line 287
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: Game ended. Result-code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->c:Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 299
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/locale/a;->b(Landroid/content/Context;)V

    .line 301
    packed-switch p2, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 303
    :pswitch_0
    const-string v0, "GameLaunchActivity"

    const-string v1, "onActivityResult: Game launch failed because it was launched in the last process."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    .line 306
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->e:Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0}, Lcom/roblox/client/game/GameLaunchActivity;->m()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/GameLaunchActivity;->setContentView(I)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "startGameTimeInMs"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->r:J

    .line 77
    const-string v0, "gameState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 78
    const-string v0, "currentRetriesOnFailure"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    .line 79
    invoke-static {p1}, Lcom/roblox/client/game/GameLaunchActivity$a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/GameLaunchActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    .line 80
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: Restore placeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    iget-wide v2, v2, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gameState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retries = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$5;->a:[I

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {v1}, Lcom/roblox/client/game/GameLaunchActivity$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: Unexpected gameState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/roblox/client/game/GameLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/roblox/client/b;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {}, Lcom/roblox/client/i/b;->d()Lcom/roblox/client/i/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/roblox/client/i/b;->a(Landroid/app/Activity;)V

    .line 92
    const-string v1, "game_init_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/game/a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/roblox/client/i/b;->d()Lcom/roblox/client/i/b;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/game/GameLaunchActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/roblox/client/game/GameLaunchActivity$1;-><init>(Lcom/roblox/client/game/GameLaunchActivity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3, v1, p0}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/j;Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0}, Lcom/roblox/client/game/GameLaunchActivity$a;->a(Landroid/content/Intent;)Lcom/roblox/client/game/GameLaunchActivity$a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    .line 111
    invoke-static {}, Lcom/roblox/client/b;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    invoke-static {}, Lcom/roblox/client/b;->ad()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    invoke-direct {p0, v0}, Lcom/roblox/client/game/GameLaunchActivity;->a(Lcom/roblox/client/game/GameLaunchActivity$a;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->getImplementation()Lcom/roblox/engine/jni/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/game/GameLaunchActivity$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/game/GameLaunchActivity$2;-><init>(Lcom/roblox/client/game/GameLaunchActivity;)V

    invoke-interface {v0, v1}, Lcom/roblox/engine/jni/b;->a(Lcom/roblox/engine/jni/b$a;)V

    .line 127
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {v1}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->d()I

    .line 133
    :cond_3
    invoke-static {}, Lcom/roblox/client/b;->ad()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    new-instance v1, Lcom/roblox/client/game/GameLaunchActivity$c;

    invoke-direct {v1, v0}, Lcom/roblox/client/game/GameLaunchActivity$c;-><init>(Lcom/roblox/client/FragmentGlView;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/roblox/client/game/GameLaunchActivity$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->stopDataModel()V

    goto :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    invoke-direct {p0, v0}, Lcom/roblox/client/game/GameLaunchActivity;->a(Lcom/roblox/client/game/GameLaunchActivity$a;)V

    goto/16 :goto_0

    .line 146
    :pswitch_1
    const-string v0, "GameLaunchActivity"

    const-string v1, "The activity is being restored (as expected). Do nothing."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 267
    const-string v0, "GameLaunchActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    sget-object v1, Lcom/roblox/client/game/GameLaunchActivity$b;->a:Lcom/roblox/client/game/GameLaunchActivity$b;

    if-ne v0, v1, :cond_0

    .line 269
    invoke-static {}, Lcom/roblox/client/b;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "GameLaunchActivity"

    const-string v1, "onDestroy: No need to listen for on-leave-game event..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->getImplementation()Lcom/roblox/engine/jni/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/engine/jni/b;->a(Lcom/roblox/engine/jni/b$a;)V

    .line 273
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7d0

    .line 167
    invoke-super {p0}, Lcom/roblox/client/k;->onResume()V

    .line 168
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: gameState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/roblox/client/game/GameLaunchActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/roblox/client/game/GameLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    sget-object v3, Lcom/roblox/client/game/GameLaunchActivity$b;->c:Lcom/roblox/client/game/GameLaunchActivity$b;

    if-ne v2, v3, :cond_2

    .line 193
    const v2, 0x7f0e018b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->d:Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 196
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    iget-boolean v0, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Lcom/roblox/client/b;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isChrome()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/roblox/client/game/GameLaunchActivity$3;-><init>(Lcom/roblox/client/game/GameLaunchActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    :goto_0
    const-string v0, "SessionReporterState_GameExit"

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    iget-wide v2, v1, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    invoke-static {v0, v2, v3}, Lcom/roblox/client/m/a;->a(Ljava/lang/String;J)V

    .line 235
    :cond_0
    :goto_1
    return-void

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/game/GameLaunchActivity;->l()V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    sget-object v3, Lcom/roblox/client/game/GameLaunchActivity$b;->e:Lcom/roblox/client/game/GameLaunchActivity$b;

    if-ne v2, v3, :cond_0

    .line 214
    const v2, 0x7f0e018d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->a:Lcom/roblox/client/game/GameLaunchActivity$b;

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 218
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    if-eqz v0, :cond_3

    .line 219
    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    iget v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v2, Lcom/roblox/client/game/GameLaunchActivity$a;->j:Z

    .line 224
    :cond_3
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$4;

    invoke-direct {v0, p0, p0, v1}, Lcom/roblox/client/game/GameLaunchActivity$4;-><init>(Lcom/roblox/client/game/GameLaunchActivity;Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 219
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState: gameState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retries = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "gameState"

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity;->m:Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 250
    const-string v0, "currentRetriesOnFailure"

    iget v1, p0, Lcom/roblox/client/game/GameLaunchActivity;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v0, "startGameTimeInMs"

    iget-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity;->r:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity;->p:Lcom/roblox/client/game/GameLaunchActivity$a;

    invoke-virtual {v0, p1}, Lcom/roblox/client/game/GameLaunchActivity$a;->b(Landroid/os/Bundle;)V

    .line 256
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/roblox/client/k;->onStop()V

    .line 261
    const-string v0, "GameLaunchActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method protected s()V
    .locals 3

    .prologue
    .line 161
    const-string v0, "GameLaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustOrientation: isPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
