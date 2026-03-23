.class public Lcom/roblox/client/startup/ActivitySplash;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/startup/a$a;
.implements Lcom/roblox/client/startup/c;


# static fields
.field private static p:Z


# instance fields
.field private m:Lcom/roblox/client/components/LoadingBar;

.field private q:Ljava/lang/Runnable;

.field private r:J

.field private s:Landroid/os/Handler;

.field private t:Z

.field private u:Landroid/content/Intent;

.field private v:Z

.field private w:Z

.field private x:Lcom/roblox/client/startup/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/roblox/client/startup/ActivitySplash;->p:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->t:Z

    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->setResult(I)V

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    .line 293
    :goto_1
    return-void

    .line 246
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->setResult(I)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/content/Intent;

    const-string v1, "game_init_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    sget-object v2, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    .line 257
    :goto_2
    if-nez v0, :cond_2

    .line 258
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/b;->c()Lcom/roblox/client/game/a;

    move-result-object v0

    .line 261
    :cond_2
    if-eqz v0, :cond_5

    .line 267
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/i/h;->d()Z

    move-result v2

    if-nez v2, :cond_4

    .line 269
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->j()Z

    move-result v2

    if-nez v2, :cond_4

    .line 270
    const-string v2, "ActivitySplash"

    const-string v3, "Guest mode not enabled. Stopping external launch until signing up."

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/a;)V

    .line 274
    invoke-direct {p0, v1}, Lcom/roblox/client/startup/ActivitySplash;->e(Z)V

    goto :goto_1

    .line 255
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 276
    :cond_4
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/roblox/client/game/b;->a(Lcom/roblox/client/game/a;)V

    .line 277
    invoke-direct {p0, v1, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(ZLcom/roblox/client/game/a;)V

    goto :goto_1

    .line 280
    :cond_5
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/content/Intent;

    const-string v2, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 283
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->c(Landroid/content/Intent;)V

    goto :goto_1

    .line 286
    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/roblox/client/startup/ActivitySplash;->a(ZLcom/roblox/client/game/a;)V

    goto :goto_1

    .line 291
    :cond_7
    invoke-direct {p0, v1}, Lcom/roblox/client/startup/ActivitySplash;->e(Z)V

    goto :goto_1
.end method

.method private B()V
    .locals 3

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->C()Lcom/roblox/client/startup/a;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    const-string v1, "ActivitySplash"

    const-string v2, "Dismiss the existing Retry UI..."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v0}, Lcom/roblox/client/startup/a;->dismiss()V

    .line 353
    :cond_0
    return-void
.end method

.method private C()Lcom/roblox/client/startup/a;
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "FragmentRetry"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 357
    instance-of v1, v0, Lcom/roblox/client/startup/a;

    if-eqz v1, :cond_0

    .line 358
    check-cast v0, Lcom/roblox/client/startup/a;

    .line 360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 4

    .prologue
    .line 364
    invoke-static {}, Lcom/roblox/client/f/f;->a()Lcom/roblox/client/f/f;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/roblox/client/b;->ax()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/f/f;->a(J)V

    .line 367
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->homeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/f/f;->a(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private E()V
    .locals 9

    .prologue
    .line 371
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 372
    invoke-static {}, Lcom/roblox/client/b;->am()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 374
    invoke-static {}, Lcom/roblox/client/c/a;->a()Lcom/roblox/client/c/a;

    move-result-object v1

    .line 375
    invoke-static {}, Lcom/roblox/client/b;->ao()I

    move-result v2

    .line 376
    invoke-static {}, Lcom/roblox/client/b;->ap()I

    move-result v3

    .line 377
    invoke-static {}, Lcom/roblox/client/b;->aq()I

    move-result v4

    .line 378
    invoke-static {}, Lcom/roblox/client/b;->ar()I

    move-result v5

    .line 380
    invoke-static {}, Lcom/roblox/client/b;->as()I

    move-result v8

    .line 374
    invoke-virtual/range {v1 .. v8}, Lcom/roblox/client/c/a;->a(IIIIJI)V

    .line 381
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/startup/ActivitySplash;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "ActivitySplash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildIntent for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "STARTED_FOR_INTENT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/startup/ActivitySplash;)Lcom/roblox/client/components/LoadingBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->m:Lcom/roblox/client/components/LoadingBar;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/startup/ActivitySplash;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(ZLcom/roblox/client/game/a;)V
    .locals 3

    .prologue
    .line 318
    const-string v1, "AppLaunch"

    if-eqz p1, :cond_2

    const-string v0, "ProtocolLaunch"

    :goto_0
    const-string v2, "ActivityNativeMain"

    invoke-static {v1, v0, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/d;->f()V

    .line 322
    invoke-static {p0, p2}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/content/Context;Lcom/roblox/client/game/a;)Landroid/content/Intent;

    move-result-object v0

    .line 323
    if-eqz p1, :cond_0

    .line 324
    const-string v1, "protocolLaunch"

    invoke-static {v1}, Lcom/roblox/client/i;->a(Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-boolean v1, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Z

    if-eqz v1, :cond_1

    .line 327
    const-string v1, "loginAfterSignup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    :cond_1
    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    .line 331
    return-void

    .line 318
    :cond_2
    const-string v0, "Start"

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/startup/ActivitySplash;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->y()V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 296
    const-string v0, "AppLaunch"

    const-string v1, "PushNotification"

    const-string v2, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/content/Context;Lcom/roblox/client/game/a;)Landroid/content/Intent;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 301
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    .line 304
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 334
    const-string v0, "ActivitySplash"

    const-string v1, "showRetryFragment: "

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->C()Lcom/roblox/client/startup/a;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    .line 338
    const-string v1, "ActivitySplash"

    const-string v2, "showRetryFragment: Found an existing Retry fragment."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/a;->a(Ljava/lang/CharSequence;)V

    .line 345
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v0, "ActivitySplash"

    const-string v1, "showRetryFragment: Create a new FragmentRetry..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1}, Lcom/roblox/client/startup/a;->a(I)Lcom/roblox/client/startup/a;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->e()Landroid/support/v4/app/l;

    move-result-object v1

    const-string v2, "FragmentRetry"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/startup/a;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v4, 0x0

    .line 205
    if-eqz p1, :cond_2

    .line 206
    sget-boolean v0, Lcom/roblox/client/startup/ActivitySplash;->p:Z

    if-eqz v0, :cond_1

    .line 207
    sput-boolean v4, Lcom/roblox/client/startup/ActivitySplash;->p:Z

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/roblox/client/startup/ActivitySplash;->r:J

    sub-long/2addr v0, v2

    .line 209
    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->m:Lcom/roblox/client/components/LoadingBar;

    invoke-virtual {v0, v4}, Lcom/roblox/client/components/LoadingBar;->setVisibility(I)V

    .line 229
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Landroid/os/Handler;

    .line 213
    new-instance v2, Lcom/roblox/client/startup/ActivitySplash$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/startup/ActivitySplash$1;-><init>(Lcom/roblox/client/startup/ActivitySplash;)V

    iput-object v2, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Ljava/lang/Runnable;

    .line 220
    iget-object v2, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Landroid/os/Handler;

    iget-object v3, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Ljava/lang/Runnable;

    sub-long v0, v6, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->m:Lcom/roblox/client/components/LoadingBar;

    invoke-virtual {v0, v4}, Lcom/roblox/client/components/LoadingBar;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->z()V

    .line 227
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->m:Lcom/roblox/client/components/LoadingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/LoadingBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    const-string v1, "AppLaunch"

    if-eqz p1, :cond_0

    const-string v0, "ProtocolLaunch"

    :goto_0
    const-string v2, "ActivityStartMVP"

    invoke-static {v1, v0, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/landing/ActivityStartMVP;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    const-string v1, "ANIMATE_BUTTONS_EXTRA"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->finish()V

    .line 314
    invoke-virtual {p0, v3, v3}, Lcom/roblox/client/startup/ActivitySplash;->overridePendingTransition(II)V

    .line 315
    return-void

    .line 307
    :cond_0
    const-string v0, "Start"

    goto :goto_0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "ActivitySplash"

    const-string v1, "startup:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    .line 196
    invoke-static {p0}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/b;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    invoke-virtual {v0, v1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/e;)V

    .line 198
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->q:Ljava/lang/Runnable;

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 3

    .prologue
    .line 415
    const-string v0, "ActivitySplash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUpgradeUI: required = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    .line 419
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->B()V

    .line 421
    new-instance v0, Lcom/roblox/client/startup/ActivitySplash$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/startup/ActivitySplash$2;-><init>(Lcom/roblox/client/startup/ActivitySplash;)V

    .line 432
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(ZLcom/roblox/client/k$a;)V

    .line 434
    :cond_0
    return-void
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/roblox/client/startup/ActivitySplash;->t:Z

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Z)V

    .line 392
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->E()V

    .line 393
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->D()V

    .line 394
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const v0, 0x7f0e0127

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(Z)V

    .line 408
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const v0, 0x7f0e012d

    invoke-direct {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->d(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/startup/ActivitySplash;->r:J

    .line 97
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->u:Landroid/content/Intent;

    const-string v3, "STARTED_FOR_INTENT_KEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/e;

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    .line 100
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/roblox/client/startup/e;->a:Lcom/roblox/client/startup/e;

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    sget-object v3, Lcom/roblox/client/startup/e;->c:Lcom/roblox/client/startup/e;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    sget-object v3, Lcom/roblox/client/startup/e;->k:Lcom/roblox/client/startup/e;

    if-ne v0, v3, :cond_5

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    .line 106
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    sget-object v3, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    if-ne v0, v3, :cond_6

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->w:Z

    .line 108
    iget-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->x:Lcom/roblox/client/startup/e;

    sget-object v3, Lcom/roblox/client/startup/e;->d:Lcom/roblox/client/startup/e;

    if-ne v0, v3, :cond_2

    move v1, v2

    .line 110
    :cond_2
    const-string v0, "ActivitySplash"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: startedForResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/roblox/client/startup/ActivitySplash;->v:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", appRestarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->setContentView(I)V

    .line 115
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/LoadingBar;

    iput-object v0, p0, Lcom/roblox/client/startup/ActivitySplash;->m:Lcom/roblox/client/components/LoadingBar;

    .line 117
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getBaseUrlValue()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    :cond_3
    invoke-static {}, Lcom/roblox/client/b;->c()V

    .line 126
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/startup/ActivitySplash;->t:Z

    .line 128
    if-nez p1, :cond_4

    .line 129
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;)V

    .line 135
    :cond_4
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    const-string v0, "ActivitySplash"

    const-string v1, "Alert: needs restart"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->q()V

    .line 145
    :goto_2
    return-void

    :cond_5
    move v0, v1

    .line 104
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 106
    goto/16 :goto_1

    .line 144
    :cond_7
    invoke-static {p0}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/c;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 166
    const-string v0, "ActivitySplash"

    const-string v1, "onDestroy: unset the activity from InitHelper."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p0}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/startup/b;->b(Lcom/roblox/client/startup/c;)V

    .line 168
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    const-string v0, "ActivitySplash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/roblox/client/k;->onPause()V

    .line 188
    const-string v0, "ActivitySplash"

    const-string v1, "onPause:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->z()V

    .line 190
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/d;->d()V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/roblox/client/k;->onResume()V

    .line 180
    const-string v0, "ActivitySplash"

    const-string v1, "onResume:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->B()V

    .line 182
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->y()V

    .line 183
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 174
    const-string v0, "splash"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/roblox/client/startup/ActivitySplash;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->A()V

    .line 441
    :cond_0
    return-void
.end method

.method public w()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->y()V

    .line 447
    return-void
.end method

.method public x()V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/roblox/client/startup/ActivitySplash;->y()V

    .line 452
    return-void
.end method
