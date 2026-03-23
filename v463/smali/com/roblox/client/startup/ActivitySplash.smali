.class public Lcom/roblox/client/startup/ActivitySplash;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/startup/b$a;
.implements Lcom/roblox/client/startup/d;


# static fields
.field private static r:Z = true


# instance fields
.field private A:Z

.field private q:Lcom/roblox/client/components/LoadingBar;

.field private s:Ljava/lang/Runnable;

.field private t:J

.field private u:Landroid/os/Handler;

.field private v:Z

.field private w:Landroid/content/Intent;

.field private x:Z

.field private y:Z

.field private z:Lcom/roblox/client/startup/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    return-void
.end method

.method private A()V
    .locals 3

    .line 405
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->B()Lcom/roblox/client/startup/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rbx.splash"

    const-string v2, "Dismiss the existing Retry UI..."

    .line 407
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v0}, Lcom/roblox/client/startup/b;->b()V

    :cond_0
    return-void
.end method

.method private B()Lcom/roblox/client/startup/b;
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentRetry"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 414
    instance-of v1, v0, Lcom/roblox/client/startup/b;

    if-eqz v1, :cond_0

    .line 415
    check-cast v0, Lcom/roblox/client/startup/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private M()V
    .locals 3

    .line 421
    invoke-static {}, Lcom/roblox/client/n/d;->a()Lcom/roblox/client/n/d;

    move-result-object v0

    .line 422
    invoke-static {}, Lcom/roblox/client/b;->W()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/n/d;->a(J)V

    .line 424
    invoke-static {}, Lcom/roblox/client/u;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/n/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;
    .locals 2

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/startup/ActivitySplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildIntent for: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "rbx.splash"

    invoke-static {v1, p0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "STARTED_FOR_INTENT_KEY"

    .line 96
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/startup/ActivitySplash;)Lcom/roblox/client/components/LoadingBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Lcom/roblox/client/components/LoadingBar;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/startup/ActivitySplash;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Z)V
    .locals 5

    if-eqz p1, :cond_2

    .line 259
    sget-boolean p1, Lcom/roblox/client/startup/ActivitySplash;->r:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 260
    sput-boolean v0, Lcom/roblox/client/startup/ActivitySplash;->r:Z

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/roblox/client/startup/ActivitySplash;->t:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Lcom/roblox/client/components/LoadingBar;

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/LoadingBar;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/os/Handler;

    .line 266
    new-instance p1, Lcom/roblox/client/startup/ActivitySplash$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/startup/ActivitySplash$1;-><init>(Lcom/roblox/client/startup/ActivitySplash;)V

    iput-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Ljava/lang/Runnable;

    .line 273
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/os/Handler;

    sub-long/2addr v3, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Lcom/roblox/client/components/LoadingBar;

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/LoadingBar;->setVisibility(I)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->w()V

    .line 280
    iget-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Lcom/roblox/client/components/LoadingBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/LoadingBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .line 334
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/pushnotification/l;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppLaunch"

    const-string v1, "PushNotification"

    invoke-static {v0, v1, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/roblox/client/l;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 339
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    return-void
.end method

.method private c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "ProtocolLaunch"

    goto :goto_0

    :cond_0
    const-string p1, "Start"

    :goto_0
    const-string v0, "AppLaunch"

    const-string v1, "ActivityStartMVP"

    .line 343
    invoke-static {v0, p1, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LaunchActivityStartMVP"

    .line 344
    invoke-static {p1}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/roblox/client/l;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "ANIMATE_BUTTONS_EXTRA"

    .line 348
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    const/4 p1, 0x0

    .line 351
    invoke-virtual {p0, p1, p1}, Lcom/roblox/client/startup/ActivitySplash;->overridePendingTransition(II)V

    return-void
.end method

.method private d(I)V
    .locals 3

    const-string v0, "rbx.splash"

    const-string v1, "showRetryFragment: "

    .line 391
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->B()Lcom/roblox/client/startup/b;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "showRetryFragment: Found an existing Retry fragment."

    .line 395
    invoke-static {v0, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/roblox/client/startup/b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "showRetryFragment: Create a new FragmentRetry..."

    .line 398
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {p1}, Lcom/roblox/client/startup/b;->d(I)Lcom/roblox/client/startup/b;

    move-result-object p1

    .line 400
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentRetry"

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/startup/b;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "ProtocolLaunch"

    goto :goto_0

    :cond_0
    const-string v0, "Start"

    :goto_0
    const-string v1, "AppLaunch"

    const-string v2, "ActivityNativeMain"

    .line 355
    invoke-static {v1, v0, v2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LaunchActivityNativeMain"

    .line 356
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/analytics/g;->e()V

    .line 360
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->isFinishing()Z

    move-result v0

    const-string v1, "rbx.splash"

    if-eqz v0, :cond_1

    const-string p1, "isFinishing"

    .line 361
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "launchMainActivity"

    .line 365
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->y:Z

    if-eqz v0, :cond_3

    .line 369
    invoke-static {p0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2784

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/startup/ActivitySplash;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    sget p1, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v0, Lcom/roblox/client/o$a;->stay:I

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/startup/ActivitySplash;->overridePendingTransition(II)V

    goto :goto_1

    .line 373
    :cond_3
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/l;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_4

    const-string p1, "protocolLaunch"

    .line 375
    invoke-static {p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;)V

    .line 377
    :cond_4
    iget-boolean p1, p0, Lcom/roblox/client/startup/ActivitySplash;->y:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    const-string v1, "loginAfterSignup"

    .line 378
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    :cond_5
    iget-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 382
    iget-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 384
    :cond_6
    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 385
    invoke-virtual {p0, p1, p1}, Lcom/roblox/client/startup/ActivitySplash;->overridePendingTransition(II)V

    .line 386
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    :goto_1
    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "rbx.splash"

    const-string v1, "startup:"

    .line 247
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Z)V

    .line 250
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/startup/c;->c()V

    return-void
.end method

.method private w()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    .line 295
    iget-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    .line 297
    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->setResult(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    .line 299
    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->setResult(I)V

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    sget-object v1, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 309
    :goto_1
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/l;->h()Lcom/roblox/client/game/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/game/i;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->d()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "rbx.splash"

    const-string v2, "User is not logged in. Delay external game launch."

    .line 312
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->c(Z)V

    goto :goto_2

    .line 315
    :cond_3
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    goto :goto_2

    .line 318
    :cond_4
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 320
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/l;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->c(Landroid/content/Intent;)V

    goto :goto_2

    .line 324
    :cond_5
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    goto :goto_2

    .line 329
    :cond_6
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->c(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected o()Lcom/roblox/client/p/b;
    .locals 1

    .line 243
    new-instance v0, Lcom/roblox/client/p/d;

    invoke-direct {v0}, Lcom/roblox/client/p/d;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2784

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/roblox/abtesting/a;->m()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/roblox/client/ad/c;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/abtesting/a;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string p2, "Android-VAppSignupC-HomeScreenLoaded"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_2
    :goto_0
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string p2, "Android-VAppSignupB-HomeScreenLoaded"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 178
    :cond_3
    :goto_1
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/roblox/client/l;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 179
    iget-boolean p2, p0, Lcom/roblox/client/startup/ActivitySplash;->y:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    const-string p3, "loginAfterSignup"

    .line 180
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    :cond_4
    iget-object p2, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 184
    iget-object p2, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 186
    :cond_5
    invoke-virtual {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 103
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/startup/ActivitySplash;->t:J

    .line 106
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    .line 108
    invoke-static {}, Lcom/roblox/client/analytics/i;->a()V

    const-string v0, "LaunchApp"

    .line 109
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/roblox/engine/jni/NativeReportingInterface;->initAppShellReporter()V

    .line 113
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Landroid/content/Intent;

    const-string v1, "STARTED_FOR_INTENT_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/e;

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/roblox/client/startup/e;->a:Lcom/roblox/client/startup/e;

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.splash"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    sget-object v2, Lcom/roblox/client/startup/e;->c:Lcom/roblox/client/startup/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    sget-object v2, Lcom/roblox/client/startup/e;->k:Lcom/roblox/client/startup/e;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Z

    .line 122
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    sget-object v2, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->y:Z

    .line 124
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    sget-object v2, Lcom/roblox/client/startup/e;->d:Lcom/roblox/client/startup/e;

    if-ne v0, v2, :cond_4

    const/4 v3, 0x1

    .line 126
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: startedForResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", appRestarted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget v0, Lcom/roblox/client/o$g;->activity_splash:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->setContentView(I)V

    .line 131
    sget v0, Lcom/roblox/client/o$f;->loading_progress_view:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/LoadingBar;

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Lcom/roblox/client/components/LoadingBar;

    .line 133
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    invoke-static {}, Lcom/roblox/client/u;->c()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_5
    invoke-static {}, Lcom/roblox/client/b;->d()V

    .line 142
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    if-nez p1, :cond_6

    .line 145
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/f;->d()V

    .line 153
    :cond_6
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/roblox/client/u;->ax()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Alert: needs restart"

    .line 154
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->F()V

    return-void

    .line 162
    :cond_7
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    invoke-virtual {p1, v0}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/e;)V

    .line 163
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/d;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/roblox/client/q;->onDestroy()V

    const-string v0, "rbx.splash"

    const-string v1, "onDestroy: unset the activity from InitHelper."

    .line 211
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/startup/c;->b(Lcom/roblox/client/startup/d;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onNewIntent(Landroid/content/Intent;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.splash"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/roblox/client/q;->onPause()V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: isFinishing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.splash"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->w()V

    .line 236
    iget-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->A:Z

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/analytics/g;->d()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/roblox/client/q;->onResume()V

    const-string v0, "rbx.splash"

    const-string v1, "onResume:"

    .line 225
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->A()V

    .line 227
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->n()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    const-string v0, "splash"

    .line 219
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 3

    .line 435
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Z)V

    .line 439
    iget-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Z

    const-string v1, "rbx.splash"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    if-eqz v0, :cond_0

    const-string v0, "The app appears to crash in the last run. Check if we need to upload crash dump..."

    .line 440
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Lcom/roblox/client/analytics/b;->a()Lcom/roblox/client/analytics/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/analytics/b;->a(Landroid/content/Context;)V

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->M()V

    .line 446
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "updateViewAppSettingsLoaded: (NEW_STARTUP) launch the Main activity now..."

    .line 447
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->A:Z

    .line 449
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/roblox/client/startup/c;->b(Lcom/roblox/client/startup/d;)V

    .line 450
    iget-object v1, p0, Lcom/roblox/client/startup/ActivitySplash;->z:Lcom/roblox/client/startup/e;

    sget-object v2, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 451
    :goto_0
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    :cond_2
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Z)V

    .line 459
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ConnectionError:I

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(I)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    .line 466
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_SSLHandshakeException:I

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(I)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ServiceNotAvailable:I

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(I)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    const-string v0, "NavigateToLandingScreen"

    .line 482
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->x()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    const-string v0, "NavigateToLandingScreen"

    .line 490
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->n()V

    return-void
.end method

.method public z()V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->n()V

    return-void
.end method
