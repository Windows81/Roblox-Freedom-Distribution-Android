.class public Lcom/roblox/client/signup/multiscreen/c/g;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/c/g$b;,
        Lcom/roblox/client/signup/multiscreen/c/g$a;
    }
.end annotation


# static fields
.field private static aE:Lcom/roblox/client/signup/multiscreen/c/g$b;


# instance fields
.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:Lcom/roblox/client/signup/multiscreen/c/g$a;

.field private aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

.field private aF:Lcom/roblox/client/signup/multiscreen/e/f;

.field private final aG:Ljava/lang/Runnable;

.field private final aH:Ljava/lang/Runnable;

.field private as:Lcom/roblox/client/components/RbxEditText;

.field private at:Landroid/widget/EditText;

.field private au:Lcom/roblox/client/signup/UsernameSignUpEditText;

.field private av:Landroid/widget/EditText;

.field private aw:Lcom/roblox/client/components/RbxProgressButton;

.field private ax:Landroid/view/View;

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$1;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/g$1;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/c/g;->aE:Lcom/roblox/client/signup/multiscreen/c/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aw:Lcom/roblox/client/components/RbxProgressButton;

    .line 83
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ax:Landroid/view/View;

    .line 92
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/g;->aE:Lcom/roblox/client/signup/multiscreen/c/g$b;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    .line 358
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/g$5;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aG:Ljava/lang/Runnable;

    .line 365
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/g$6;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aH:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/g;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 497
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 499
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 492
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernamePasswordFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/g$10;->a:[I

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/d;->b:Lcom/roblox/client/signup/multiscreen/a/d$a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/d$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "Authentication_SignUp_Response_SignUpPasswordTooShortError"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 541
    :pswitch_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordUsernameRequired:I

    const-string v1, "Authentication_SignUp_Response_PasswordUsernameRequired"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_PasswordInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordComplexity:I

    const-string v1, "Authentication_SignUp_Response_PasswordComplexity"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :pswitch_3
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordForbidden:I

    const-string v1, "Authentication_SignUp_Response_PasswordForbidden"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :pswitch_4
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordUnknownError:I

    const-string v1, "Authentication_SignUp_Response_PasswordUnknownError"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    const-string v1, "Authentication_SignUp_Response_PasswordMatchesUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_8
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordMinLength:I

    const-string v1, "Authentication_SignUp_Description_PasswordMinLength"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :pswitch_9
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aB:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :pswitch_a
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;I)V

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

.method private a(Lcom/roblox/client/signup/multiscreen/a/g;)V
    .locals 3

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignUpEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernamePasswordFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/g$10;->c:[I

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/g;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/a/g$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 661
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->aw()V

    goto/16 :goto_0

    .line 658
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordComplexity:I

    const-string v2, "Authentication_SignUp_Response_PasswordComplexity"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    const-string v2, "Authentication_SignUp_Response_PasswordMatchesUsername"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PasswordRequirements:I

    const-string v2, "Authentication_SignUp_Response_PasswordRequirements"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalid:I

    const-string v2, "Authentication_SignUp_Response_UsernameInvalid"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    const-string v2, "Authentication_SignUp_Response_UsernameCannotContainSpaces"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :pswitch_7
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ay:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :pswitch_8
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameAlreadyInUse:I

    const-string v2, "Authentication_SignUp_Response_UsernameAlreadyInUse"

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :pswitch_9
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->az:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :pswitch_a
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->az()V

    goto :goto_0

    .line 628
    :pswitch_b
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/e/f;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {v2}, Lcom/roblox/client/signup/multiscreen/e/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/c/g$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_0
    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/g;->a:Lcom/roblox/client/signup/multiscreen/a/g$a;

    sget-object v0, Lcom/roblox/client/signup/multiscreen/a/g$a;->b:Lcom/roblox/client/signup/multiscreen/a/g$a;

    if-eq p1, v0, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->ay()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/roblox/client/signup/multiscreen/a/h;)V
    .locals 4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernamePasswordFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/g$10;->b:[I

    iget-object v2, p1, Lcom/roblox/client/signup/multiscreen/a/h;->b:Lcom/roblox/client/signup/multiscreen/a/h$a;

    invoke-virtual {v2}, Lcom/roblox/client/signup/multiscreen/a/h$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 617
    :pswitch_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_BirthdayMustBeSetFirst:I

    const-string v1, "Authentication_SignUp_Response_BirthdayMustBeSetFirst"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 613
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_UsernameInvalidCharacters"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 614
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 609
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aB:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Ljava/lang/String;)V

    .line 610
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->k()V

    goto/16 :goto_0

    .line 604
    :pswitch_3
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpErrorGeneratingUsername:I

    const-string v1, "Authentication_SignUp_Response_SignUpErrorGeneratingUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 600
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/roblox/client/signup/multiscreen/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 597
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    goto/16 :goto_0

    .line 593
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernamePrivateInfo:I

    const-string v1, "Authentication_SignUp_Response_UsernamePrivateInfo"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 589
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterUsername:I

    const-string v1, "Authentication_SignUp_Response_PleaseEnterUsername"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 590
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 585
    :pswitch_8
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    const-string v1, "Authentication_SignUp_Response_UsernameCannotContainSpaces"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 581
    :pswitch_9
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameTooManyUnderscores:I

    const-string v1, "Authentication_SignUp_Response_UsernameTooManyUnderscores"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 577
    :pswitch_a
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter:I

    const-string v1, "Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto/16 :goto_0

    .line 573
    :pswitch_b
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameInvalidLength:I

    const-string v1, "Authentication_SignUp_Response_UsernameInvalidLength"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 574
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto :goto_0

    .line 569
    :pswitch_c
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameAlreadyInUse:I

    const-string v1, "Authentication_SignUp_Response_UsernameAlreadyInUse"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->h()V

    goto :goto_0

    .line 565
    :pswitch_d
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHint:I

    const-string v1, "Authentication_SignUp_Description_UsernameHint"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Ljava/lang/String;)V

    .line 566
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->k()V

    goto :goto_0

    .line 561
    :pswitch_e
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameExplicit:I

    const-string v1, "Authentication_SignUp_Response_UsernameExplicit"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto :goto_0

    .line 557
    :pswitch_f
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameUnknownError:I

    const-string v1, "Authentication_SignUp_Response_UsernameUnknownError"

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->j()V

    goto :goto_0

    .line 550
    :pswitch_10
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_LooksGreat:I

    const-string v2, "Authentication_SignUp_Response_LooksGreat"

    invoke-direct {p0, v2, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 551
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aC:Lcom/roblox/client/signup/multiscreen/c/g$a;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Lcom/roblox/client/signup/UsernameSignUpEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "showLooksGoodIcon"

    .line 553
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->i()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->av()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/g;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/g;Lcom/roblox/client/signup/multiscreen/a/d;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/signup/multiscreen/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/g;Lcom/roblox/client/signup/multiscreen/a/g;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/signup/multiscreen/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/g;Lcom/roblox/client/signup/multiscreen/a/h;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/signup/multiscreen/a/h;)V

    return-void
.end method

.method public static aq()Lcom/roblox/client/signup/multiscreen/c/g;
    .locals 1

    .line 75
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/g;-><init>()V

    return-object v0
.end method

.method private as()V
    .locals 2

    .line 373
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$a;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-direct {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g$a;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aC:Lcom/roblox/client/signup/multiscreen/c/g$a;

    .line 375
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/g$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/g$7;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 392
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->at:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/g$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/g$8;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private at()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    .line 422
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    .line 423
    invoke-interface {v2}, Lcom/roblox/client/signup/multiscreen/c/g$b;->r()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v2

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/f;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private au()V
    .locals 3

    const-string v0, "UsernamePasswordFragment"

    const-string v1, "callValidatePassword."

    .line 427
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    .line 429
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->at:Landroid/widget/EditText;

    .line 430
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private av()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/f;->j()V

    .line 435
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->f()V

    .line 437
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    invoke-interface {v2}, Lcom/roblox/client/signup/multiscreen/c/g$b;->r()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e/f;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private aw()V
    .locals 4

    .line 454
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->p()Landroid/content/Context;

    move-result-object v0

    .line 455
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 457
    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_TooManyAttemptsText:I

    const-string v3, "CommonUI_Messages_Response_TooManyAttemptsText"

    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater:I

    const-string v3, "Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater"

    .line 459
    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    const-string v3, "CommonUI_Features_Action_Ok"

    .line 461
    invoke-static {v0, v3, v2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/g$9;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/multiscreen/c/g$9;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 468
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method private ax()V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 476
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->b()V

    return-void
.end method

.method private ay()V
    .locals 5

    .line 480
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->p()Landroid/content/Context;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aw:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SignUp:I

    const-string v4, "Authentication_SignUp_Label_SignUp"

    invoke-static {v0, v4, v3}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c()V

    .line 484
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    return-void
.end method

.method private az()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c/g$b;->s()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/components/RbxEditText;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 441
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UsernameContainsInvalidCharacters:I

    const-string v1, "Authentication_SignUp_Response_UsernameContainsInvalidCharacters"

    invoke-static {p1, v1, v0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ay:Ljava/lang/String;

    .line 443
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_UnexpectedErrorText:I

    const-string v1, "Authentication_SignUp_Response_UnexpectedErrorText"

    invoke-static {p1, v1, v0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->az:Ljava/lang/String;

    .line 444
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_BadServerResponseError:I

    const-string v1, "Authentication_SignUp_Response_BadServerResponseError"

    invoke-static {p1, v1, v0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aA:Ljava/lang/String;

    .line 446
    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_Error:I

    const-string v1, "Authentication_SignUp_Response_Error"

    invoke-static {p1, v1, v0}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aB:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V
    .locals 0

    .line 504
    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->at:Landroid/widget/EditText;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 450
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_UnexpectedErrorFormatted:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ax:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/UsernameSignUpEditText;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->ay()V

    return-void
.end method

.method static synthetic i(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/components/RbxProgressButton;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aw:Lcom/roblox/client/components/RbxProgressButton;

    return-object p0
.end method

.method static synthetic j(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->at()V

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->au()V

    return-void
.end method

.method static synthetic l(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/c/g$a;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aC:Lcom/roblox/client/signup/multiscreen/c/g$a;

    return-object p0
.end method

.method static synthetic m(Lcom/roblox/client/signup/multiscreen/c/g;)Ljava/lang/Runnable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aG:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic n(Lcom/roblox/client/signup/multiscreen/c/g;)Ljava/lang/Runnable;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aH:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 116
    sget p3, Lcom/roblox/client/o$g;->username_password_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 118
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p2, p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_agreement:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->r()Landroidx/fragment/app/c;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/roblox/client/ae/a/b;->b(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 123
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 125
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/signup/UsernameSignUpEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 126
    invoke-virtual {p2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    .line 127
    sget p3, Lcom/roblox/client/o$f;->view_signup_username_field:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setId(I)V

    .line 128
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {p2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$f;->view_signup_username_bottom_label:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    .line 129
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    sget p3, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_UsernameHint:I

    const-string v0, "Authentication_SignUp_Description_UsernameHint"

    invoke-direct {p0, v0, p3}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/roblox/client/signup/UsernameSignUpEditText;->c(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->au:Lcom/roblox/client/signup/UsernameSignUpEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$11;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$11;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/b;)V

    .line 137
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 138
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$12;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$12;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 150
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->av:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$13;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$13;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    .line 158
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->at:Landroid/widget/EditText;

    .line 159
    sget p3, Lcom/roblox/client/o$f;->view_signup_password_field:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setId(I)V

    .line 160
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$f;->view_signup_password_bottom_label:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    .line 161
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$14;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$14;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->at:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 179
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->at:Landroid/widget/EditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$15;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$15;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 190
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->as:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$16;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$16;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 204
    sget p2, Lcom/roblox/client/o$f;->fragment_sign_up_username_signup_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aw:Lcom/roblox/client/components/RbxProgressButton;

    .line 205
    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/g$17;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/g$17;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 211
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ax:Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->p()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Landroid/content/Context;)V

    .line 215
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->as()V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 288
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 289
    instance-of v0, p1, Lcom/roblox/client/signup/multiscreen/c/g$b;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lcom/roblox/client/signup/multiscreen/c/g$b;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    return-void

    :cond_0
    const-string v0, "UsernamePasswordFragment"

    const-string v1, "Parent activity does not implement OnFragmentInteractionListener!"

    .line 292
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
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

.method public ar()V
    .locals 0

    .line 686
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->ay()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 10

    .line 222
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    const-string p1, "UsernamePasswordFragment"

    const-string v0, "onCreate"

    .line 223
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance p1, Lcom/roblox/client/signup/multiscreen/f;

    invoke-direct {p1}, Lcom/roblox/client/signup/multiscreen/f;-><init>()V

    .line 226
    new-instance v0, Lcom/roblox/client/signup/multiscreen/e/f$a;

    new-instance v8, Lcom/roblox/client/signup/multiscreen/b/n;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-direct {v1}, Lcom/roblox/client/signup/multiscreen/b/h;-><init>()V

    invoke-direct {v8, p1, v1}, Lcom/roblox/client/signup/multiscreen/b/n;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/h;)V

    new-instance v9, Lcom/roblox/client/signup/multiscreen/b/x;

    new-instance v3, Lcom/roblox/client/signup/multiscreen/b/s;

    .line 232
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/roblox/client/signup/multiscreen/b/s;-><init>(Lcom/roblox/client/s/f;)V

    new-instance v4, Lcom/roblox/client/http/h;

    invoke-direct {v4}, Lcom/roblox/client/http/h;-><init>()V

    new-instance v5, Lcom/roblox/client/signup/multiscreen/b/v;

    .line 234
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/platform/f;->g()Lcom/roblox/platform/http/c/d;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/roblox/client/signup/multiscreen/b/v;-><init>(Lcom/roblox/platform/http/c/d;)V

    .line 235
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v6

    .line 236
    invoke-static {}, Lcom/roblox/client/ad/b;->a()Lcom/roblox/client/ad/b;

    move-result-object v7

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/signup/multiscreen/b/x;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/s;Lcom/roblox/client/http/f;Lcom/roblox/client/signup/multiscreen/b/u;Lcom/roblox/client/ad/c;Lcom/roblox/client/ad/b;)V

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/r;

    new-instance v2, Lcom/roblox/client/signup/multiscreen/b/q;

    invoke-direct {v2}, Lcom/roblox/client/signup/multiscreen/b/q;-><init>()V

    .line 240
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v3

    .line 241
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/roblox/client/signup/multiscreen/b/r;-><init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/q;Lcom/roblox/abtesting/a;Lcom/roblox/client/s/h;)V

    .line 242
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    invoke-direct {v0, v8, v9, v1, p1}, Lcom/roblox/client/signup/multiscreen/e/f$a;-><init>(Lcom/roblox/client/signup/multiscreen/b/m;Lcom/roblox/client/signup/multiscreen/b/w;Lcom/roblox/client/signup/multiscreen/b/r;Lcom/roblox/client/s/f;)V

    .line 226
    invoke-static {p0, v0}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;

    move-result-object p1

    const-class v0, Lcom/roblox/client/signup/multiscreen/e/f;

    .line 243
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/multiscreen/e/f;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    .line 247
    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/f;->b()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$18;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/g$18;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 255
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/f;->c()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/g$2;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 264
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/f;->d()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/g$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/c/g$3;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 300
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    .line 302
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/g;->aE:Lcom/roblox/client/signup/multiscreen/c/g$b;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    return-void
.end method

.method public h()V
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 276
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/f;->h()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 281
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    .line 283
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ax:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 681
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/g;->n(Z)V

    return-void
.end method

.method public n(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->ap()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aF:Lcom/roblox/client/signup/multiscreen/e/f;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/f;->i()V

    :cond_1
    const-string p1, "UsernamePasswordFragment"

    const-string v0, "onSignUpClicked"

    .line 313
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aw:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 316
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->ax()V

    .line 317
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 318
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/g;->p()Landroid/content/Context;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->ax:Landroid/view/View;

    invoke-static {v1}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 321
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/g;->aD:Lcom/roblox/client/signup/multiscreen/c/g$b;

    invoke-interface {v1}, Lcom/roblox/client/signup/multiscreen/c/g$b;->r()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v1

    .line 322
    new-instance v2, Lcom/roblox/client/signup/multiscreen/c/g$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/roblox/client/signup/multiscreen/c/g$4;-><init>(Lcom/roblox/client/signup/multiscreen/c/g;Landroid/os/Handler;Landroid/content/Context;Lcom/roblox/client/signup/multiscreen/a/a;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
