.class public Lcom/roblox/client/ActivityGlView;
.super Lcom/roblox/client/l;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/FragmentGlView$b;


# static fields
.field private static m:I

.field private static q:Landroid/os/CountDownTimer;

.field private static r:Z


# instance fields
.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/roblox/client/ActivityGlView;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/roblox/client/l;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ActivityGlView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->j()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/ActivityGlView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->k()V

    return-void
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "ActivityGlView"

    const-string v1, "onGameTimeoutInBackground:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/roblox/client/b;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->n()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->stopDataModel()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    const-string v0, "ActivityGlView"

    const-string v1, "onGameTimeoutInBackground: call finish() on this GL activity."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityGlView;->setResult(I)V

    .line 366
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->finish()V

    .line 369
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityGlView;->b(Z)V

    .line 370
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/roblox/client/ActivityGlView$3;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/ActivityGlView$3;-><init>(Lcom/roblox/client/ActivityGlView;JJ)V

    .line 388
    invoke-virtual {v0}, Lcom/roblox/client/ActivityGlView$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/ActivityGlView;->q:Landroid/os/CountDownTimer;

    .line 390
    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/roblox/client/ActivityGlView;->q:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/roblox/client/ActivityGlView;->q:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 395
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/ActivityGlView;->q:Landroid/os/CountDownTimer;

    .line 397
    :cond_0
    return-void
.end method

.method private n()Lcom/roblox/client/FragmentGlView;
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "GlView_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 401
    instance-of v1, v0, Lcom/roblox/client/FragmentGlView;

    if-eqz v1, :cond_0

    .line 402
    check-cast v0, Lcom/roblox/client/FragmentGlView;

    .line 405
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 317
    const-string v0, "ActivityGlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGameStarted: placeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/client/ActivityGlView;->r:Z

    .line 319
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 326
    const-string v0, "ActivityGlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGameLoaded: placeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 334
    const-string v0, "ActivityGlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGameEnded: success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x1

    sput-boolean v0, Lcom/roblox/client/ActivityGlView;->r:Z

    .line 337
    const-string v1, "ActivityGlView"

    const-string v2, "Ended"

    if-eqz p1, :cond_1

    const-string v0, "Ok"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->p:Z

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    new-instance v1, Lcom/roblox/client/ActivityGlView$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityGlView$2;-><init>(Lcom/roblox/client/ActivityGlView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :cond_0
    return-void

    .line 337
    :cond_1
    const-string v0, "Error"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 228
    const-string v0, "ActivityGlView"

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

    .line 231
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->o:Lcom/roblox/client/purchase/google/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->o:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v0, "ActivityGlView"

    const-string v1, "onActivityResult handled by Store Manager"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/roblox/client/b;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->n()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->isSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeHandleBackPressed()V

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/l;->onBackPressed()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeHandleBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    const-string v0, "ActivityGlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    sget-object v3, Lcom/roblox/client/i/c$b;->c:Lcom/roblox/client/i/c$b;

    invoke-virtual {v0, p0, v3}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V

    .line 105
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 106
    if-eqz v4, :cond_0

    .line 108
    const-string v0, "roblox_app_settings_for_engine"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/roblox/client/b;->a(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/roblox/client/l;->onCreate(Landroid/os/Bundle;)V

    .line 114
    if-nez v4, :cond_1

    .line 115
    const-string v0, "Launching ActivityGlView without Intent"

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->finish()V

    .line 223
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v0, "roblox_launcher_pid"

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 122
    const-string v0, "roblox_launcher_debugger_attached"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 126
    if-eq v0, v3, :cond_4

    move v0, v1

    .line 128
    :goto_1
    const-string v6, "ActivityGlView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: launcherPid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", Debugger:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v5, :cond_5

    const-string v3, "attached"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", differentProcess:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "roblox_browser_tracker_id"

    invoke-virtual {v4, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 146
    cmp-long v0, v6, v10

    if-eqz v0, :cond_2

    .line 147
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/roblox/client/c;->a(J)V

    .line 151
    :cond_2
    invoke-static {}, Lcom/roblox/client/i/d;->a()Lcom/roblox/client/i/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/roblox/client/i/d;->a(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Lcom/roblox/client/b;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_7

    .line 155
    :cond_3
    sget v0, Lcom/roblox/client/ActivityGlView;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/roblox/client/ActivityGlView;->m:I

    .line 156
    sget v0, Lcom/roblox/client/ActivityGlView;->m:I

    if-le v0, v1, :cond_9

    .line 157
    const-string v0, "ActivityGlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Game being launched in the last process. launch-count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/roblox/client/ActivityGlView;->m:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "roblox_enable_game_in_last_process"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 159
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityGlView;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->finish()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 126
    goto/16 :goto_1

    .line 128
    :cond_5
    const-string v3, "none"

    goto :goto_2

    .line 163
    :cond_6
    const-string v0, "ActivityGlView"

    const-string v3, "Create"

    const-string v5, "OldProcess"

    sget v6, Lcom/roblox/client/ActivityGlView;->m:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0, v3, v5, v6}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    :cond_7
    :goto_3
    const-string v0, "roblox_enable_end_game_process"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->p:Z

    .line 171
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    const-string v0, "locale_value"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/locale/c;

    invoke-virtual {v1, v0}, Lcom/roblox/client/locale/a;->b(Lcom/roblox/client/locale/c;)V

    .line 172
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    const-string v0, "ugc_locale_value"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/locale/c;

    invoke-virtual {v1, v0}, Lcom/roblox/client/locale/a;->c(Lcom/roblox/client/locale/c;)V

    .line 174
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityGlView;->setContentView(I)V

    .line 176
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->j()V

    .line 177
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityGlView$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityGlView$1;-><init>(Lcom/roblox/client/ActivityGlView;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 198
    const-string v0, "roblox_enable_portrait_mode"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 200
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityGlView;->setRequestedOrientation(I)V

    .line 205
    :goto_4
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->n()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 206
    if-nez v0, :cond_8

    .line 207
    new-instance v0, Lcom/roblox/client/FragmentGlView;

    invoke-direct {v0}, Lcom/roblox/client/FragmentGlView;-><init>()V

    .line 209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 210
    const-string v3, "vrEnabled"

    const-string v5, "roblox_vrMode"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string v3, "placeId"

    const-string v5, "roblox_placeId"

    invoke-virtual {v4, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    const-string v3, "accessCode"

    const-string v5, "roblox_accessCode"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "gameId"

    const-string v5, "roblox_gameId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "userId"

    const-string v5, "roblox_userId"

    invoke-virtual {v4, v5, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    const-string v3, "joinRequestType"

    const-string v5, "roblox_joinRequestType"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string v3, "is3DApp"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGlView;->setArguments(Landroid/os/Bundle;)V

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f0800bf

    const-string v3, "GlView_fragment_tag"

    .line 221
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    goto/16 :goto_0

    .line 165
    :cond_9
    const-string v0, "ActivityGlView"

    const-string v3, "Create"

    const-string v5, "NewProcess"

    invoke-static {v0, v3, v5}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 202
    :cond_a
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->s()V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 285
    const-string v0, "ActivityGlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: isFinishing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isChrome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/roblox/client/ActivityGlView;->r:Z

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/roblox/client/b;->aL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const-string v0, "ActivityGlView"

    const-string v1, "onDestroy: Call stopDataModel (SYNC) if the GL fragment is still there..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->n()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->stopDataModel()V

    .line 309
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/l;->onDestroy()V

    .line 310
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityGlView;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/roblox/client/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassKeyEvent(ZIIZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/roblox/client/l;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/l;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityGlView;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/roblox/client/l;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v4, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassKeyEvent(ZIIZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/roblox/client/l;->onNewIntent(Landroid/content/Intent;)V

    .line 245
    const-string v0, "ActivityGlView"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/roblox/client/l;->onStart()V

    .line 268
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->enableNDKProfiler(Z)V

    .line 271
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->m()V

    .line 272
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/roblox/client/l;->onStop()V

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->enableNDKProfiler(Z)V

    .line 280
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->l()V

    .line 281
    return-void
.end method
