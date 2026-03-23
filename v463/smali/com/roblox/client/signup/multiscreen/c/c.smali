.class public Lcom/roblox/client/signup/multiscreen/c/c;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/c/b$a;
.implements Lcom/roblox/client/signup/multiscreen/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/c/c$a;
    }
.end annotation


# instance fields
.field private aA:Lcom/roblox/client/signup/multiscreen/c/c$a;

.field private final aB:Ljava/lang/Runnable;

.field private final aC:Ljava/lang/Runnable;

.field private as:Lcom/roblox/client/components/RbxEditText;

.field private at:Landroid/widget/EditText;

.field private au:Lcom/roblox/client/components/RbxEditText;

.field private av:Landroid/widget/EditText;

.field private aw:Lcom/roblox/client/components/RbxProgressButton;

.field private ax:Lcom/roblox/client/components/RbxButton;

.field private ay:Landroid/view/View;

.field private az:Lcom/roblox/client/signup/multiscreen/e/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ay:Landroid/view/View;

    .line 360
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/c$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/c$5;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aB:Ljava/lang/Runnable;

    .line 367
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/c$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/c$6;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aC:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/signup/multiscreen/c/c$a;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aA:Lcom/roblox/client/signup/multiscreen/c/c$a;

    return-object p0
.end method

.method public static a(Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/c/c;
    .locals 3

    .line 76
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/c;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "birth_date_bundle_key"

    .line 78
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/c;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;)V
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 677
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/b;)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmailEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/b;->b:Lcom/roblox/client/signup/multiscreen/a/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpEmailNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/c$10;->b:[I

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/b;->b:Lcom/roblox/client/signup/multiscreen/a/b$a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/b$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidEmail:I

    const-string v1, "Authentication_SignUp_Response_InvalidEmail"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

    goto :goto_0

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpEmailNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/c$10;->a:[I

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/d;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/d$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Authentication_SignUp_Response_SignUpPasswordTooShortError"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 408
    :pswitch_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordEmailRequired:I

    const-string v1, "Authentication_SignUp_Response_PasswordEmailRequired"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_PasswordInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordComplexity:I

    const-string v1, "Authentication_SignUp_Response_PasswordComplexity"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :pswitch_3
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordForbidden:I

    const-string v1, "Authentication_SignUp_Response_PasswordForbidden"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :pswitch_4
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordUnknownError:I

    const-string v1, "Authentication_SignUp_Response_PasswordUnknownError"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    const-string v1, "Authentication_SignUp_Response_PasswordMatchesUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :pswitch_8
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordMinLength:I

    const-string v1, "Authentication_SignUp_Description_PasswordMinLength"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :pswitch_9
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_Error:I

    const-string v0, "Authentication_SignUp_Response_Error"

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_a
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private a(Lcom/roblox/client/signup/multiscreen/a/i;)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignUp.Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpEmailNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/c$10;->c:[I

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/i$b;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Authentication_SignUp_Response_InvalidEmail"

    const-string v1, "Authentication_SignUp_Response_TooManyAccountsLinkedToEmail"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 495
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->ax()V

    goto/16 :goto_0

    .line 487
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aA:Lcom/roblox/client/signup/multiscreen/c/c$a;

    invoke-interface {p1}, Lcom/roblox/client/signup/multiscreen/c/c$a;->x()V

    goto/16 :goto_1

    .line 482
    :pswitch_2
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidCode:I

    const-string v0, "Authentication_SignUp_Response_PhoneNumberAlreadyLinked"

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    :pswitch_3
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->ax()V

    .line 479
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->ay()V

    goto/16 :goto_1

    .line 475
    :pswitch_4
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->au()V

    goto/16 :goto_1

    .line 469
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_TooManyAccountsLinkedToEmail:I

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto/16 :goto_1

    .line 465
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidEmail:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto/16 :goto_1

    .line 461
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidEmail:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto :goto_1

    .line 457
    :pswitch_8
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->ay()V

    .line 458
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto :goto_1

    .line 453
    :pswitch_9
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;)V

    .line 454
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 447
    :pswitch_a
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->ay()V

    .line 448
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto :goto_1

    .line 443
    :pswitch_b
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_TooManyAccountsLinkedToEmail:I

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto :goto_1

    .line 439
    :pswitch_c
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_PasswordInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto :goto_1

    .line 435
    :pswitch_d
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidBirthday:I

    const-string v0, "Authentication_SignUp_Response_InvalidBirthday"

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->c(Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    goto :goto_1

    .line 432
    :pswitch_e
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aA:Lcom/roblox/client/signup/multiscreen/c/c$a;

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/c;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/e/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :goto_0
    sget p1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_SystemErrorTryLater:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->d(I)V

    .line 514
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/signup/multiscreen/a/b;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/signup/multiscreen/a/i;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/a/i;)V

    return-void
.end method

.method private aA()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private aB()V
    .locals 9

    .line 699
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 703
    :cond_0
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/a;-><init>()V

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->p()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/signup/multiscreen/b;->b:Lcom/roblox/client/signup/multiscreen/b;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/a;->a(Landroid/content/Context;Lcom/roblox/client/signup/multiscreen/b;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 706
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpEmailNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private as()V
    .locals 5

    const-string v0, "SignUpEmailNumberFragment"

    const-string v1, "signUpAfterCaptcha."

    .line 565
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aw:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 568
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->av()V

    .line 569
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 570
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->p()Landroid/content/Context;

    move-result-object v1

    .line 571
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ay:Landroid/view/View;

    invoke-static {v2}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 573
    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/c$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c$8;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;Landroid/os/Handler;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private at()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 620
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->u()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "CodeVerificationFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private au()V
    .locals 2

    .line 624
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->at()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 625
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/b;

    if-eqz v1, :cond_0

    .line 626
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/b;->aq()V

    :cond_0
    return-void
.end method

.method private av()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 632
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 633
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ax:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    return-void
.end method

.method private aw()V
    .locals 5

    .line 637
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aw:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUp:I

    const-string v4, "Authentication_SignUp_Label_SignUp"

    invoke-static {v0, v4, v3}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 642
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 643
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ax:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    :cond_0
    return-void
.end method

.method private ax()V
    .locals 2

    .line 648
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->at()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 649
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/b;

    if-eqz v1, :cond_0

    .line 650
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/b;->ar()V

    :cond_0
    return-void
.end method

.method private ay()V
    .locals 4

    .line 655
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 659
    sget v2, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_TooManyAttempts:I

    const-string v3, "Authentication_2SV_Response_TooManyAttempts"

    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_TooManyAttempts:I

    .line 661
    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    const-string v3, "CommonUI_Features_Action_Ok"

    .line 663
    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/c$9;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/multiscreen/c/c$9;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 670
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    :cond_0
    return-void
.end method

.method private az()V
    .locals 3

    const-string v0, "SignUpEmailNumberFragment"

    const-string v1, "callValidatePassword."

    .line 685
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->at:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->av:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/c/c;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->at:Landroid/widget/EditText;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/signup/multiscreen/e/c;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/c/c;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ay:Landroid/view/View;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CredentialValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpEmailNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 606
    invoke-static {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(ILjava/lang/String;)Lcom/roblox/client/signup/multiscreen/c/b;

    move-result-object p1

    .line 609
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->u()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "CodeVerificationFragment"

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/components/RbxEditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 613
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->at()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 614
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/b;

    if-eqz v1, :cond_0

    .line 615
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/b;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/roblox/client/signup/multiscreen/c/c;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aB:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/signup/multiscreen/c/c;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aC:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/signup/multiscreen/c/c;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->av:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/signup/multiscreen/c/c;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->az()V

    return-void
.end method

.method static synthetic j(Lcom/roblox/client/signup/multiscreen/c/c;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aA()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/components/RbxEditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    return-object p0
.end method

.method static synthetic l(Lcom/roblox/client/signup/multiscreen/c/c;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    return-void
.end method

.method static synthetic m(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/components/RbxProgressButton;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aw:Lcom/roblox/client/components/RbxProgressButton;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 98
    sget p3, Lcom/roblox/client/o$g;->email_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_email_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p2, p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUpWithEmail:I

    const-string v3, "Authentication_SignUp_Label_SignUpWithEmail"

    invoke-direct {p0, v3, v2}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_email_phone_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ax:Lcom/roblox/client/components/RbxButton;

    .line 105
    invoke-virtual {p2, p3, v1}, Lcom/roblox/client/components/RbxButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 106
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ax:Lcom/roblox/client/components/RbxButton;

    sget p3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_UsePhoneInstead:I

    const-string v1, "Authentication_SignUp_Label_UsePhoneInstead"

    invoke-direct {p0, v1, p3}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ax:Lcom/roblox/client/components/RbxButton;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$1;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$1;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_email_fine_print_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->r()Landroidx/fragment/app/c;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/roblox/client/ae/a/b;->b(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 116
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 118
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_email_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    .line 119
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->at:Landroid/widget/EditText;

    .line 120
    sget p3, Lcom/roblox/client/o$f;->view_signup_password_field:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setId(I)V

    .line 121
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$f;->view_signup_password_bottom_label:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    .line 122
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$11;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$11;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->at:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 140
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->at:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$12;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$12;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->as:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$13;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$13;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 164
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->at:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$14;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$14;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_email_field:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    .line 192
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$f;->view_signup_email_bottom_label:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    .line 193
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$15;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$15;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 199
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->av:Landroid/widget/EditText;

    const/4 p3, 0x5

    .line 200
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 201
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->av:Landroid/widget/EditText;

    sget p3, Lcom/roblox/client/o$f;->view_signup_email_field:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setId(I)V

    .line 202
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->av:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$16;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$16;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 213
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->av:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$17;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$17;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_email_sign_up_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aw:Lcom/roblox/client/components/RbxProgressButton;

    .line 233
    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/c$18;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/c$18;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 239
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ay:Landroid/view/View;

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/s;->a(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const-string v0, "SignUpEmailNumberFragment"

    if-ne p2, p1, :cond_1

    .line 312
    new-instance p1, Lcom/roblox/client/signup/multiscreen/a;

    invoke-direct {p1}, Lcom/roblox/client/signup/multiscreen/a;-><init>()V

    invoke-virtual {p1, p3}, Lcom/roblox/client/signup/multiscreen/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Credential retrieved: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p2}, Lcom/roblox/client/signup/multiscreen/e/c;->o()V

    .line 316
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2, p1}, Lcom/roblox/client/components/RbxEditText;->setTextBoxText(Ljava/lang/String;)V

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->g()V

    goto :goto_0

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Result not ok. Code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 343
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 345
    instance-of v0, p1, Lcom/roblox/client/signup/multiscreen/c/c$a;

    if-eqz v0, :cond_0

    .line 346
    check-cast p1, Lcom/roblox/client/signup/multiscreen/c/c$a;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aA:Lcom/roblox/client/signup/multiscreen/c/c$a;

    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/e/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public aq()V
    .locals 5

    .line 520
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    const-string v1, "submit"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/c;->c(Ljava/lang/String;)V

    const-string v0, "SignUpEmailNumberFragment"

    const-string v1, "onSignUpClicked"

    .line 525
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aw:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 528
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->av()V

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 530
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->p()Landroid/content/Context;

    move-result-object v1

    .line 531
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ay:Landroid/view/View;

    invoke-static {v2}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 533
    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/c$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/c$7;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;Landroid/os/Handler;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public ar()V
    .locals 0

    .line 729
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 12

    .line 246
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    const-string p1, "SignUpEmailNumberFragment"

    const-string v0, "onCreate"

    .line 247
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->n()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->n()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "birth_date_bundle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/multiscreen/a/a;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid birthdate passed in."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 256
    new-instance v7, Lcom/roblox/client/signup/multiscreen/f;

    invoke-direct {v7}, Lcom/roblox/client/signup/multiscreen/f;-><init>()V

    .line 257
    new-instance p1, Lcom/roblox/client/signup/multiscreen/e/c$a;

    new-instance v2, Lcom/roblox/client/signup/multiscreen/b/n;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/b/h;-><init>()V

    invoke-direct {v2, v7, v0}, Lcom/roblox/client/signup/multiscreen/b/n;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/h;)V

    new-instance v3, Lcom/roblox/client/signup/multiscreen/b/b;

    invoke-direct {v3, v7}, Lcom/roblox/client/signup/multiscreen/b/b;-><init>(Lcom/roblox/client/signup/multiscreen/f;)V

    new-instance v4, Lcom/roblox/client/signup/multiscreen/b/z;

    new-instance v8, Lcom/roblox/client/signup/multiscreen/b/y;

    .line 267
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/roblox/client/signup/multiscreen/b/y;-><init>(Lcom/roblox/client/s/f;)V

    .line 268
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v9

    .line 269
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v10

    .line 270
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->g()Lcom/roblox/platform/http/c/d;

    move-result-object v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/roblox/client/signup/multiscreen/b/z;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/y;Lcom/roblox/abtesting/a;Lcom/roblox/client/s/h;Lcom/roblox/platform/http/c/d;)V

    .line 273
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/signup/multiscreen/e/c$a;-><init>(Lcom/roblox/client/signup/multiscreen/b/m;Lcom/roblox/client/signup/multiscreen/b/a;Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;)V

    .line 257
    invoke-static {p0, p1}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;

    move-result-object p1

    const-class v0, Lcom/roblox/client/signup/multiscreen/e/c;

    .line 274
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/multiscreen/e/c;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    .line 278
    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->b()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/c$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/c$2;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 287
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->d()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/c$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/c$3;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 296
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->e()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/c$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/c$4;-><init>(Lcom/roblox/client/signup/multiscreen/c/c;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 303
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aB()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 355
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->aA:Lcom/roblox/client/signup/multiscreen/c/c$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 329
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 331
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/c;->n()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 336
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    .line 338
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->ay:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 720
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 721
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/c;->k()V

    goto :goto_0

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->as()V

    :goto_0
    return-void
.end method

.method public p_()V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->aw()V

    return-void
.end method

.method public q_()V
    .locals 1

    .line 741
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/c;->au()V

    .line 742
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c;->az:Lcom/roblox/client/signup/multiscreen/e/c;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/c;->k()V

    return-void
.end method
