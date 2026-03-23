.class public Lcom/roblox/client/signup/a/d;
.super Lcom/roblox/client/signup/a/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/a/e;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/signup/a$d;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 8

    const/16 v0, 0xa

    const-string v1, "ContainsPII"

    const-string v2, "UnknownError"

    const-string v3, "ContainInvalidCharacters"

    const-string v4, "ContainSpaces"

    const-string v5, "MoreThanOneUnderscore"

    const-string v6, "StartingOrEndingWithUnderscore"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 176
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameUnknownError"

    move-object v0, v2

    goto :goto_0

    .line 155
    :pswitch_0
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameContainsInvalidCharacters:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsInvalidCharacters"

    move-object v0, v3

    goto :goto_0

    .line 148
    :pswitch_1
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsSpaces"

    move-object v0, v4

    goto :goto_0

    .line 141
    :pswitch_2
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameTooManyUnderscores:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsMoreThanOneUnderscore"

    move-object v0, v5

    goto :goto_0

    .line 134
    :pswitch_3
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameStartingOrEndingWithUnderscore"

    move-object v0, v6

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 127
    :pswitch_4
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string v1, "InvalidLength"

    const-string p1, "Android-AppSignup-Validation-UsernameInvalidLength"

    const-string v0, "UsernameInvalidLength"

    goto :goto_1

    .line 120
    :pswitch_5
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameExplicit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string v1, "Explicit"

    const-string p1, "Android-AppSignup-Validation-UsernameExplicit"

    const-string v0, "UsernameModerated"

    goto :goto_1

    .line 113
    :pswitch_6
    invoke-virtual {p0}, Lcom/roblox/client/signup/a/d;->a()V

    const-string v1, "Taken"

    const-string p1, "Android-AppSignup-Validation-UsernameTaken"

    const-string v0, "UsernameTaken"

    goto :goto_1

    .line 107
    :pswitch_7
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_LooksGreat:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->b(Ljava/lang/Integer;)V

    const-string v1, ""

    const-string p1, "Success"

    const-string v0, "Android-AppSignup-Validation-UsernameSuccess"

    move-object v7, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_1

    .line 169
    :cond_0
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameExplicit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string v1, "Reserved"

    const-string p1, "Android-AppSignup-Validation-UsernameReserved"

    const-string v0, "UsernameReserved"

    goto :goto_1

    .line 162
    :cond_1
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernamePrivateInfo:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "Android-AppSignup-Validation-UsernameContainsPII"

    move-object v0, v1

    :goto_1
    const-string v2, "SignUpPreValidation"

    const-string v3, "Username"

    .line 183
    invoke-static {v2, v3, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/roblox/client/signup/a/d;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v2, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "analyticsLabel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", diagCounterName: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rbx.signup"

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    const-string v0, "UnknownError"

    .line 62
    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    const-string v2, "Android-AppSignup-Validation-UsernameUnknownError"

    :try_start_0
    const-string v3, "errors"

    .line 67
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 70
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "code"

    const/4 v6, -0x1

    .line 72
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 74
    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameRequired:I

    const-string v2, "Android-AppSignup-Validation-UsernameRequiredError"

    const-string p1, "Username is required"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "UsernameRequired"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 80
    :try_start_2
    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_BirthdayMustBeSetFirst:I

    const-string v2, "Android-AppSignup-Validation-UsernameBirthDateRequired"

    const-string p1, "Birthday is required"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v0, "BirthdayRequired"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_2
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_4

    :catch_1
    move-exception v3

    move-object p1, v0

    .line 90
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string v1, "SignUpPreValidation"

    const-string v3, "Username"

    .line 94
    invoke-static {v1, v3, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/roblox/client/signup/a/d;->a:Lcom/roblox/client/s/f;

    invoke-virtual {v0, v2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/http/j;
    .locals 0

    .line 40
    invoke-static {p1, p2, p3}, Lcom/roblox/client/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 41
    invoke-static {p1, p2, p2, p2}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p1

    return-object p1
.end method

.method public a(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "UnknownError"

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    const/4 p1, -0x1

    const-string v0, "code"

    .line 48
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 49
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x190

    if-ne p1, v1, :cond_1

    .line 51
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/a/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a/d;->a(Ljava/lang/Integer;)V

    const-string p1, "SignUpPreValidation"

    const-string p2, "Username"

    .line 54
    invoke-static {p1, p2, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/roblox/client/signup/a/d;->a:Lcom/roblox/client/s/f;

    const-string p2, "Android-AppSignup-Validation-UsernameUnknownError"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
