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

.field private c:Lcom/roblox/client/ad/c;

.field private d:Lcom/roblox/client/ad/b;

.field private e:Lcom/roblox/client/ae/s;


# direct methods
.method constructor <init>(Lcom/roblox/client/ad/c;Lcom/roblox/client/ad/b;Lcom/roblox/client/ae/s;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/roblox/client/login/mvp/d;->a:I

    .line 73
    iput-object p1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/ad/c;

    .line 74
    iput-object p2, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/ad/b;

    .line 75
    iput-object p3, p0, Lcom/roblox/client/login/mvp/d;->e:Lcom/roblox/client/ae/s;

    return-void
.end method

.method private a(Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;
    .locals 3

    .line 284
    new-instance v0, Lcom/roblox/client/login/mvp/c;

    invoke-direct {v0}, Lcom/roblox/client/login/mvp/c;-><init>()V

    if-eqz p1, :cond_0

    .line 286
    iget p1, p1, Lcom/roblox/client/login/mvp/d$b;->a:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    const/16 v1, -0x7da

    if-eqz p1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    .line 302
    iput v1, v0, Lcom/roblox/client/login/mvp/c;->c:I

    const-string p1, "FailureUnknownError"

    .line 303
    iput-object p1, v0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/16 p1, -0x7dc

    .line 298
    iput p1, v0, Lcom/roblox/client/login/mvp/c;->c:I

    const-string p1, "FailureCredentialNotSupported"

    .line 299
    iput-object p1, v0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/16 p1, -0x7db

    .line 294
    iput p1, v0, Lcom/roblox/client/login/mvp/c;->c:I

    const-string p1, "FailureInvalidUsernamePassword"

    .line 295
    iput-object p1, v0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    goto :goto_1

    .line 290
    :cond_3
    iput v1, v0, Lcom/roblox/client/login/mvp/c;->c:I

    const-string p1, "FailureServerError"

    .line 291
    iput-object p1, v0, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    :goto_1
    const-string p1, "Android-AppLogin-Failure-400-BadRequest"

    .line 307
    iput-object p1, v0, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 2

    if-eqz p1, :cond_0

    .line 317
    iget p1, p1, Lcom/roblox/client/login/mvp/d$b;->a:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    const/16 v0, -0x7e6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/16 p2, 0x9

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    const/16 p2, 0xe

    if-eq p1, p2, :cond_1

    const/16 v0, -0x7da

    const-string p1, "FailureUnknownError"

    const-string p2, "Android-AppLogin-Failure-UnknownError"

    goto :goto_2

    :cond_1
    const/16 v0, -0x7e7

    const-string p1, "FailureLuobuUser"

    const-string p2, "Android-AppLogin-Failure-403-LuobuUser"

    goto :goto_2

    :cond_2
    const/16 v0, -0x7e1

    const-string p1, "FailureUnverifiedCredentials"

    const-string p2, "Android-AppLogin-Failure-403-UnverifiedCredentials"

    goto :goto_2

    :cond_3
    const/16 v0, -0x7e0

    const-string p1, "FailureDefaultLoginRequired"

    const-string p2, "Android-AppLogin-Failure-403-DefaultLoginRequired"

    goto :goto_2

    :cond_4
    const/16 v0, -0x7df

    const-string p1, "FailureTwoStepVerification"

    const-string p2, "Android-AppLogin-Failure-403-TwoStepVerification"

    goto :goto_2

    :cond_5
    const/16 v0, -0x7de

    const-string p1, "FailureLoginNullPasswordSocialLogin"

    const-string p2, "Android-AppLogin-Failure-403-NullPassword"

    goto :goto_2

    .line 340
    :cond_6
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->e()V

    .line 341
    invoke-interface {p2}, Lcom/roblox/client/login/mvp/d$a;->b()V

    const-string p1, "FailureResetPasswordRequired"

    const-string p2, "Android-AppLogin-Failure-403-PasswordResetRequired"

    goto :goto_2

    .line 334
    :cond_7
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->e()V

    const/16 v0, -0x7e5

    const-string p1, "Captcha"

    const-string p2, "Android-AppLogin-Failure-403-Captcha"

    goto :goto_2

    .line 321
    :cond_8
    iget p1, p0, Lcom/roblox/client/login/mvp/d;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/roblox/client/login/mvp/d;->a:I

    .line 324
    invoke-static {}, Lcom/roblox/client/b;->J()I

    move-result v1

    if-le p1, v1, :cond_9

    .line 325
    invoke-interface {p2}, Lcom/roblox/client/login/mvp/d$a;->c()V

    goto :goto_1

    :cond_9
    const/16 p1, -0x7dd

    const/16 v0, -0x7dd

    :goto_1
    const-string p1, "FailureInvalidUsernamePassword"

    const-string p2, "Android-AppLogin-Failure-403-Credentials"

    .line 390
    :goto_2
    new-instance v1, Lcom/roblox/client/login/mvp/c;

    invoke-direct {v1, p1, p2, v0}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d$b;)Lcom/roblox/client/login/mvp/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/login/mvp/d;->a(Lcom/roblox/client/login/mvp/d$b;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->e:Lcom/roblox/client/ae/s;

    invoke-virtual {v0}, Lcom/roblox/client/ae/s;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "user_logged_in_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/roblox/client/login/mvp/c;
    .locals 3

    :try_start_0
    const-string v0, "user"

    .line 401
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/ad/c;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/ad/c;->b(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/ad/c;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ad/c;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 405
    :catch_0
    new-instance p1, Lcom/roblox/client/login/mvp/c;

    const/16 v0, -0x7da

    const-string v1, "MissingUserInfo"

    const-string v2, "Android-AppLogin-Failure-UnknownError"

    invoke-direct {p1, v1, v2, v0}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;Lcom/roblox/client/login/mvp/d$a;)Lcom/roblox/client/login/mvp/c;
    .locals 3

    const-string v0, "rbx.authlogin"

    const-string v1, "callLoginWithAuthV1(). errorCode=200. requires 2 step verification"

    .line 264
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "twoStepVerificationData"

    .line 266
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "ticket"

    .line 267
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaType"

    .line 268
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    iget-object v2, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/ad/c;

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, p1, v2}, Lcom/roblox/client/login/mvp/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    const-string p1, "callLoginWithApi. Error parsing 2SV response."

    .line 272
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance p1, Lcom/roblox/client/login/mvp/c;

    const/16 p2, -0x7da

    const-string v0, "Failure2SVJSON"

    const-string v1, "Android-AppLogin-Failure-UnknownError"

    invoke-direct {p1, v0, v1, p2}, Lcom/roblox/client/login/mvp/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method a()Ljava/lang/String;
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Email"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/roblox/client/b;->aO()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "PhoneNumber"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/roblox/client/b;->aN()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/ad/b;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/ad/c;

    invoke-virtual {v1}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Username"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/ad/b;

    invoke-virtual {v0}, Lcom/roblox/client/ad/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/ad/b;

    invoke-virtual {v0, p2, p1}, Lcom/roblox/client/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p3, p0, Lcom/roblox/client/login/mvp/d;->b:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/d$a;)V
    .locals 7

    .line 122
    invoke-virtual {p0, p2, p1, p3}, Lcom/roblox/client/login/mvp/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/roblox/client/login/mvp/d$1;

    invoke-direct {v0, p0, p6}, Lcom/roblox/client/login/mvp/d$1;-><init>(Lcom/roblox/client/login/mvp/d;Lcom/roblox/client/login/mvp/d$a;)V

    .line 234
    new-instance p6, Lcom/roblox/client/http/post/LoginAuthRequestBody;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/http/post/LoginAuthRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance p1, Lcom/roblox/client/http/h;

    invoke-direct {p1}, Lcom/roblox/client/http/h;-><init>()V

    .line 236
    invoke-static {}, Lcom/roblox/client/u;->B()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 235
    invoke-virtual {p1, p2, p6, p3, v0}, Lcom/roblox/client/http/h;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->d:Lcom/roblox/client/ad/b;

    invoke-virtual {v0}, Lcom/roblox/client/ad/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/roblox/client/login/mvp/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()V
    .locals 3

    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginOK."

    .line 245
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/mvp/d;->c:Lcom/roblox/client/ad/c;

    invoke-virtual {v1}, Lcom/roblox/client/ad/c;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/h;->a(J)V

    .line 249
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/h;->a(Z)V

    .line 250
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/d;->f()V

    .line 251
    invoke-static {}, Lcom/roblox/client/ad/b;->a()Lcom/roblox/client/ad/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ad/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method e()V
    .locals 1

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/roblox/client/login/mvp/d;->a:I

    return-void
.end method
