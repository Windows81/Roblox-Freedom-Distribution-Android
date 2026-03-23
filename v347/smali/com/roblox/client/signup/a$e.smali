.class Lcom/roblox/client/signup/a$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/signup/a$f;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lorg/json/JSONObject;

.field final synthetic f:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$f;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 976
    iput-object p1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 949
    iput-object v0, p0, Lcom/roblox/client/signup/a$e;->b:Ljava/lang/String;

    .line 950
    iput-object v0, p0, Lcom/roblox/client/signup/a$e;->c:Ljava/lang/String;

    .line 951
    iput-object v0, p0, Lcom/roblox/client/signup/a$e;->d:Ljava/lang/String;

    .line 952
    iput-object v0, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    .line 977
    iput-object p2, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    .line 978
    const-string v0, ""

    .line 979
    const-string v1, "NotUTF8"

    .line 981
    :try_start_0
    const-string v0, "username"

    .line 982
    invoke-static {p1}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/signup/a$e;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :try_start_1
    const-string v0, "password"

    .line 992
    invoke-static {p1}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/signup/a$e;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 998
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v2

    .line 984
    invoke-static {p1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v2

    const v3, 0x7f0e00e0

    invoke-static {p1, v2, v3}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 985
    const-string v2, "SignUpPreValidation"

    invoke-direct {p0}, Lcom/roblox/client/signup/a$e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EncodingError"

    invoke-static {v2, v3, v4}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v2, "signup"

    invoke-static {v2, v0, v1, v5}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 993
    :catch_1
    move-exception v2

    .line 994
    iget-object v2, p1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v3, 0x7f0e00cb

    invoke-static {p1, v2, v3}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 995
    const-string v2, "SignUpPreValidation"

    invoke-direct {p0}, Lcom/roblox/client/signup/a$e;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EncodingError"

    invoke-static {v2, v3, v4}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, "signup"

    invoke-static {v2, v0, v1, v5}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v1, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v0, v1, :cond_0

    const-string v0, "Username"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Password"

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1125
    const-string v1, ""

    .line 1128
    packed-switch p1, :pswitch_data_0

    .line 1171
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1172
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00cf

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1173
    const-string v1, "UnknownError"

    .line 1174
    const-string v0, "Android-AppSignup-Validation-PasswordError"

    .line 1177
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 1178
    const-string v2, "rbx.signup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePasswordValidationResponse(int responseCode): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", diagCounterName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-object v1

    .line 1130
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v2, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1131
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v2, v2, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1132
    const-string v0, "Android-AppSignup-Validation-PasswordSuccess"

    goto :goto_0

    .line 1136
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1137
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00d0

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1138
    const-string v1, "PasswordVipLength"

    .line 1139
    const-string v0, "Android-AppSignup-Validation-PasswordRequirementsNotSatisfied"

    goto :goto_0

    .line 1143
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1144
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00d6

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1145
    const-string v1, "PasswordLengthShort"

    .line 1146
    const-string v0, "Android-AppSignup-Validation-PasswordLengthShort"

    goto :goto_0

    .line 1150
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1151
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00cc

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1152
    const-string v1, "PasswordMatchesUsername"

    .line 1153
    const-string v0, "Android-AppSignup-Validation-PasswordMatchesUsername"

    goto/16 :goto_0

    .line 1157
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1158
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00ca

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1159
    const-string v1, "PasswordForbidden"

    .line 1160
    const-string v0, "Android-AppSignup-Validation-PasswordForbidden"

    goto/16 :goto_0

    .line 1164
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1165
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00c9

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1166
    const-string v1, "PasswordDumb"

    .line 1167
    const-string v0, "Android-AppSignup-Validation-PasswordDumb"

    goto/16 :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private b(I)Ljava/lang/String;
    .locals 6

    .prologue
    const v2, 0x7f0e00e5

    .line 1189
    const-string v0, ""

    .line 1190
    const-string v3, "Username"

    .line 1192
    packed-switch p1, :pswitch_data_0

    .line 1285
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1286
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1287
    const-string v2, "UnknownError"

    .line 1288
    const-string v1, "Android-AppSignup-Validation-UsernameUnknownError"

    .line 1289
    const-string v0, "UnknownError"

    .line 1293
    :goto_0
    const-string v4, "SignUpPreValidation"

    invoke-static {v4, v3, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v3}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 1295
    const-string v3, "rbx.signup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "analyticsLabel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", diagCounterName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-object v0

    .line 1194
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v2, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    invoke-static {v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1195
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v2

    const v4, 0x7f0e00c7

    invoke-static {v1, v2, v4}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1196
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->f(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$a;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/roblox/client/signup/UsernameSignUpEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1198
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->i()V

    .line 1199
    const-string v2, "Success"

    .line 1200
    const-string v1, "Android-AppSignup-Validation-UsernameSuccess"

    goto :goto_0

    .line 1204
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00db

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1205
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->h()V

    .line 1206
    const-string v2, "Taken"

    .line 1207
    const-string v1, "Android-AppSignup-Validation-UsernameTaken"

    .line 1208
    const-string v0, "UsernameTaken"

    goto/16 :goto_0

    .line 1212
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00de

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1213
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1214
    const-string v2, "Explicit"

    .line 1215
    const-string v1, "Android-AppSignup-Validation-UsernameExplicit"

    .line 1216
    const-string v0, "UsernameModerated"

    goto/16 :goto_0

    .line 1220
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00e2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1221
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1222
    const-string v2, "InvalidLength"

    .line 1223
    const-string v1, "Android-AppSignup-Validation-UsernameInvalidLength"

    .line 1224
    const-string v0, "UsernameInvalidLength"

    goto/16 :goto_0

    .line 1228
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00e1

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1229
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1230
    const-string v2, "StartingOrEndingWithUnderscore"

    .line 1231
    const-string v1, "Android-AppSignup-Validation-UsernameStartingOrEndingWithUnderscore"

    .line 1232
    const-string v0, "StartingOrEndingWithUnderscore"

    goto/16 :goto_0

    .line 1236
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00e4

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1237
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1238
    const-string v2, "MoreThanOneUnderscore"

    .line 1239
    const-string v1, "Android-AppSignup-Validation-UsernameContainsMoreThanOneUnderscore"

    .line 1240
    const-string v0, "MoreThanOneUnderscore"

    goto/16 :goto_0

    .line 1244
    :pswitch_7
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00dc

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1245
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1246
    const-string v2, "ContainSpaces"

    .line 1247
    const-string v1, "Android-AppSignup-Validation-UsernameContainsSpaces"

    .line 1248
    const-string v0, "ContainSpaces"

    goto/16 :goto_0

    .line 1252
    :pswitch_8
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00dd

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1253
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1254
    const-string v2, "ContainInvalidCharacters"

    .line 1255
    const-string v1, "Android-AppSignup-Validation-UsernameContainsInvalidCharacters"

    .line 1256
    const-string v0, "ContainInvalidCharacters"

    goto/16 :goto_0

    .line 1260
    :pswitch_9
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00d2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1261
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1262
    const-string v2, "UsernameIsNull"

    .line 1263
    const-string v1, "Android-AppSignup-Validation-UsernameIsNull"

    .line 1264
    const-string v0, "UsernameIsNull"

    goto/16 :goto_0

    .line 1268
    :pswitch_a
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00e3

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1269
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1270
    const-string v2, "ContainsPII"

    .line 1271
    const-string v1, "Android-AppSignup-Validation-UsernameContainsPII"

    .line 1272
    const-string v0, "ContainsPII"

    goto/16 :goto_0

    .line 1276
    :pswitch_b
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1277
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    .line 1278
    const-string v2, "InvalidBirthDate"

    .line 1279
    const-string v1, "Android-AppSignup-Validation-UsernameHasInvalidBirthDate"

    .line 1280
    const-string v0, "InvalidBirthDate"

    goto/16 :goto_0

    .line 1192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1002
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v1, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v0, v1, :cond_1

    const-string v0, "username"

    .line 1003
    :goto_0
    const-string v1, ""

    .line 1005
    invoke-virtual {p0}, Lcom/roblox/client/signup/a$e;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    :cond_0
    :goto_1
    return-object v5

    .line 1002
    :cond_1
    const-string v0, "password"

    goto :goto_0

    .line 1009
    :cond_2
    sget-object v2, Lcom/roblox/client/signup/a$21;->a:[I

    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    invoke-virtual {v3}, Lcom/roblox/client/signup/a$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1021
    :goto_2
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1024
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1034
    const-string v2, "signup"

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1012
    :pswitch_0
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->B(Lcom/roblox/client/signup/a;)I

    move-result v2

    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v3}, Lcom/roblox/client/signup/a;->C(Lcom/roblox/client/signup/a;)I

    move-result v3

    iget-object v4, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v4}, Lcom/roblox/client/signup/a;->A(Lcom/roblox/client/signup/a;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/e;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/util/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/roblox/client/RobloxSettings;->usernameCheckUrlXBOX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v5}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/signup/a$e;->d:Ljava/lang/String;

    goto :goto_2

    .line 1017
    :pswitch_1
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/roblox/client/RobloxSettings;->passwordCheckUrlXBOX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v5}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/signup/a$e;->d:Ljava/lang/String;

    goto :goto_2

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    const-string v1, "ValidationJSONException"

    goto :goto_3

    .line 1030
    :cond_3
    const-string v1, "NoResponse"

    goto :goto_3

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 8

    .prologue
    const v4, 0x7f0e00c4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 1042
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1044
    invoke-direct {p0}, Lcom/roblox/client/signup/a$e;->a()Ljava/lang/String;

    move-result-object v2

    .line 1048
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v1, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->G(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$e;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 1049
    const-string v0, "SignUpPreValidation"

    const-string v1, "UsernameRace"

    invoke-static {v0, v2, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v1, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v0, v1, :cond_1

    const-string v0, "username"

    .line 1055
    :goto_1
    const-string v1, ""

    .line 1057
    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-virtual {v3}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1059
    const-string v1, "WindowClosed"

    .line 1060
    const-string v3, "signup"

    invoke-static {v3, v0, v1, v7}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1061
    const-string v0, "SignUpPreValidation"

    const-string v1, "ActivityNull"

    invoke-static {v0, v2, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :cond_1
    const-string v0, "password"

    goto :goto_1

    .line 1065
    :cond_2
    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->d:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 1066
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/a;->alertIfNetworkNotConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1067
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-virtual {v1, v4}, Lcom/roblox/client/signup/a;->alertOk(I)V

    .line 1069
    :cond_3
    const-string v1, "SignUpPreValidation"

    const-string v3, "ResponseNull"

    invoke-static {v1, v2, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v2

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v3, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v1, v3, :cond_6

    const-string v1, "Android-AppSignup-Validation-UsernameResponseNull"

    :goto_2
    invoke-virtual {v2, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 1074
    const-string v1, "NoResponse"

    .line 1085
    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1086
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v3, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v2, v3, :cond_5

    .line 1088
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    sget-object v3, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    invoke-static {v2, v3}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 1089
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v3}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1091
    :cond_5
    const-string v2, "signup"

    invoke-static {v2, v0, v1, v7}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1070
    :cond_6
    const-string v1, "Android-AppSignup-Validation-PasswordResponseNull"

    goto :goto_2

    .line 1075
    :cond_7
    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    .line 1076
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-virtual {v1, v4}, Lcom/roblox/client/signup/a;->alertOk(I)V

    .line 1077
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->f:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v3

    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    sget-object v4, Lcom/roblox/client/signup/a$f;->a:Lcom/roblox/client/signup/a$f;

    if-ne v1, v4, :cond_8

    const-string v1, "Android-AppSignup-Validation-UsernameJsonNull"

    :goto_4
    invoke-virtual {v3, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 1081
    const-string v1, "SignUpPreValidation"

    const-string v3, "JsonNull"

    invoke-static {v1, v2, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v1, "JSONParseFailure"

    goto :goto_3

    .line 1077
    :cond_8
    const-string v1, "Android-AppSignup-Validation-PasswordJsonNull"

    goto :goto_4

    .line 1095
    :cond_9
    sget-object v2, Lcom/roblox/client/signup/a$21;->a:[I

    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$f;

    invoke-virtual {v3}, Lcom/roblox/client/signup/a$f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1117
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1118
    const-string v1, "signup"

    invoke-static {v1, v0, v7}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1097
    :pswitch_0
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    const-string v2, "IsValid"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1098
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    const-string v3, "ErrorMessage"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    iget-object v3, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    const-string v4, "ErrorCode"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 1101
    const-string v4, "rbx.signup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsernameValid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", errorMessage: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", responseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct {p0, v3}, Lcom/roblox/client/signup/a$e;->b(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1106
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    const-string v2, "IsValid"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1107
    iget-object v2, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    const-string v3, "ErrorMessage"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    const-string v3, "rbx.signup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ValidPasswordApiResponse - isPasswordValid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", errorMessage: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/roblox/client/signup/a$e;->e:Lorg/json/JSONObject;

    const-string v2, "ErrorCode"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1112
    invoke-direct {p0, v1}, Lcom/roblox/client/signup/a$e;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 1120
    :cond_a
    const-string v2, "signup"

    invoke-static {v2, v0, v1, v7}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 945
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a$e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 945
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/a$e;->a(Ljava/lang/Void;)V

    return-void
.end method
