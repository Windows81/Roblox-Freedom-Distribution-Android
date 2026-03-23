.class public Lcom/roblox/client/signup/multiscreen/b/l;
.super Lcom/roblox/client/signup/multiscreen/b/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/b/h;Lcom/roblox/client/signup/multiscreen/b/n;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/signup/multiscreen/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/b/h;Lcom/roblox/client/signup/multiscreen/b/n;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->d:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 135
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "UnknownError"

    const-string v1, "Android-AppSignup-Validation-PasswordError"

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->h:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 127
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordDumb"

    const-string v1, "Android-AppSignup-Validation-PasswordDumb"

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->g:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 119
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordForbidden"

    const-string v1, "Android-AppSignup-Validation-PasswordForbidden"

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 111
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordMatchesUsername"

    const-string v1, "Android-AppSignup-Validation-PasswordMatchesUsername"

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->c:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 103
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordLengthShort"

    const-string v1, "Android-AppSignup-Validation-PasswordLengthShort"

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->e:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 95
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    .line 99
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "Android-AppSignup-Validation-PasswordSuccess"

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/l;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-virtual {v2, v1}, Lcom/roblox/client/signup/multiscreen/b/h;->b(Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePasswordApiErrorCode(int subCode): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", diagCounterName: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rbx.signup"

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 41
    iget v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->e:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->d:Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 43
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/multiscreen/b/l;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    iget v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->e:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/b/l;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->d:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 48
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    .line 52
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    const-string v1, "Android-AppSignup-Validation-PasswordError"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/h;->b(Ljava/lang/String;)V

    const-string v0, "UnknownError"

    :goto_0
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 8

    const-string v0, "Android-AppSignup-Validation-PasswordError"

    const-string v1, "UnknownError"

    .line 60
    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->d:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/l;->d:Lorg/json/JSONObject;

    const-string v4, "errors"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 64
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 65
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "code"

    const/4 v7, -0x1

    .line 67
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const-string v0, "Android-AppSignup-Validation-PasswordUsernameRequired"

    const-string v1, "Username/PhoneNumber/Email is required"

    .line 71
    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->k:Lcom/roblox/client/signup/multiscreen/a/d$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 78
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/l;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v4, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    .line 81
    invoke-static {v4, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v2

    .line 80
    invoke-virtual {v3, v2}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    .line 84
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/l;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-virtual {v2, v0}, Lcom/roblox/client/signup/multiscreen/b/h;->b(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method a()Lcom/roblox/client/http/j;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/u;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1, v1, v1}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/b/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
