.class public Lcom/roblox/client/i/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/i/h$d;,
        Lcom/roblox/client/i/h$c;,
        Lcom/roblox/client/i/h$e;,
        Lcom/roblox/client/i/h$f;,
        Lcom/roblox/client/i/h$a;,
        Lcom/roblox/client/i/h$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/roblox/client/i/h;->b:J

    .line 57
    iput-boolean v2, p0, Lcom/roblox/client/i/h;->c:Z

    .line 59
    iput v2, p0, Lcom/roblox/client/i/h;->d:I

    .line 86
    invoke-direct {p0}, Lcom/roblox/client/i/h;->g()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/h;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/roblox/client/i/h;->d:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/i/h;)J
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/roblox/client/i/h;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/post/LoginApiRequestBody;
    .locals 2

    .prologue
    .line 689
    new-instance v0, Lcom/roblox/client/http/post/LoginApiRequestBody;

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/http/post/LoginApiRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/roblox/client/b;->aj()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/http/post/LoginApiRequestBody;->setDeviceHandle(Ljava/lang/String;)V

    .line 693
    :cond_0
    return-object v0
.end method

.method public static a()Lcom/roblox/client/i/h;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/roblox/client/i/h$b;->a:Lcom/roblox/client/i/h;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/i/h;->c:Z

    .line 315
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/i/h;->a(J)V

    .line 316
    invoke-direct {p0}, Lcom/roblox/client/i/h;->i()V

    .line 317
    invoke-direct {p0}, Lcom/roblox/client/i/h;->l()V

    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/i/h;->b(Z)V

    .line 321
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/a;->c()V

    .line 322
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/n;->c()V

    .line 324
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->b()V

    .line 327
    invoke-static {}, Lcom/roblox/client/pushnotification/o;->a()Lcom/roblox/client/pushnotification/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/o;->b()V

    .line 330
    invoke-direct {p0, p1}, Lcom/roblox/client/i/h;->b(Landroid/content/Context;)V

    .line 331
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/i/h$e;)V
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/i/h;->c:Z

    .line 227
    invoke-direct {p0, p2}, Lcom/roblox/client/i/h;->a(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/roblox/client/login/d;

    const-string v1, "PostLogin"

    iget-wide v2, p0, Lcom/roblox/client/i/h;->b:J

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/roblox/client/login/d;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 232
    new-instance v1, Lcom/roblox/client/i/h$3;

    invoke-direct {v1, p0, p3}, Lcom/roblox/client/i/h$3;-><init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$e;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/login/d$g;)V

    .line 240
    invoke-virtual {v0}, Lcom/roblox/client/login/d;->a()V

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/h;Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/i/h$e;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/i/h$e;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/i/h;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/i/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V

    return-void
.end method

.method private a(Lcom/roblox/client/j/b$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    new-instance v0, Lcom/roblox/client/i/h$4;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/i/h$4;-><init>(Lcom/roblox/client/i/h;Lcom/roblox/client/j/b$a;)V

    .line 352
    invoke-static {}, Lcom/roblox/client/http/g;->a()Lcom/roblox/client/http/f;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->logoutApiUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 355
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    const-string v3, "UserId"

    iget-wide v4, p0, Lcom/roblox/client/i/h;->b:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/i/h;->b:J

    .line 262
    const-string v3, "AgeBracket"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 264
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v4

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-virtual {v4, v0}, Lcom/roblox/client/q/d;->a(Z)V

    .line 266
    const-string v0, "Username"

    iget-object v1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->b(Ljava/lang/String;)V

    .line 269
    const-string v0, "Email"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    const-string v3, "Value"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/roblox/client/q/d;->a(Ljava/lang/String;)V

    .line 274
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/i/h;->b(Z)V

    .line 277
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    const-string v1, "MembershipType"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->e(I)V

    .line 280
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    const-string v1, "RobuxBalance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->d(I)V

    .line 283
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-static {v2}, Lcom/roblox/client/q/a;->a(Lorg/json/JSONObject;)Lcom/roblox/client/q/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->a(Lcom/roblox/client/q/a;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 264
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V
    .locals 8

    .prologue
    .line 701
    .line 704
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    .line 705
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->c()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    .line 708
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->d()J

    move-result-wide v6

    move-object v0, p1

    move-object v1, p2

    .line 701
    invoke-static/range {v0 .. v7}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 709
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/i/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 336
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 338
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/i/h$c;)V
    .locals 5

    .prologue
    .line 486
    new-instance v0, Lcom/roblox/client/i/h$6;

    invoke-direct {v0, p0, p3, p1}, Lcom/roblox/client/i/h$6;-><init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$c;Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/post/LoginApiRequestBody;

    move-result-object v1

    .line 679
    new-instance v2, Lcom/roblox/client/http/h;

    invoke-direct {v2}, Lcom/roblox/client/http/h;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->loginApiUrlV2()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/roblox/client/http/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 685
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 398
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    const-string v1, "userid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    if-eqz p1, :cond_0

    .line 406
    const-string v1, "userid_long"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string v1, "under13"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 415
    return-void

    .line 409
    :cond_0
    const-string v1, "username"

    iget-object v2, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    const-string v1, "userid_long"

    iget-wide v2, p0, Lcom/roblox/client/i/h;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 411
    const-string v1, "under13"

    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->g()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/i/h;)J
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/roblox/client/i/h;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 439
    iput-wide p1, p0, Lcom/roblox/client/i/h;->b:J

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/i/h;->c:Z

    .line 441
    invoke-direct {p0}, Lcom/roblox/client/i/h;->h()V

    .line 445
    invoke-static {}, Lcom/roblox/client/q/c;->a()Lcom/roblox/client/q/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    const-string v2, "Username"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/q/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method static synthetic d(Lcom/roblox/client/i/h;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/roblox/client/i/h;->d:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    new-instance v0, Lcom/roblox/client/http/r;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->logoutApiUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/i/h$5;

    invoke-direct {v2, p0}, Lcom/roblox/client/i/h$5;-><init>(Lcom/roblox/client/i/h;)V

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;)V

    .line 368
    invoke-virtual {v0}, Lcom/roblox/client/http/r;->c()V

    .line 369
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 375
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    .line 378
    const-string v1, "userid_long"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/roblox/client/i/h;->b:J

    .line 379
    iget-wide v2, p0, Lcom/roblox/client/i/h;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 385
    const-string v1, "userid"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/roblox/client/i/h;->b:J

    .line 387
    :cond_0
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    const-string v2, "under13"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/roblox/client/q/d;->a(Z)V

    .line 388
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->b(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 450
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    const-string v1, "user_logged_in_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 452
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 455
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    const-string v1, "user_logged_in_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    return-void
.end method

.method private j()J
    .locals 4

    .prologue
    .line 460
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    const-string v1, "user_logged_in_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private k()J
    .locals 4

    .prologue
    .line 465
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    const-string v1, "last_auth_cookie_expir_key"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 475
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getKeyValues()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    const-string v1, "last_auth_cookie_expir_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/roblox/client/i/h;->b:J

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/i/h$f;)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/roblox/client/q/b;

    new-instance v1, Lcom/roblox/client/i/h$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/i/h$2;-><init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$f;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/roblox/client/q/b;-><init>(Lcom/roblox/client/http/m;)V

    .line 213
    invoke-virtual {v0}, Lcom/roblox/client/q/b;->b()V

    .line 214
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/j/b$a;)V
    .locals 2

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;)V

    .line 308
    const-string v0, "SessionManager"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, p2}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/j/b$a;)V

    .line 310
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/roblox/client/i/h;->a(Landroid/content/Context;)V

    .line 297
    const-string v0, "SessionManager"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz p2, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/roblox/client/i/h;->f()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/e;->a(I)V

    .line 303
    return-void
.end method

.method public a(Lcom/roblox/client/http/m;)V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/roblox/client/q/b;

    invoke-direct {v0, p1}, Lcom/roblox/client/q/b;-><init>(Lcom/roblox/client/http/m;)V

    .line 218
    invoke-virtual {v0}, Lcom/roblox/client/q/b;->a()V

    .line 219
    invoke-virtual {v0}, Lcom/roblox/client/q/b;->b()V

    .line 221
    return-void
.end method

.method public a(Lcom/roblox/client/i/h$a;Lcom/roblox/client/http/f;)V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/roblox/client/i/h$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/i/h$1;-><init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$a;)V

    .line 136
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->balanceApiUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    invoke-interface {p2, v1, v2, v0}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 432
    const-string v0, "rbx.login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignUpOK: username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/i/h;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput-object p1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    .line 435
    invoke-direct {p0, p2, p3}, Lcom/roblox/client/i/h;->c(J)V

    .line 436
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/i/h$c;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/roblox/client/i/h;->a:Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/i/h;->b(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/i/h$c;)V

    .line 144
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/roblox/client/i/h;->c:Z

    .line 98
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/roblox/client/i/h;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 425
    const-string v0, "rbx.login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginOK: userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/roblox/client/i/f;->b(I)V

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/i/h;->c(J)V

    .line 429
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/roblox/client/i/h;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/roblox/client/i/h;->c:Z

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/i/h;->d:I

    .line 421
    return-void
.end method
