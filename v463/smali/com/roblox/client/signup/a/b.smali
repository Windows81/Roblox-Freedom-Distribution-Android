.class public Lcom/roblox/client/signup/a/b;
.super Lcom/roblox/client/signup/a/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a/e;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 9

    const-string v0, "InvalidBirthDate"

    const-string v1, "ContainsPII"

    const-string v2, "UsernameIsNull"

    const-string v3, "UnknownError"

    const-string v4, "ContainInvalidCharacters"

    const-string v5, "ContainSpaces"

    const-string v6, "MoreThanOneUnderscore"

    const-string v7, "StartingOrEndingWithUnderscore"

    packed-switch p1, :pswitch_data_0

    .line 137
    :pswitch_0
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameUnknownError"

    move-object v0, v3

    goto :goto_0

    .line 129
    :pswitch_1
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameHasInvalidBirthDate"

    goto :goto_0

    .line 122
    :pswitch_2
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernamePrivateInfo:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsPII"

    move-object v0, v1

    goto/16 :goto_1

    .line 115
    :pswitch_3
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterUsername:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameIsNull"

    move-object v0, v2

    goto :goto_0

    .line 108
    :pswitch_4
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameContainsInvalidCharacters:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsInvalidCharacters"

    move-object v0, v4

    goto :goto_0

    .line 101
    :pswitch_5
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsSpaces"

    move-object v0, v5

    goto :goto_0

    .line 94
    :pswitch_6
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameTooManyUnderscores:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsMoreThanOneUnderscore"

    move-object v0, v6

    goto :goto_0

    .line 87
    :pswitch_7
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameStartingOrEndingWithUnderscore"

    move-object v0, v7

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 80
    :pswitch_8
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string v0, "InvalidLength"

    const-string p1, "Android-AppSignup-Validation-UsernameInvalidLength"

    const-string v1, "UsernameInvalidLength"

    goto :goto_1

    .line 73
    :pswitch_9
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameExplicit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->a(Ljava/lang/Integer;)V

    const-string v0, "Explicit"

    const-string p1, "Android-AppSignup-Validation-UsernameExplicit"

    const-string v1, "UsernameModerated"

    goto :goto_1

    .line 66
    :pswitch_a
    invoke-virtual {p0}, Lcom/roblox/client/signup/a/b;->a()V

    const-string v0, "Taken"

    const-string p1, "Android-AppSignup-Validation-UsernameTaken"

    const-string v1, "UsernameTaken"

    goto :goto_1

    .line 60
    :pswitch_b
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_LooksGreat:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/b;->b(Ljava/lang/Integer;)V

    const-string v0, ""

    const-string p1, "Success"

    const-string v1, "Android-AppSignup-Validation-UsernameSuccess"

    move-object v8, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v8

    :goto_1
    const-string v2, "SignUpPreValidation"

    const-string v3, "Username"

    .line 144
    invoke-static {v2, v3, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/roblox/client/signup/a/b;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v2, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyticsLabel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", diagCounterName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.signup"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 0

    .line 37
    invoke-static {p1, p2}, Lcom/roblox/client/u;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 38
    invoke-static {p1, p2, p2, p2}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p1

    return-object p1
.end method

.method public a(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string p1, "IsValid"

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "ErrorMessage"

    const-string v1, ""

    .line 44
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ErrorCode"

    const/4 v2, -0x1

    .line 45
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsernameValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", errorMessage: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.signup"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/a/b;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
