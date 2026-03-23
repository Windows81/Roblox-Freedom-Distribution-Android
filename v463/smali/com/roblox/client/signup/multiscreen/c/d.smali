.class public Lcom/roblox/client/signup/multiscreen/c/d;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/c/b$a;
.implements Lcom/roblox/client/signup/multiscreen/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/c/d$a;
    }
.end annotation


# instance fields
.field private aA:Landroid/telephony/PhoneNumberFormattingTextWatcher;

.field private aB:Lcom/roblox/client/signup/multiscreen/e/d;

.field private aC:Lcom/roblox/client/signup/multiscreen/c/d$a;

.field private final aD:Ljava/lang/Runnable;

.field private final aE:Ljava/lang/Runnable;

.field private as:Lcom/roblox/client/components/RbxEditText;

.field private at:Landroid/widget/EditText;

.field private au:Lcom/roblox/client/components/RbxEditText;

.field private av:Lcom/roblox/client/components/RbxEditText;

.field private aw:Landroid/widget/EditText;

.field private ax:Lcom/roblox/client/components/RbxProgressButton;

.field private ay:Lcom/roblox/client/components/RbxButton;

.field private az:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->az:Landroid/view/View;

    .line 396
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/d$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/d$6;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aD:Ljava/lang/Runnable;

    .line 403
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/d$7;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/d$7;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aE:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/signup/multiscreen/c/d$a;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aC:Lcom/roblox/client/signup/multiscreen/c/d$a;

    return-object p0
.end method

.method public static a(Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/c/d;
    .locals 3

    .line 83
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/d;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "birth_date_bundle_key"

    .line 85
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/d;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;)V
    .locals 1

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 712
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpPhoneNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/d$11;->a:[I

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/d;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/d$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Authentication_SignUp_Response_SignUpPasswordTooShortError"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 448
    :pswitch_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordPhoneNoRequired:I

    const-string v1, "Authentication_SignUp_Response_PasswordPhoneNoRequired"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_PasswordInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordComplexity:I

    const-string v1, "Authentication_SignUp_Response_PasswordComplexity"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :pswitch_3
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordForbidden:I

    const-string v1, "Authentication_SignUp_Response_PasswordForbidden"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordUnknownError:I

    const-string v1, "Authentication_SignUp_Response_PasswordUnknownError"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    const-string v1, "Authentication_SignUp_Response_PasswordMatchesUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :pswitch_8
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordMinLength:I

    const-string v1, "Authentication_SignUp_Description_PasswordMinLength"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_9
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_Error:I

    const-string v0, "Authentication_SignUp_Response_Error"

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_a
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;)V

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

.method private a(Lcom/roblox/client/signup/multiscreen/a/f;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpPhoneNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/d$11;->b:[I

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/f;->b:Lcom/roblox/client/signup/multiscreen/a/f$a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/a/f$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/f;->a:Lcom/roblox/client/signup/multiscreen/a/e;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 476
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

    goto :goto_0

    .line 472
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidPhoneNumber:I

    const-string v1, "Authentication_SignUp_Response_InvalidPhoneNumber"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_3
    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/f;->a:Lcom/roblox/client/signup/multiscreen/a/e;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/e;->d()Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object p1

    .line 462
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Lcom/roblox/client/phonenumber/PhonePrefix;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxEditText;->setTextBoxText(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aq()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 464
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aA:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    if-eqz v0, :cond_4

    .line 465
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 467
    :cond_4
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    iget-object p1, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->countryCode:Ljava/lang/String;

    invoke-direct {v0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aA:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .line 468
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 457
    :cond_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;)V

    .line 458
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/i;)V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignUp.Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpPhoneNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/d$11;->c:[I

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/i$b;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Authentication_SignUp_Response_InvalidPhoneNumber"

    const-string v1, "Authentication_SignUp_Response_PhoneNumberAlreadyLinked"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 551
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aw()V

    goto/16 :goto_0

    .line 543
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aC:Lcom/roblox/client/signup/multiscreen/c/d$a;

    invoke-interface {p1}, Lcom/roblox/client/signup/multiscreen/c/d$a;->v()V

    goto/16 :goto_1

    .line 538
    :pswitch_2
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidCode:I

    invoke-direct {p0, v1, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 534
    :pswitch_3
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aw()V

    .line 535
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aB()V

    goto/16 :goto_1

    .line 531
    :pswitch_4
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->av()V

    goto/16 :goto_1

    .line 525
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PhoneNumberAlreadyLinked:I

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto/16 :goto_1

    .line 521
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidPhoneNumber:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto/16 :goto_1

    .line 517
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidPhoneNumber:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto :goto_1

    .line 513
    :pswitch_8
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aB()V

    .line 514
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto :goto_1

    .line 509
    :pswitch_9
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;)V

    .line 510
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 503
    :pswitch_a
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aB()V

    .line 504
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto :goto_1

    .line 499
    :pswitch_b
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PhoneNumberAlreadyLinked:I

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto :goto_1

    .line 495
    :pswitch_c
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_PasswordInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto :goto_1

    .line 491
    :pswitch_d
    sget p1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidBirthday:I

    const-string v0, "Authentication_SignUp_Response_InvalidBirthday"

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->c(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    goto :goto_1

    .line 488
    :pswitch_e
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aC:Lcom/roblox/client/signup/multiscreen/c/d$a;

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/d;->d()Lcom/roblox/client/signup/multiscreen/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d$a;->a(Lcom/roblox/client/signup/multiscreen/a/e;Ljava/lang/String;)V

    goto :goto_1

    .line 569
    :goto_0
    sget p1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_SystemErrorTryLater:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->d(I)V

    .line 570
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

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

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/d;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/d;Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/d;Lcom/roblox/client/signup/multiscreen/a/f;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/signup/multiscreen/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/d;Lcom/roblox/client/signup/multiscreen/a/i;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/signup/multiscreen/a/i;)V

    return-void
.end method

.method private aA()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/d;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private aB()V
    .locals 4

    .line 729
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 733
    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_TooManyAttemptsText:I

    const-string v3, "CommonUI_Messages_Response_TooManyAttemptsText"

    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_TooManyAttempts:I

    const-string v3, "Authentication_2SV_Response_TooManyAttempts"

    .line 735
    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    const-string v3, "CommonUI_Features_Action_Ok"

    .line 737
    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/d$10;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/multiscreen/c/d$10;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 744
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    :cond_0
    return-void
.end method

.method private aC()V
    .locals 9

    .line 760
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/d;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/a;-><init>()V

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/signup/multiscreen/b;->a:Lcom/roblox/client/signup/multiscreen/b;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/a;->a(Landroid/content/Context;Lcom/roblox/client/signup/multiscreen/b;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 768
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

    invoke-virtual/range {v1 .. v8}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpPhoneNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private aq()Z
    .locals 2

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private as()V
    .locals 5

    .line 576
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ap()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    const-string v1, "submit"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/d;->d(Ljava/lang/String;)V

    const-string v0, "SignUpPhoneNumberFragment"

    const-string v1, "onSignUpClicked"

    .line 581
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ax:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 584
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ax()V

    .line 585
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 586
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->az:Landroid/view/View;

    invoke-static {v2}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 589
    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/d$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d$8;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;Landroid/os/Handler;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private at()V
    .locals 5

    const-string v0, "SignUpPhoneNumberFragment"

    const-string v1, "signUpAfterCaptcha."

    .line 621
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ax:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 624
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ax()V

    .line 625
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 626
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->az:Landroid/view/View;

    invoke-static {v2}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 629
    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/d$9;

    invoke-direct {v2, p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/d$9;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;Landroid/os/Handler;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private au()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 668
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->u()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "CodeVerificationFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private av()V
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->au()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 673
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/b;

    if-eqz v1, :cond_0

    .line 674
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/b;->aq()V

    :cond_0
    return-void
.end method

.method private aw()V
    .locals 2

    .line 686
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->au()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 687
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/b;

    if-eqz v1, :cond_0

    .line 688
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/b;->ar()V

    :cond_0
    return-void
.end method

.method private ax()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 694
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 695
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 696
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ay:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    return-void
.end method

.method private ay()V
    .locals 5

    .line 700
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ax:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUp:I

    const-string v4, "Authentication_SignUp_Label_SignUp"

    invoke-static {v0, v4, v3}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 705
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 706
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->au:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 707
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ay:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    :cond_0
    return-void
.end method

.method private az()V
    .locals 3

    const-string v0, "SignUpPhoneNumberFragment"

    const-string v1, "callValidatePassword."

    .line 720
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->at:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/c/d;)Landroid/widget/EditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->at:Landroid/widget/EditText;

    return-object p0
.end method

.method private b(Lcom/roblox/client/phonenumber/PhonePrefix;)Ljava/lang/String;
    .locals 2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/signup/multiscreen/e/d;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/c/d;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->az:Landroid/view/View;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CredentialValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpPhoneNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 661
    invoke-static {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(ILjava/lang/String;)Lcom/roblox/client/signup/multiscreen/c/b;

    move-result-object p1

    .line 664
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->u()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "CodeVerificationFragment"

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/components/RbxEditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 679
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->au()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 680
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/b;

    if-eqz v1, :cond_0

    .line 681
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/b;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/roblox/client/signup/multiscreen/c/d;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aD:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/signup/multiscreen/c/d;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aE:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/signup/multiscreen/c/d;)Landroid/widget/EditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/signup/multiscreen/c/d;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->as()V

    return-void
.end method

.method static synthetic j(Lcom/roblox/client/signup/multiscreen/c/d;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->az()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/signup/multiscreen/c/d;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aA()V

    return-void
.end method

.method static synthetic l(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/components/RbxEditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    return-object p0
.end method

.method static synthetic m(Lcom/roblox/client/signup/multiscreen/c/d;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    return-void
.end method

.method static synthetic n(Lcom/roblox/client/signup/multiscreen/c/d;)Lcom/roblox/client/components/RbxProgressButton;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ax:Lcom/roblox/client/components/RbxProgressButton;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "SignUpPhoneNumberFragment"

    const-string v0, "onCreateView"

    .line 108
    invoke-static {p3, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget p3, Lcom/roblox/client/o$g;->phone_number_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_phone_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p2, p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 113
    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUpWithPhone:I

    const-string v3, "Authentication_SignUp_Label_SignUpWithPhone"

    invoke-direct {p0, v3, v2}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_phone_email_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ay:Lcom/roblox/client/components/RbxButton;

    .line 116
    invoke-virtual {p2, p3, v1}, Lcom/roblox/client/components/RbxButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 117
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ay:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_UseEmailInstead:I

    const-string v2, "Authentication_SignUp_Label_UseEmailInstead"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ay:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$1;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_phone_fine_print_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->r()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/roblox/client/ae/a/b;->c(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 127
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 129
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_phone_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    .line 130
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->at:Landroid/widget/EditText;

    .line 131
    sget v1, Lcom/roblox/client/o$f;->view_signup_password_field:I

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setId(I)V

    .line 132
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$f;->view_signup_password_bottom_label:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 133
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$12;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$12;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->at:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 151
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->at:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$13;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$13;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 162
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->as:Lcom/roblox/client/components/RbxEditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$14;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$14;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 175
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->at:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$15;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$15;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_phone_number_full_field:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    .line 203
    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$16;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$16;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 209
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$f;->view_signup_phone_bottom_label:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 210
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    .line 211
    sget v1, Lcom/roblox/client/o$f;->view_signup_phone_field:I

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setId(I)V

    .line 212
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 213
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$17;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$17;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 224
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aw:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/d$18;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/d$18;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->av:Lcom/roblox/client/components/RbxEditText;

    check-cast p2, Lcom/roblox/client/components/PhoneNumberEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/PhoneNumberEditText;->getPhonePrefixField()Lcom/roblox/client/components/RbxEditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->au:Lcom/roblox/client/components/RbxEditText;

    .line 244
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    .line 245
    sget v1, Lcom/roblox/client/o$f;->view_phone_code_field:I

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setId(I)V

    .line 246
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 247
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 248
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 249
    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/d$19;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/d$19;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_phone_sign_up_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->ax:Lcom/roblox/client/components/RbxProgressButton;

    .line 259
    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/d$2;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/d$2;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 265
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->az:Landroid/view/View;

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 337
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/s;->a(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const-string v0, "SignUpPhoneNumberFragment"

    if-ne p2, p1, :cond_1

    .line 341
    new-instance p1, Lcom/roblox/client/signup/multiscreen/a;

    invoke-direct {p1}, Lcom/roblox/client/signup/multiscreen/a;-><init>()V

    invoke-virtual {p1, p3}, Lcom/roblox/client/signup/multiscreen/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Credential retrieved: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p2, p1}, Lcom/roblox/client/signup/multiscreen/e/d;->b(Ljava/lang/String;)V

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->m()V

    goto :goto_0

    .line 349
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Result not ok. Code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->l()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 371
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    const-string v0, "SignUpPhoneNumberFragment"

    const-string v1, "onAttach"

    .line 372
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    instance-of v0, p1, Lcom/roblox/client/signup/multiscreen/c/d$a;

    if-eqz v0, :cond_0

    .line 375
    check-cast p1, Lcom/roblox/client/signup/multiscreen/c/d$a;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aC:Lcom/roblox/client/signup/multiscreen/c/d$a;

    return-void

    .line 377
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

.method public a(Lcom/roblox/client/phonenumber/PhonePrefix;)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhonePrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpPhoneNumberFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/e/d;->a(Lcom/roblox/client/phonenumber/PhonePrefix;)V

    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/e/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public ar()V
    .locals 0

    .line 791
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 12

    .line 272
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    const-string p1, "SignUpPhoneNumberFragment"

    const-string v0, "onCreate"

    .line 273
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->n()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->n()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "birth_date_bundle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/multiscreen/a/a;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid birthdate passed in."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 283
    new-instance v7, Lcom/roblox/client/signup/multiscreen/f;

    invoke-direct {v7}, Lcom/roblox/client/signup/multiscreen/f;-><init>()V

    .line 284
    new-instance p1, Lcom/roblox/client/signup/multiscreen/e/d$a;

    new-instance v2, Lcom/roblox/client/signup/multiscreen/b/n;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/b/h;-><init>()V

    invoke-direct {v2, v7, v0}, Lcom/roblox/client/signup/multiscreen/b/n;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/h;)V

    new-instance v3, Lcom/roblox/client/signup/multiscreen/b/p;

    invoke-direct {v3, v7}, Lcom/roblox/client/signup/multiscreen/b/p;-><init>(Lcom/roblox/client/signup/multiscreen/c;)V

    new-instance v4, Lcom/roblox/client/signup/multiscreen/b/z;

    new-instance v8, Lcom/roblox/client/signup/multiscreen/b/y;

    .line 294
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/roblox/client/signup/multiscreen/b/y;-><init>(Lcom/roblox/client/s/f;)V

    .line 295
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v9

    .line 296
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v10

    .line 297
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->g()Lcom/roblox/platform/http/c/d;

    move-result-object v11

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/roblox/client/signup/multiscreen/b/z;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/y;Lcom/roblox/abtesting/a;Lcom/roblox/client/s/h;Lcom/roblox/platform/http/c/d;)V

    .line 300
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/signup/multiscreen/e/d$a;-><init>(Lcom/roblox/client/signup/multiscreen/b/m;Lcom/roblox/client/signup/multiscreen/b/o;Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;)V

    .line 284
    invoke-static {p0, p1}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;

    move-result-object p1

    const-class v0, Lcom/roblox/client/signup/multiscreen/e/d;

    .line 301
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/multiscreen/e/d;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    .line 305
    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->e()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/d$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/d$3;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 314
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->g()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/d$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/d$4;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 323
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->b()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/d$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/d$5;-><init>(Lcom/roblox/client/signup/multiscreen/c/d;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 330
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/ae/n;->a(Landroid/content/Context;)Lcom/roblox/client/phonenumber/PhonePrefix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/d;->a(Lcom/roblox/client/phonenumber/PhonePrefix;)V

    .line 332
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->aC()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 384
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    const-string v0, "SignUpPhoneNumberFragment"

    const-string v1, "onDetach"

    .line 385
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aC:Lcom/roblox/client/signup/multiscreen/c/d$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 357
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 359
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/d;->o()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 364
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    .line 366
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->az:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 782
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/d;->h()V

    goto :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->at()V

    :goto_0
    return-void
.end method

.method public p_()V
    .locals 0

    .line 798
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->ay()V

    return-void
.end method

.method public q_()V
    .locals 1

    .line 803
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/d;->av()V

    .line 804
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/d;->aB:Lcom/roblox/client/signup/multiscreen/e/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/d;->h()V

    return-void
.end method
