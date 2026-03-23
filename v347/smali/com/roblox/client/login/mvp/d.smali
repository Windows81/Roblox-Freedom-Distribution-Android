.class Lcom/roblox/client/login/mvp/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/login/mvp/d$a;,
        Lcom/roblox/client/login/mvp/d$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/roblox/client/q/d;

.field private d:Lcom/roblox/client/q/c;

.field private e:Lcom/roblox/client/util/m;


# direct methods
.method constructor <init>(Lcom/roblox/client/q/d;Lcom/roblox/client/q/c;Lcom/roblox/client/util/m;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/login/mvp/d;->a:I

    .line 73
    iput-object p1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    .line 74
    iput-object p2, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/q/c;

    .line 75
    iput-object p3, p0, Lcom/roblox/client/login/mvp/d;->e:Lcom/roblox/client/util/m;

    .line 76
    return-void
.end method

.method private a(Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;
    .locals 3

    .prologue
    const/16 v2, -0x7da

    .line 282
    new-instance v1, Lcom/roblox/client/login/mvp/c;

    invoke-direct {v1}, Lcom/roblox/client/login/mvp/c;-><init>()V

    .line 284
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/roblox/client/login/mvp/d$b;->a:I

    .line 286
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 300
    iput v2, v1, Lcom/roblox/client/login/mvp/c;->c:I

    .line 301
    const-string v0, "FailureUnknownError"

    iput-object v0, v1, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    .line 305
    :goto_1
    const-string v0, "Android-AppLogin-Failure-400-BadRequest"

    iput-object v0, v1, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    .line 307
    return-object v1

    .line 284
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0

    .line 288
    :sswitch_0
    iput v2, v1, Lcom/roblox/client/login/mvp/c;->c:I

    .line 289
    const-string v0, "FailureServerError"

    iput-object v0, v1, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    goto :goto_1

    .line 292
    :sswitch_1
    const/16 v0, -0x7db

    iput v0, v1, Lcom/roblox/client/login/mvp/c;->c:I

    .line 293
    const-string v0, "FailureInvalidUsernamePassword"

    iput-object v0, v1, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    goto :goto_1

    .line 296
    :sswitch_2
    const/16 v0, -0x7dc

    iput v0, v1, Lcom/roblox/client/login/mvp/c;->c:I

    .line 297
    const-string v0, "FailureCredentialNotSupported"

    iput-object v0, v1, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    goto :goto_1

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 4

    .prologue
    const/16 v0, -0x7e6

    .line 315
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/roblox/client/login/mvp/d$b;->a:I

    .line 317
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 376
    :pswitch_0
    const/16 v0, -0x7da

    .line 377
    const-string v2, "FailureUnknownError"

    .line 378
    const-string v1, "Android-AppLogin-Failure-UnknownError"

    .line 382
    :goto_1
    new-instance v3, Lcom/roblox/client/login/mvp/c;

    invoke-direct {v3, v2, v1, v0}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 315
    :cond_0
    const/16 v1, 0x3e8

    goto :goto_0

    .line 319
    :pswitch_1
    iget v1, p0, Lcom/roblox/client/login/mvp/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/roblox/client/login/mvp/d;->a:I

    .line 322
    iget v1, p0, Lcom/roblox/client/login/mvp/d;->a:I

    invoke-static {}, Lcom/roblox/client/b;->ai()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 323
    invoke-interface {p2}, Lcom/roblox/client/login/mvp/d$a;->c()V

    .line 328
    :goto_2
    const-string v2, "FailureInvalidUsernamePassword"

    .line 329
    const-string v1, "Android-AppLogin-Failure-403-Credentials"

    goto :goto_1

    .line 326
    :cond_1
    const/16 v0, -0x7dd

    goto :goto_2

    .line 332
    :pswitch_2
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->f()V

    .line 333
    const/16 v0, -0x7e5

    .line 334
    const-string v2, "Captcha"

    .line 335
    const-string v1, "Android-AppLogin-Failure-403-Captcha"

    goto :goto_1

    .line 338
    :pswitch_3
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->f()V

    .line 339
    invoke-interface {p2}, Lcom/roblox/client/login/mvp/d$a;->b()V

    .line 341
    const-string v2, "FailureResetPasswordRequired"

    .line 342
    const-string v1, "Android-AppLogin-Failure-403-PasswordResetRequired"

    goto :goto_1

    .line 346
    :pswitch_4
    const/16 v0, -0x7de

    .line 347
    const-string v2, "FailureLoginNullPasswordSocialLogin"

    .line 348
    const-string v1, "Android-AppLogin-Failure-403-NullPassword"

    goto :goto_1

    .line 355
    :pswitch_5
    const/16 v0, -0x7df

    .line 356
    const-string v2, "FailureTwoStepVerification"

    .line 357
    const-string v1, "Android-AppLogin-Failure-403-TwoStepVerification"

    goto :goto_1

    .line 364
    :pswitch_6
    const/16 v0, -0x7e0

    .line 365
    const-string v2, "FailureDefaultLoginRequired"

    .line 366
    const-string v1, "Android-AppLogin-Failure-403-DefaultLoginRequired"

    goto :goto_1

    .line 370
    :pswitch_7
    const/16 v0, -0x7e1

    .line 371
    const-string v2, "FailureUnverifiedCredentials"

    .line 372
    const-string v1, "Android-AppLogin-Failure-403-UnverifiedCredentials"

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/d;Lorg/json/JSONObject;)Lcom/roblox/client/login/mvp/c;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/d;->a(Lorg/json/JSONObject;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/d;Lorg/json/JSONObject;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/login/mvp/d;->a(Lorg/json/JSONObject;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/roblox/client/login/mvp/c;
    .locals 4

    .prologue
    .line 393
    :try_start_0
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/q/d;->b(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/q/d;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "MissingUserInfo"

    const-string v2, "Android-AppLogin-Failure-UnknownError"

    const/16 v3, -0x7da

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 4

    .prologue
    .line 262
    const-string v0, "rbx.authlogin"

    const-string v1, "callLoginWithAuthV1(). errorCode=200. requires 2 step verification"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    const-string v0, "twoStepVerificationData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 265
    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    const-string v2, "mediaType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v2, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v0, v2}, Lcom/roblox/client/login/mvp/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string v0, "rbx.authlogin"

    const-string v1, "callLoginWithApi. Error parsing 2SV response."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    const-string v1, "Failure2SVJSON"

    const-string v2, "Android-AppLogin-Failure-UnknownError"

    const/16 v3, -0x7da

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->e:Lcom/roblox/client/util/m;

    invoke-virtual {v0}, Lcom/roblox/client/util/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    const-string v1, "user_logged_in_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "Email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/roblox/client/b;->bM()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "PhoneNumber"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/roblox/client/b;->bL()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/q/c;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Username"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/q/c;

    invoke-virtual {v0}, Lcom/roblox/client/q/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/d$a;)V
    .locals 5

    .prologue
    .line 117
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ctype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". pass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/q/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object p3, p0, Lcom/roblox/client/login/mvp/d;->b:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/roblox/client/login/mvp/d$1;

    invoke-direct {v0, p0, p4}, Lcom/roblox/client/login/mvp/d$1;-><init>(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$a;)V

    .line 232
    new-instance v1, Lcom/roblox/client/http/post/LoginAuthRequestBody;

    invoke-direct {v1, p1, p2, p3}, Lcom/roblox/client/http/post/LoginAuthRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v2, Lcom/roblox/client/http/h;

    invoke-direct {v2}, Lcom/roblox/client/http/h;-><init>()V

    .line 234
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->loginAuthUrlV1()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 233
    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/roblox/client/http/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 240
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/q/c;

    invoke-virtual {v0}, Lcom/roblox/client/q/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method e()V
    .locals 4

    .prologue
    .line 243
    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginOK."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/q/d;

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/i/h;->a(J)V

    .line 247
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/h;->a(Z)V

    .line 248
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/d;->g()V

    .line 249
    invoke-static {}, Lcom/roblox/client/q/c;->a()Lcom/roblox/client/q/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/q/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/login/mvp/d;->a:I

    .line 254
    return-void
.end method
