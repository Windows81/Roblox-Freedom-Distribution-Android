.class public Lcom/roblox/client/s/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/s/h$c;,
        Lcom/roblox/client/s/h$d;,
        Lcom/roblox/client/s/h$a;,
        Lcom/roblox/client/s/h$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/roblox/client/s/h;->a:J

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/roblox/client/s/h;->b:Z

    .line 68
    invoke-direct {p0}, Lcom/roblox/client/s/h;->e()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/s/h;)J
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/roblox/client/s/h;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Lcom/roblox/client/s/h;
    .locals 1

    .line 62
    sget-object v0, Lcom/roblox/client/s/h$b;->a:Lcom/roblox/client/s/h;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/roblox/client/s/h;->b:Z

    const-wide/16 v0, -0x1

    .line 368
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/s/h;->a(J)V

    .line 369
    invoke-direct {p0}, Lcom/roblox/client/s/h;->g()V

    .line 370
    invoke-direct {p0}, Lcom/roblox/client/s/h;->j()V

    const/4 v0, 0x1

    .line 372
    invoke-direct {p0, v0}, Lcom/roblox/client/s/h;->b(Z)V

    .line 374
    invoke-static {}, Lcom/roblox/client/e/a/b;->a()Lcom/roblox/client/e/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/e/a/b;->c()V

    .line 376
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->b()V

    .line 379
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/o;->b()V

    .line 382
    invoke-direct {p0, p1}, Lcom/roblox/client/s/h;->b(Landroid/content/Context;)V

    const-string p1, "SessionManager"

    const-string v0, "Post the request to RealtimeService to close SignalR asynchronously."

    .line 385
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/l/h;

    invoke-direct {v0}, Lcom/roblox/client/l/h;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/s/h;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/s/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/s/h;Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/s/h;->b(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V

    return-void
.end method

.method private a(Lcom/roblox/client/t/c$a;)V
    .locals 3

    .line 397
    new-instance v0, Lcom/roblox/client/s/h$5;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/s/h$5;-><init>(Lcom/roblox/client/s/h;Lcom/roblox/client/t/c$a;)V

    .line 412
    invoke-static {}, Lcom/roblox/client/u;->w()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {}, Lcom/roblox/client/http/g;->a()Lcom/roblox/client/http/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "UserId"

    .line 247
    iget-wide v2, p0, Lcom/roblox/client/s/h;->a:J

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/roblox/client/s/h;->a:J

    const-string p1, "AgeBracket"

    const/4 v2, 0x1

    .line 248
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 250
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    iget-wide v4, p0, Lcom/roblox/client/s/h;->a:J

    invoke-virtual {v3, v4, v5}, Lcom/roblox/client/ad/c;->a(J)V

    .line 251
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/roblox/client/ad/c;->a(Z)V

    const-string p1, "Username"

    .line 253
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/roblox/client/ad/c;->b(Ljava/lang/String;)V

    const-string p1, "DisplayName"

    .line 256
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/roblox/client/ad/c;->c(Ljava/lang/String;)V

    const-string p1, "CountryCode"

    .line 259
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/ad/c;->e(Ljava/lang/String;)V

    const-string p1, "Email"

    .line 262
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 264
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    const-string v2, "Value"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/roblox/client/ad/c;->a(Ljava/lang/String;)V

    .line 267
    :cond_1
    invoke-direct {p0, v4}, Lcom/roblox/client/s/h;->b(Z)V

    .line 270
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    const-string v0, "MembershipType"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/ad/c;->c(I)V

    .line 273
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    const-string v0, "RobuxBalance"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/ad/c;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/s/h;)J
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/roblox/client/s/h;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(J)V
    .locals 1

    .line 482
    iput-wide p1, p0, Lcom/roblox/client/s/h;->a:J

    const/4 p1, 0x1

    .line 483
    iput-boolean p1, p0, Lcom/roblox/client/s/h;->b:Z

    .line 484
    invoke-direct {p0}, Lcom/roblox/client/s/h;->f()V

    .line 488
    invoke-static {}, Lcom/roblox/client/ad/b;->a()Lcom/roblox/client/ad/b;

    move-result-object p1

    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Username"

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/ad/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "notification"

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 392
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V
    .locals 3

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/roblox/client/s/h;->b:Z

    .line 211
    invoke-direct {p0, p2}, Lcom/roblox/client/s/h;->a(Ljava/lang/String;)V

    .line 215
    new-instance p2, Lcom/roblox/client/login/a;

    iget-wide v0, p0, Lcom/roblox/client/s/h;->a:J

    const-string v2, "PostLogin"

    invoke-direct {p2, p1, v2, v0, v1}, Lcom/roblox/client/login/a;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 216
    new-instance p1, Lcom/roblox/client/s/h$3;

    invoke-direct {p1, p0, p3}, Lcom/roblox/client/s/h$3;-><init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$c;)V

    invoke-virtual {p2, p1}, Lcom/roblox/client/login/a;->a(Lcom/roblox/client/login/a$g;)V

    .line 224
    invoke-virtual {p2}, Lcom/roblox/client/login/a;->a()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 452
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userid"

    .line 455
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "under13"

    const-string v2, "userid_long"

    const-string v3, "displayName"

    if-eqz p1, :cond_0

    .line 460
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object p1

    const-string v4, "username"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/ad/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    iget-wide v3, p0, Lcom/roblox/client/s/h;->a:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/ad/c;->i()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 470
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private e()V
    .locals 8

    .line 427
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, ""

    .line 429
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "displayName"

    .line 430
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid_long"

    const-wide/16 v4, -0x1

    .line 431
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/roblox/client/s/h;->a:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    const/4 v3, -0x1

    const-string v4, "userid"

    .line 438
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/roblox/client/s/h;->a:J

    .line 440
    :cond_0
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "under13"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/roblox/client/ad/c;->a(Z)V

    .line 441
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/ad/c;->b(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/roblox/client/ad/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 493
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "user_logged_in_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 498
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_logged_in_time"

    .line 499
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private h()J
    .locals 4

    .line 503
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_logged_in_time"

    const-wide/16 v2, -0x1

    .line 504
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private i()J
    .locals 4

    .line 508
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_auth_cookie_expir_key"

    const-wide/16 v2, -0x1

    .line 509
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private j()V
    .locals 2

    .line 518
    invoke-static {}, Lcom/roblox/client/u;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_auth_cookie_expir_key"

    .line 519
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/roblox/client/s/h;->a:J

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/s/h$d;)V
    .locals 2

    .line 145
    new-instance v0, Lcom/roblox/client/ad/a;

    new-instance v1, Lcom/roblox/client/s/h$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/s/h$2;-><init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$d;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/roblox/client/ad/a;-><init>(Lcom/roblox/client/http/m;)V

    const-string p1, "autoLogin"

    .line 195
    invoke-static {p1}, Lcom/roblox/client/s/f;->c(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/roblox/client/ad/a;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, p0, Lcom/roblox/client/s/h;->b:Z

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "userId"

    .line 298
    iget-wide v2, p0, Lcom/roblox/client/s/h;->a:J

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/roblox/client/s/h;->a:J

    .line 300
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    iget-wide v2, p0, Lcom/roblox/client/s/h;->a:J

    invoke-virtual {p2, v2, v3}, Lcom/roblox/client/ad/c;->a(J)V

    .line 301
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    const-string v2, "isUnder13"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/roblox/client/ad/c;->a(Z)V

    const-string p2, "username"

    .line 303
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 304
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/roblox/client/ad/c;->b(Ljava/lang/String;)V

    const-string p2, "displayName"

    .line 306
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/roblox/client/ad/c;->c(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 309
    invoke-direct {p0, p2}, Lcom/roblox/client/s/h;->b(Z)V

    .line 311
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    const-string v3, "membershipType"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/roblox/client/ad/c;->c(I)V

    .line 313
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/roblox/client/m/e;->cI()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "countryCode"

    .line 314
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 315
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/roblox/client/ad/c;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountInfoFromLua: Exception: + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    new-instance p2, Lcom/roblox/client/login/a;

    iget-wide v0, p0, Lcom/roblox/client/s/h;->a:J

    const-string v2, "PostLogin"

    invoke-direct {p2, p1, v2, v0, v1}, Lcom/roblox/client/login/a;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 335
    new-instance p1, Lcom/roblox/client/s/h$4;

    invoke-direct {p1, p0, p3}, Lcom/roblox/client/s/h$4;-><init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$c;)V

    invoke-virtual {p2, p1}, Lcom/roblox/client/login/a;->a(Lcom/roblox/client/login/a$g;)V

    .line 343
    invoke-virtual {p2}, Lcom/roblox/client/login/a;->a()V

    .line 346
    invoke-static {}, Lcom/roblox/client/x/c;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SessionManager"

    const-string p2, "Post the request to RealtimeService to start SignalR asynchronously."

    .line 347
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/roblox/client/l/g;

    invoke-direct {p2}, Lcom/roblox/client/l/g;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;ZLcom/roblox/client/t/c$a;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 357
    invoke-direct {p0, p3}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/t/c$a;)V

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lcom/roblox/client/s/h;->a(Landroid/content/Context;)V

    .line 361
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/l;->d()Lcom/roblox/client/v/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/v/a;->a()V

    const-string p1, "SessionManager"

    const-string p2, "logout"

    .line 362
    invoke-static {p1, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/roblox/client/http/m;)V
    .locals 1

    .line 200
    new-instance v0, Lcom/roblox/client/ad/a;

    invoke-direct {v0, p1}, Lcom/roblox/client/ad/a;-><init>(Lcom/roblox/client/http/m;)V

    .line 201
    invoke-virtual {v0}, Lcom/roblox/client/ad/a;->a()V

    const-string p1, "activeSession"

    .line 202
    invoke-static {p1}, Lcom/roblox/client/s/f;->c(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lcom/roblox/client/ad/a;->b()V

    return-void
.end method

.method public a(Lcom/roblox/client/s/h$a;Lcom/roblox/client/http/f;)V
    .locals 2

    .line 96
    new-instance v0, Lcom/roblox/client/s/h$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/s/h$1;-><init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$a;)V

    .line 124
    invoke-static {}, Lcom/roblox/client/u;->y()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 123
    invoke-interface {p2, p1, v1, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/roblox/client/http/c;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignUpOK: username:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.login"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0, p2, p3}, Lcom/roblox/client/s/h;->b(J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 80
    iput-boolean p1, p0, Lcom/roblox/client/s/h;->b:Z

    .line 82
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 84
    invoke-static {}, Lcom/roblox/client/u;->at()V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/roblox/client/s/h;->a:J

    return-wide v0
.end method

.method public c()Z
    .locals 5

    .line 75
    iget-wide v0, p0, Lcom/roblox/client/s/h;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/roblox/client/s/h;->b:Z

    return v0
.end method
