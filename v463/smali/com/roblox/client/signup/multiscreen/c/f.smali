.class public Lcom/roblox/client/signup/multiscreen/c/f;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/c/f$b;,
        Lcom/roblox/client/signup/multiscreen/c/f$a;
    }
.end annotation


# instance fields
.field private aA:Lcom/roblox/client/signup/multiscreen/c/f$b;

.field private aB:Ljava/lang/String;

.field private aC:Ljava/lang/String;

.field private aD:Lcom/roblox/client/signup/multiscreen/c/f$a;

.field private final aE:Ljava/lang/Runnable;

.field private as:Z

.field private at:Lcom/roblox/client/signup/UsernameSignUpEditText;

.field private au:Landroid/widget/EditText;

.field private av:Lcom/roblox/client/components/RbxGenderPicker;

.field private aw:Lcom/roblox/client/components/RbxProgressButton;

.field private ax:Lcom/roblox/client/components/RbxButton;

.field private ay:Landroid/view/View;

.field private az:Lcom/roblox/client/signup/multiscreen/e/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ay:Landroid/view/View;

    .line 298
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$11;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$11;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aE:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/c/f;
    .locals 3

    .line 71
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/f;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "username_bundle_key"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "password_bundle_key"

    .line 74
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "birth_date_bundle_key"

    .line 75
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/f;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/e/e;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    return-object p0
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 455
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/c;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/h;)V
    .locals 4

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernameGenderFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/f$3;->a:[I

    iget-object v2, p1, Lcom/roblox/client/signup/multiscreen/a/h;->b:Lcom/roblox/client/signup/multiscreen/a/h$a;

    invoke-virtual {v2}, Lcom/roblox/client/signup/multiscreen/a/h$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 423
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->aq()V

    .line 425
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aA:Lcom/roblox/client/signup/multiscreen/c/f$b;

    invoke-interface {p1}, Lcom/roblox/client/signup/multiscreen/c/f$b;->p()V

    goto/16 :goto_0

    .line 419
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_BirthdayMustBeSetFirst:I

    const-string v1, "Authentication_SignUp_Response_BirthdayMustBeSetFirst"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 415
    :pswitch_3
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_UsernameInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 411
    :pswitch_4
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aC:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/f;->c(Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->k()V

    goto/16 :goto_0

    .line 406
    :pswitch_5
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpErrorGeneratingUsername:I

    const-string v1, "Authentication_SignUp_Response_SignUpErrorGeneratingUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->c(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 402
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 399
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    goto/16 :goto_0

    .line 395
    :pswitch_8
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernamePrivateInfo:I

    const-string v1, "Authentication_SignUp_Response_UsernamePrivateInfo"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 391
    :pswitch_9
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterUsername:I

    const-string v1, "Authentication_SignUp_Response_PleaseEnterUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 387
    :pswitch_a
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    const-string v1, "Authentication_SignUp_Response_UsernameCannotContainSpaces"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 383
    :pswitch_b
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameTooManyUnderscores:I

    const-string v1, "Authentication_SignUp_Response_UsernameTooManyUnderscores"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 379
    :pswitch_c
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter:I

    const-string v1, "Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 375
    :pswitch_d
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidLength:I

    const-string v1, "Authentication_SignUp_Response_UsernameInvalidLength"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto :goto_0

    .line 371
    :pswitch_e
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameAlreadyInUse:I

    const-string v1, "Authentication_SignUp_Response_UsernameAlreadyInUse"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->h()V

    goto :goto_0

    .line 367
    :pswitch_f
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHint:I

    const-string v1, "Authentication_SignUp_Description_UsernameHint"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->k()V

    goto :goto_0

    .line 363
    :pswitch_10
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameExplicit:I

    const-string v1, "Authentication_SignUp_Response_UsernameExplicit"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto :goto_0

    .line 359
    :pswitch_11
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    const-string v1, "Authentication_SignUp_Response_UsernameUnknownError"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto :goto_0

    .line 352
    :pswitch_12
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_LooksGreat:I

    const-string v2, "Authentication_SignUp_Response_LooksGreat"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aD:Lcom/roblox/client/signup/multiscreen/c/f$a;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Lcom/roblox/client/signup/UsernameSignUpEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "showLooksGoodIcon"

    .line 355
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->i()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/f;Lcom/roblox/client/signup/multiscreen/a/c;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/signup/multiscreen/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/f;Lcom/roblox/client/signup/multiscreen/a/h;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    return-void
.end method

.method private aq()V
    .locals 2

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->as:Z

    .line 307
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/e/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setTextBoxText(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->as:Z

    return-void
.end method

.method private ar()V
    .locals 2

    .line 313
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$a;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/f$a;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aD:Lcom/roblox/client/signup/multiscreen/c/f$a;

    .line 315
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/f$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/f$2;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private as()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    .line 337
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    .line 338
    invoke-virtual {v2}, Lcom/roblox/client/signup/multiscreen/e/e;->f()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v2

    .line 336
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/e;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private at()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/e;->j()V

    .line 343
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    .line 345
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v2}, Lcom/roblox/client/signup/multiscreen/e/e;->f()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/e;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private au()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/e;->h()V

    .line 437
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aw:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 438
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->av()V

    .line 440
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxGenderPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/e;->a(I)Landroidx/lifecycle/LiveData;

    .line 441
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/e;->e()V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aA:Lcom/roblox/client/signup/multiscreen/c/f$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c/f$b;->p()V

    :goto_0
    return-void
.end method

.method private av()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->b()V

    .line 468
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->av:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->c()V

    .line 469
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ax:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/c/f;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ay:Landroid/view/View;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 449
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameContainsInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_UsernameContainsInvalidCharacters"

    invoke-static {p1, v1, v0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aB:Ljava/lang/String;

    .line 451
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_Error:I

    const-string v1, "Authentication_SignUp_Response_Error"

    invoke-static {p1, v1, v0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aC:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 459
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/c/f;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->at()V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/c/f;)Landroid/widget/EditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/c/f;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->aq()V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/signup/multiscreen/c/f;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->au()V

    return-void
.end method

.method static synthetic g(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/c/f$b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aA:Lcom/roblox/client/signup/multiscreen/c/f$b;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/signup/multiscreen/c/f;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->as()V

    return-void
.end method

.method static synthetic i(Lcom/roblox/client/signup/multiscreen/c/f;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->as:Z

    return p0
.end method

.method static synthetic j(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/c/f$a;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aD:Lcom/roblox/client/signup/multiscreen/c/f$a;

    return-object p0
.end method

.method static synthetic k(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/UsernameSignUpEditText;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    return-object p0
.end method

.method static synthetic l(Lcom/roblox/client/signup/multiscreen/c/f;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aE:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "UsernameGenderFragment"

    const-string v0, "onCreateView"

    .line 98
    invoke-static {p3, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget v0, Lcom/roblox/client/o$g;->username_gender_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 101
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_gender_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p2, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 103
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_WelcomeToRoblox:I

    const-string v2, "Authentication_SignUp_Label_WelcomeToRoblox"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_ThisIsYourUsername:I

    const-string v2, "Authentication_SignUp_Label_ThisIsYourUsername"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_gender_field_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_WhatIsYourGender:I

    const-string v2, "Authentication_SignUp_Label_WhatIsYourGender"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_gender_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxGenderPicker;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->av:Lcom/roblox/client/components/RbxGenderPicker;

    .line 112
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$1;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxGenderPicker;->setOnGenderButtonPressedListener(Lcom/roblox/client/components/RbxGenderPicker$a;)V

    .line 120
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/signup/UsernameSignUpEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 121
    invoke-virtual {p2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    .line 122
    sget v0, Lcom/roblox/client/o$f;->view_signup_username_field:I

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setId(I)V

    .line 123
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$f;->view_signup_username_bottom_label:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 124
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHint:I

    const-string v2, "Authentication_SignUp_Description_UsernameHint"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->at:Lcom/roblox/client/signup/UsernameSignUpEditText;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$4;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p2, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/b;)V

    .line 132
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 133
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$5;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 145
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$6;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 161
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username_start_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aw:Lcom/roblox/client/components/RbxProgressButton;

    .line 162
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Start:I

    const-string v2, "Authentication_SignUp_Label_Start"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxProgressButton;->setText(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aw:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$7;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$7;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 171
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username_skip_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ax:Lcom/roblox/client/components/RbxButton;

    .line 172
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Skip:I

    const-string v2, "Authentication_SignUp_Label_Skip"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ax:Lcom/roblox/client/components/RbxButton;

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$8;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ay:Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->p()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/roblox/client/signup/multiscreen/c/f;->b(Landroid/content/Context;)V

    .line 187
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->ar()V

    .line 189
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {p2}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "showUsername"

    .line 190
    invoke-static {p3, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->aq()V

    .line 192
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f;->au:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {p3}, Lcom/roblox/client/signup/multiscreen/e/e;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 193
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_final_username_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 194
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 279
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 280
    instance-of v0, p1, Lcom/roblox/client/signup/multiscreen/c/f$b;

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Lcom/roblox/client/signup/multiscreen/c/f$b;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aA:Lcom/roblox/client/signup/multiscreen/c/f$b;

    return-void

    :cond_0
    const-string v0, "UsernameGenderFragment"

    const-string v1, "Parent activity does not implement OnFragmentInteractionListener!"

    .line 283
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
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

.method public b(Landroid/os/Bundle;)V
    .locals 13

    .line 202
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    const-string p1, "UsernameGenderFragment"

    const-string v0, "onCreate"

    .line 203
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->n()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->n()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "birth_date_bundle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/multiscreen/a/a;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid birthdate passed in."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 213
    new-instance p1, Lcom/roblox/client/signup/multiscreen/f;

    invoke-direct {p1}, Lcom/roblox/client/signup/multiscreen/f;-><init>()V

    .line 215
    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/e;

    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/f;->h()Lcom/roblox/platform/http/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/e;-><init>(Lcom/roblox/platform/http/c/a;)V

    .line 216
    new-instance v9, Lcom/roblox/client/signup/multiscreen/b/v;

    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/f;->g()Lcom/roblox/platform/http/c/d;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/roblox/client/signup/multiscreen/b/v;-><init>(Lcom/roblox/platform/http/c/d;)V

    .line 218
    new-instance v12, Lcom/roblox/client/signup/multiscreen/e/e$a;

    new-instance v2, Lcom/roblox/client/signup/multiscreen/b/x;

    new-instance v7, Lcom/roblox/client/signup/multiscreen/b/s;

    .line 223
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/roblox/client/signup/multiscreen/b/s;-><init>(Lcom/roblox/client/s/f;)V

    new-instance v8, Lcom/roblox/client/http/h;

    invoke-direct {v8}, Lcom/roblox/client/http/h;-><init>()V

    .line 226
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v10

    .line 227
    invoke-static {}, Lcom/roblox/client/ad/b;->a()Lcom/roblox/client/ad/b;

    move-result-object v11

    move-object v5, v2

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/roblox/client/signup/multiscreen/b/x;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/s;Lcom/roblox/client/http/f;Lcom/roblox/client/signup/multiscreen/b/u;Lcom/roblox/client/ad/c;Lcom/roblox/client/ad/b;)V

    new-instance v3, Lcom/roblox/client/signup/multiscreen/b/g;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/c;

    .line 231
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/roblox/client/signup/multiscreen/b/c;-><init>(Lcom/roblox/client/s/f;)V

    invoke-direct {v3, p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/b/g;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/e;Lcom/roblox/client/signup/multiscreen/b/c;)V

    .line 234
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v5

    .line 235
    invoke-static {}, Lcom/roblox/client/ad/b;->a()Lcom/roblox/client/ad/b;

    move-result-object v6

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/signup/multiscreen/e/e$a;-><init>(Lcom/roblox/client/signup/multiscreen/b/w;Lcom/roblox/client/signup/multiscreen/b/f;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;Lcom/roblox/client/ad/b;)V

    .line 218
    invoke-static {p0, v12}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;

    move-result-object p1

    const-class v0, Lcom/roblox/client/signup/multiscreen/e/e;

    .line 236
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/multiscreen/e/e;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    .line 238
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->n()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username_bundle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/e;->a(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/f;->n()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "password_bundle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/e;->b(Ljava/lang/String;)V

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/e;->d()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$9;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$9;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 252
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/e;->c()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/f$10;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/f$10;-><init>(Lcom/roblox/client/signup/multiscreen/c/f;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->aA:Lcom/roblox/client/signup/multiscreen/c/f$b;

    return-void
.end method

.method public h()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 267
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->az:Lcom/roblox/client/signup/multiscreen/e/e;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/e;->g()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    .line 274
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f;->ay:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    return-void
.end method
