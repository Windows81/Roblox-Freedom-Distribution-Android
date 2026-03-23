.class public Lcom/roblox/client/signup/multiscreen/b/j;
.super Lcom/roblox/client/signup/multiscreen/b/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/b/h;Lcom/roblox/client/signup/multiscreen/b/n;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/signup/multiscreen/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/b/h;Lcom/roblox/client/signup/multiscreen/b/n;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->d:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 97
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "UnknownError"

    const-string v1, "Android-AppSignup-Validation-PasswordError"

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->h:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 88
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordDumb"

    const-string v1, "Android-AppSignup-Validation-PasswordDumb"

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->g:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 79
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordForbidden"

    const-string v1, "Android-AppSignup-Validation-PasswordForbidden"

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 70
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordMatchesUsername"

    const-string v1, "Android-AppSignup-Validation-PasswordMatchesUsername"

    goto :goto_0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->c:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 61
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordLengthShort"

    const-string v1, "Android-AppSignup-Validation-PasswordLengthShort"

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->f:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 52
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    const-string v0, "PasswordVipLength"

    const-string v1, "Android-AppSignup-Validation-PasswordRequirementsNotSatisfied"

    goto :goto_0

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    sget-object v2, Lcom/roblox/client/signup/multiscreen/a/d$a;->e:Lcom/roblox/client/signup/multiscreen/a/d$a;

    .line 43
    invoke-static {v1, v2}, Lcom/roblox/client/signup/multiscreen/a/d;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/d$a;)Lcom/roblox/client/signup/multiscreen/a/d;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    .line 47
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->g:Lcom/roblox/client/signup/multiscreen/b/n;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "Android-AppSignup-Validation-PasswordSuccess"

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/b/j;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-virtual {v2, v1}, Lcom/roblox/client/signup/multiscreen/b/h;->b(Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePasswordValidationResponse(int responseCode): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", diagCounterName: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rbx.signup"

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method a()Lcom/roblox/client/http/j;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/u;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1, v1, v1}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/j;->d:Lorg/json/JSONObject;

    const-string v1, "ErrorCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/multiscreen/b/j;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
