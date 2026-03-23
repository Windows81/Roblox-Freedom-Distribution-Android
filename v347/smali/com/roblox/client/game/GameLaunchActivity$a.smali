.class Lcom/roblox/client/game/GameLaunchActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/GameLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->a:I

    .line 366
    iput-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->b:J

    .line 367
    iput-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    .line 368
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->d:Ljava/lang/String;

    .line 369
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->e:Ljava/lang/String;

    .line 370
    iput-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->f:Z

    .line 371
    iput v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->g:I

    .line 372
    iput-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->h:Z

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    .line 374
    iput-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->j:Z

    .line 375
    iput-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->k:Z

    return-void
.end method

.method static a(Landroid/content/Intent;)Lcom/roblox/client/game/GameLaunchActivity$a;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    new-instance v3, Lcom/roblox/client/game/GameLaunchActivity$a;

    invoke-direct {v3}, Lcom/roblox/client/game/GameLaunchActivity$a;-><init>()V

    .line 382
    const-string v0, "game_init_params"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_2

    .line 384
    const-string v4, "GameLaunchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newInstanceFromStartIntent() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/roblox/client/game/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v0}, Lcom/roblox/client/game/a;->a()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    .line 386
    invoke-virtual {v0}, Lcom/roblox/client/game/a;->b()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->b:J

    .line 387
    invoke-virtual {v0}, Lcom/roblox/client/game/a;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->d:Ljava/lang/String;

    .line 388
    invoke-virtual {v0}, Lcom/roblox/client/game/a;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->e:Ljava/lang/String;

    .line 389
    invoke-virtual {v0}, Lcom/roblox/client/game/a;->e()I

    move-result v0

    iput v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->a:I

    .line 395
    invoke-static {}, Lcom/roblox/client/b;->T()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "VRMode"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->f:Z

    .line 397
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->g:I

    .line 398
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    iput-boolean v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->h:Z

    .line 399
    invoke-static {}, Lcom/roblox/client/b;->aa()Z

    move-result v0

    if-nez v0, :cond_4

    .line 400
    invoke-static {}, Lcom/roblox/client/b;->Z()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    .line 401
    iget-boolean v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isChrome()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->j:Z

    .line 403
    invoke-static {}, Lcom/roblox/client/b;->ak()Z

    move-result v0

    iput-boolean v0, v3, Lcom/roblox/client/game/GameLaunchActivity$a;->k:Z

    move-object v0, v3

    .line 404
    :goto_2
    return-object v0

    .line 391
    :cond_2
    const-string v0, "GameLaunchActivity"

    const-string v1, "newInstanceFromStartIntent() ERROR: No GameInitParams"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 396
    goto :goto_0

    :cond_4
    move v0, v2

    .line 400
    goto :goto_1
.end method

.method static a(Landroid/os/Bundle;)Lcom/roblox/client/game/GameLaunchActivity$a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 408
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$a;

    invoke-direct {v0}, Lcom/roblox/client/game/GameLaunchActivity$a;-><init>()V

    .line 409
    const-string v1, "placeId"

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    .line 410
    const-string v1, "userId"

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->b:J

    .line 411
    const-string v1, "accessCode"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->d:Ljava/lang/String;

    .line 412
    const-string v1, "gameId"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->e:Ljava/lang/String;

    .line 413
    const-string v1, "joinRequestType"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->a:I

    .line 414
    const-string v1, "vrMode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->f:Z

    .line 415
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->g:I

    .line 416
    const-string v1, "launcher_debugger_attached"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->h:Z

    .line 417
    const-string v1, "enable_end_game_process"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    .line 418
    const-string v1, "enable_game_in_last_process"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->j:Z

    .line 419
    const-string v1, "enable_portrait_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/roblox/client/game/GameLaunchActivity$a;->k:Z

    .line 420
    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 424
    new-instance v1, Landroid/content/Intent;

    .line 425
    invoke-static {}, Lcom/roblox/client/b;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/roblox/client/game/ActivityGame;

    :goto_0
    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    invoke-static {}, Lcom/roblox/client/b;->bf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    :cond_0
    const-string v0, "roblox_placeId"

    iget-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 432
    const-string v0, "roblox_userId"

    iget-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 433
    const-string v0, "roblox_accessCode"

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v0, "roblox_gameId"

    iget-object v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v0, "roblox_joinRequestType"

    iget v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v0, "roblox_vrMode"

    iget-boolean v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->f:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const-string v0, "roblox_launcher_pid"

    iget v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const-string v0, "roblox_launcher_debugger_attached"

    iget-boolean v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->h:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v0, "roblox_app_settings_for_engine"

    invoke-static {}, Lcom/roblox/client/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v0, "roblox_enable_end_game_process"

    iget-boolean v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    const-string v0, "roblox_enable_game_in_last_process"

    iget-boolean v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->j:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const-string v0, "roblox_enable_portrait_mode"

    iget-boolean v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->k:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v0, "roblox_browser_tracker_id"

    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/c;->b()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 444
    const-string v0, "locale_value"

    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/locale/a;->b()Lcom/roblox/client/locale/c;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 445
    const-string v0, "ugc_locale_value"

    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/locale/a;->c()Lcom/roblox/client/locale/c;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 446
    return-object v1

    .line 425
    :cond_1
    const-class v0, Lcom/roblox/client/ActivityGlView;

    goto/16 :goto_0
.end method

.method b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 450
    const-string v0, "placeId"

    iget-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 451
    const-string v0, "userId"

    iget-wide v2, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 452
    const-string v0, "accessCode"

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "gameId"

    iget-object v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "joinRequestType"

    iget v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v0, "vrMode"

    iget-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    const-string v0, "launcher_pid"

    iget v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v0, "launcher_debugger_attached"

    iget-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    const-string v0, "enable_end_game_process"

    iget-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    const-string v0, "enable_game_in_last_process"

    iget-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const-string v0, "enable_portrait_mode"

    iget-boolean v1, p0, Lcom/roblox/client/game/GameLaunchActivity$a;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    return-void
.end method
