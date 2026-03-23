.class public Lcom/roblox/client/signup/a/a;
.super Lcom/roblox/client/signup/a/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$h;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a/f;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$h;)V

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

    .line 85
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordUnknownError:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a/a;->a(Ljava/lang/Integer;)V

    const-string v0, "UnknownError"

    const-string v1, "Android-AppSignup-Validation-PasswordError"

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordComplexity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a/a;->a(Ljava/lang/Integer;)V

    const-string v0, "PasswordDumb"

    const-string v1, "Android-AppSignup-Validation-PasswordDumb"

    goto :goto_0

    .line 73
    :cond_1
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordForbidden:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a/a;->a(Ljava/lang/Integer;)V

    const-string v0, "PasswordForbidden"

    const-string v1, "Android-AppSignup-Validation-PasswordForbidden"

    goto :goto_0

    .line 67
    :cond_2
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a/a;->a(Ljava/lang/Integer;)V

    const-string v0, "PasswordMatchesUsername"

    const-string v1, "Android-AppSignup-Validation-PasswordMatchesUsername"

    goto :goto_0

    .line 61
    :cond_3
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a/a;->a(Ljava/lang/Integer;)V

    const-string v0, "PasswordLengthShort"

    const-string v1, "Android-AppSignup-Validation-PasswordLengthShort"

    goto :goto_0

    .line 55
    :cond_4
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/a/a;->a(Ljava/lang/Integer;)V

    const-string v0, "PasswordVipLength"

    const-string v1, "Android-AppSignup-Validation-PasswordRequirementsNotSatisfied"

    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {p0}, Lcom/roblox/client/signup/a/a;->a()V

    const-string v0, ""

    const-string v1, "Android-AppSignup-Validation-PasswordSuccess"

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/signup/a/a;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v2, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 92
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
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 0

    .line 29
    invoke-static {p1, p2}, Lcom/roblox/client/u;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 30
    invoke-static {p1, p2, p2, p2}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p1

    return-object p1
.end method

.method public a(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string p1, "IsValid"

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "ErrorMessage"

    const-string v1, ""

    .line 36
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ValidPasswordApiResponse - isPasswordValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", errorMessage: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.signup"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ErrorCode"

    const/4 v0, -0x1

    .line 40
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a/a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
