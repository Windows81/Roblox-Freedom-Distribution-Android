.class Lcom/roblox/client/signup/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method private constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$1;)V
    .locals 0

    .line 1181
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a$c;-><init>(Lcom/roblox/client/signup/a;)V

    return-void
.end method

.method private a(IJ)V
    .locals 2

    .line 1205
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/roblox/client/s/h;->a(Ljava/lang/String;J)V

    .line 1206
    iget-object p2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object p2, p2, Lcom/roblox/client/signup/a;->ax:Lcom/roblox/client/signup/a$b;

    iget-object p3, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {p3}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/roblox/client/signup/a$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-static {p1}, Lcom/roblox/client/s/f;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a$c;IJ)V
    .locals 0

    .line 1181
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/signup/a$c;->a(IJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/signup/f;)V
    .locals 11

    .line 1185
    iget-wide v0, p1, Lcom/roblox/client/signup/f;->g:J

    .line 1188
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->z(Lcom/roblox/client/signup/a;)Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/abtesting/a;->b(J)V

    .line 1189
    invoke-static {}, Lcom/roblox/client/b;->bP()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/roblox/client/signup/f;->h:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 1190
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/l;->h()Lcom/roblox/client/game/i;

    move-result-object v2

    iget-wide v3, p1, Lcom/roblox/client/signup/f;->h:J

    .line 1192
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "SignUp"

    .line 1191
    invoke-static/range {v5 .. v10}, Lcom/roblox/client/game/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/roblox/client/game/h;

    move-result-object v3

    .line 1190
    invoke-virtual {v2, v3}, Lcom/roblox/client/game/i;->a(Lcom/roblox/client/game/h;)V

    .line 1195
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->z(Lcom/roblox/client/signup/a;)Lcom/roblox/abtesting/a;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/signup/a$c$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/roblox/client/signup/a$c$1;-><init>(Lcom/roblox/client/signup/a$c;Lcom/roblox/client/signup/f;J)V

    invoke-virtual {v2, v3}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method public b(Lcom/roblox/client/signup/f;)V
    .locals 13

    const-string v0, "Captcha"

    const-string v1, "FailureUnknownError"

    const-string v2, "Android-AppSignup-UnknownError"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 1215
    iget-object p1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->A(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1216
    new-instance p1, Lcom/roblox/client/signup/f;

    invoke-direct {p1}, Lcom/roblox/client/signup/f;-><init>()V

    .line 1217
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    .line 1218
    iput-object v2, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 1220
    :cond_0
    iget-object v4, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object v1

    .line 1228
    iget-object v4, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UsernameTaken"

    .line 1230
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1231
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v4

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameAlreadyInUse:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v1, "FailureAlreadyTaken"

    .line 1232
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-UsernameTaken"

    .line 1233
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v5, "UsernameContainsInvalidCharacters"

    .line 1234
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1235
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v2

    iget-object v4, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v4}, Lcom/roblox/client/signup/a;->B(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v1, "FailureInvalidCharacters"

    .line 1236
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-UsernameInvalidChars"

    .line 1237
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v5, "UsernameCannotContainSpaces"

    .line 1238
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1239
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v4

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v1, "FailureContainsSpaces"

    .line 1240
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-UsernameWithSpaces"

    .line 1241
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v5, "UsernameInvalid"

    .line 1242
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1243
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v4

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalid:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v1, "FailureInvalidUsername"

    .line 1244
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-UsernameInvalid"

    .line 1245
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v5, "BirthdayInvalid"

    .line 1246
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1248
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->aw:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxBirthdayPicker;->a()V

    const-string v1, "FailureInvalidBirthday"

    .line 1249
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-InvalidBirthday"

    .line 1250
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v5, "GenderInvalid"

    .line 1251
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1252
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxGenderPicker;->a()V

    const-string v1, "FailureInvalidGender"

    .line 1253
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-InvalidGender"

    .line 1254
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v5, "PasswordInvalid"

    .line 1255
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1256
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v4, v2, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordRequirements:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const-string v1, "FailureInvalidPassword"

    .line 1257
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-PasswordInvalid"

    .line 1258
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 1259
    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v1, :cond_9

    .line 1261
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->C(Lcom/roblox/client/signup/a;)V

    :cond_9
    const-string v1, "FailureAccountCreateFloodcheck"

    .line 1263
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-Captcha"

    .line 1264
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v5, "StatusJsonError"

    .line 1265
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1266
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->D(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    const-string v1, "FailureJSONParse"

    .line 1267
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-JsonError"

    .line 1268
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v5, "StatusThrottled"

    .line 1269
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1270
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/a;->as()V

    const-string v1, "FailureStatusThrottled"

    .line 1271
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-Throttled"

    .line 1272
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v5, "StatusServerError"

    .line 1273
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1274
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->E(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    const-string v1, "FailureServerError"

    .line 1275
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-ServerError"

    .line 1276
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string v5, "StatusUserIdInvalid"

    .line 1277
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1278
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->E(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    const-string v1, "MissingUserInfo"

    .line 1279
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-UserIdInvalid"

    .line 1280
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const-string v5, "PasswordMatchesUsername"

    .line 1281
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1282
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v4, v2, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v6, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1284
    iput-object v5, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-PasswordMatchesUsername"

    .line 1285
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_1

    :cond_f
    const-string v5, "DumbPassword"

    .line 1286
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1287
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v4, v2, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    sget v6, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordComplexity:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 1288
    iput-object v5, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    const-string v1, "Android-AppSignup-DumbPassword"

    .line 1289
    iput-object v1, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_1

    .line 1291
    :cond_10
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1292
    iput-object v2, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    goto :goto_1

    .line 1222
    :cond_11
    :goto_0
    iget-object v4, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v4}, Lcom/roblox/client/signup/a;->A(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1223
    iput-object v1, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    .line 1224
    iput-object v2, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    .line 1296
    :goto_1
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v4

    iget-object v5, p1, Lcom/roblox/client/signup/f;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/roblox/client/signup/f;->b:Ljava/lang/String;

    iget v7, p1, Lcom/roblox/client/signup/f;->d:I

    iget-object v8, p1, Lcom/roblox/client/signup/f;->e:Ljava/lang/String;

    iget-object v9, p1, Lcom/roblox/client/signup/f;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    .line 1302
    invoke-static {v1}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v10

    .line 1303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v11, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v11}, Lcom/roblox/client/signup/a;->G(Lcom/roblox/client/signup/a;)J

    move-result-wide v11

    sub-long v11, v1, v11

    .line 1296
    invoke-virtual/range {v4 .. v12}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1306
    iget-object p1, p1, Lcom/roblox/client/signup/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1307
    iget-object p1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/a;->at()V

    :cond_12
    return-void
.end method
