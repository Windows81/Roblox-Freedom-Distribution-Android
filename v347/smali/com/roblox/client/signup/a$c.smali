.class Lcom/roblox/client/signup/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/e$a;


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

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$1;)V
    .locals 0

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/a$c;-><init>(Lcom/roblox/client/signup/a;)V

    return-void
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 1324
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/roblox/client/i/h;->a(Ljava/lang/String;J)V

    .line 1325
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->h:Lcom/roblox/client/signup/a$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$b;->k()V

    .line 1326
    invoke-static {p1}, Lcom/roblox/client/i/f;->d(I)V

    .line 1327
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/a$c;IJ)V
    .locals 0

    .prologue
    .line 1305
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/signup/a$c;->a(IJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/signup/j;)V
    .locals 4

    .prologue
    .line 1309
    iget-wide v0, p1, Lcom/roblox/client/signup/j;->f:J

    .line 1312
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->H(Lcom/roblox/client/signup/a;)Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/abtesting/a;->b(J)V

    .line 1314
    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->H(Lcom/roblox/client/signup/a;)Lcom/roblox/abtesting/a;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/signup/a$c$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/roblox/client/signup/a$c$1;-><init>(Lcom/roblox/client/signup/a$c;Lcom/roblox/client/signup/j;J)V

    invoke-virtual {v2, v3}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a$a;)V

    .line 1321
    return-void
.end method

.method public b(Lcom/roblox/client/signup/j;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1332
    if-nez p1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->I(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1335
    new-instance p1, Lcom/roblox/client/signup/j;

    invoke-direct {p1}, Lcom/roblox/client/signup/j;-><init>()V

    .line 1336
    const-string v0, "FailureUnknownError"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    .line 1413
    :goto_0
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    iget-object v1, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    iget v2, p1, Lcom/roblox/client/signup/j;->c:I

    iget-object v3, p1, Lcom/roblox/client/signup/j;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/roblox/client/signup/j;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    .line 1418
    invoke-static {v5}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v5

    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v8}, Lcom/roblox/client/signup/a;->M(Lcom/roblox/client/signup/a;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 1413
    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1421
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)V

    .line 1422
    return-void

    .line 1338
    :cond_0
    iget-object v0, p1, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->I(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1341
    const-string v0, "FailureUnknownError"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 1345
    :cond_2
    iget-object v0, p1, Lcom/roblox/client/signup/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1346
    const-string v1, "UsernameTaken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00db

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1348
    const-string v0, "FailureAlreadyTaken"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto :goto_0

    .line 1350
    :cond_3
    const-string v1, "UsernameContainsInvalidCharacters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1351
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00dd

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1352
    const-string v0, "FailureInvalidCharacters"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1354
    :cond_4
    const-string v1, "UsernameCannotContainSpaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1355
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00dc

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1356
    const-string v0, "FailureContainsSpaces"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1358
    :cond_5
    const-string v1, "UsernameInvalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1359
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v1

    const v2, 0x7f0e00df

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1360
    const-string v0, "FailureInvalidUsername"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1362
    :cond_6
    const-string v1, "BirthdayInvalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1364
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->f:Lcom/roblox/client/components/RbxBirthdayPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxBirthdayPicker;->a()V

    .line 1365
    const-string v0, "FailureInvalidBirthday"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1367
    :cond_7
    const-string v1, "GenderInvalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1368
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->e:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->a()V

    .line 1369
    const-string v0, "FailureInvalidGender"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1371
    :cond_8
    const-string v1, "PasswordInvalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1372
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00ce

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1373
    const-string v0, "FailureInvalidPassword"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1375
    :cond_9
    const-string v1, "Captcha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1376
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_a

    .line 1378
    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v2, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    .line 1379
    invoke-static {v2}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 1378
    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/ReCaptchaActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 1381
    :cond_a
    const-string v0, "FailureAccountCreateFloodcheck"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1383
    :cond_b
    const-string v1, "StatusJsonError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1384
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->J(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1385
    const-string v0, "FailureJSONParse"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1387
    :cond_c
    const-string v1, "StatusThrottled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1388
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->c()V

    .line 1389
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppSignup-Throttled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 1390
    const-string v0, "FailureStatusThrottled"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1392
    :cond_d
    const-string v1, "StatusServerError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1393
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->K(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1394
    const-string v0, "FailureServerError"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1396
    :cond_e
    const-string v1, "StatusUserIdInvalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1397
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->K(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    .line 1398
    const-string v0, "MissingUserInfo"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1400
    :cond_f
    const-string v1, "PasswordMatchesUsername"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1401
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00cc

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1402
    const-string v0, "PasswordMatchesUsername"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1404
    :cond_10
    const-string v1, "DumbPassword"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1405
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, v1, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v2, 0x7f0e00c9

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 1406
    const-string v0, "DumbPassword"

    iput-object v0, p1, Lcom/roblox/client/signup/j;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 1409
    :cond_11
    iget-object v0, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    iget-object v1, p0, Lcom/roblox/client/signup/a$c;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->L(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
