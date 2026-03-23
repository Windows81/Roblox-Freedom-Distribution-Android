.class public Lcom/roblox/client/signup/multiscreen/c/b;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/c/b$a;
    }
.end annotation


# static fields
.field private static at:Lcom/roblox/client/signup/multiscreen/c/b$a;


# instance fields
.field private as:Lcom/roblox/client/signup/multiscreen/c/b$a;

.field private au:Landroid/view/View;

.field private av:Lcom/roblox/client/components/RbxProgressButton;

.field private aw:Lcom/roblox/client/components/RbxEditText;

.field private ax:Lcom/roblox/client/components/RbxButton;

.field private ay:Z

.field private az:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/b$1;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/b$1;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/multiscreen/c/b;->at:Lcom/roblox/client/signup/multiscreen/c/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    .line 53
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/b;->at:Lcom/roblox/client/signup/multiscreen/c/b$a;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->as:Lcom/roblox/client/signup/multiscreen/c/b$a;

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/roblox/client/signup/multiscreen/c/b;
    .locals 3

    .line 80
    new-instance v0, Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/c/b;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "credentialBundleKey"

    .line 82
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "credentialTypeBundleKey"

    .line 83
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/b;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/c/b;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->at()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/datastructures/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->at()Ljava/lang/String;

    move-result-object v0

    const-string v1, "modalAction"

    invoke-static {v1, v0, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private as()V
    .locals 3

    .line 259
    new-instance v0, Lcom/roblox/client/signup/multiscreen/e;

    invoke-direct {v0}, Lcom/roblox/client/signup/multiscreen/e;-><init>()V

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->p()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SignUpCodeVerificationFragment"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/signup/multiscreen/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private at()Ljava/lang/String;
    .locals 2

    .line 263
    iget v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->az:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "verifyPhone"

    goto :goto_0

    :cond_0
    const-string v0, "verifyEmail"

    :goto_0
    return-object v0
.end method

.method private au()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->av:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 272
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->av()V

    .line 273
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->au:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 274
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-VAppSignupC-VerifyClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidCode:I

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxEditText;->b(I)V

    .line 279
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->ar()V

    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->at()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verifyButton"

    invoke-static {v1, v2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/c/b;->as:Lcom/roblox/client/signup/multiscreen/c/b$a;

    invoke-interface {v1, v0}, Lcom/roblox/client/signup/multiscreen/c/b$a;->a_(Ljava/lang/String;)V

    return-void
.end method

.method private av()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 289
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->ax:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/c/b;)Lcom/roblox/client/signup/multiscreen/c/b$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->as:Lcom/roblox/client/signup/multiscreen/c/b$a;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/c/b;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->au()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/roblox/client/s;->F()V

    const-string v0, "SignUpCodeVerificationFragment"

    const-string v1, "onResume."

    .line 190
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public G()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/roblox/client/s;->G()V

    const-string v0, "SignUpCodeVerificationFragment"

    const-string v1, "onPause."

    .line 198
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 p3, 0x0

    .line 92
    invoke-virtual {p0, p3}, Lcom/roblox/client/signup/multiscreen/c/b;->b(Z)V

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->az:I

    .line 96
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->n()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->n()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "credentialTypeBundleKey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/signup/multiscreen/c/b;->az:I

    .line 98
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->n()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "credentialBundleKey"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CredentialValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SignUpCodeVerificationFragment"

    invoke-static {v3, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget v1, Lcom/roblox/client/o$g;->code_verification_fragment:I

    invoke-virtual {p1, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    sget p2, Lcom/roblox/client/o$f;->verify_code_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p2, v1, v0}, Lcom/roblox/client/components/RbxTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 106
    sget v3, Lcom/roblox/client/o$f;->verify_code_edit_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/roblox/client/components/RbxTextView;

    .line 107
    sget v4, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_EnterCodeSentFormated:I

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, p3

    invoke-virtual {p0, v4, v5}, Lcom/roblox/client/signup/multiscreen/c/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 108
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 110
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v4, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 111
    invoke-virtual {v3, v5}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget v2, p0, Lcom/roblox/client/signup/multiscreen/c/b;->az:I

    if-ne v2, v0, :cond_1

    .line 114
    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_VerifyPhoneNumber:I

    invoke-virtual {p2, v2}, Lcom/roblox/client/components/RbxTextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 116
    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_VerifyEmail:I

    invoke-virtual {p2, v2}, Lcom/roblox/client/components/RbxTextView;->setText(I)V

    .line 119
    :cond_2
    :goto_0
    sget p2, Lcom/roblox/client/o$f;->verify_code_code_edit_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    .line 120
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, p3

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 121
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/b$2;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/b$2;-><init>(Lcom/roblox/client/signup/multiscreen/c/b;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V

    .line 131
    sget p2, Lcom/roblox/client/o$f;->verify_code_close_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    .line 132
    invoke-virtual {p2, v1, v0}, Lcom/roblox/client/components/RbxButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 133
    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/b$3;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/b$3;-><init>(Lcom/roblox/client/signup/multiscreen/c/b;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget p2, Lcom/roblox/client/o$f;->verify_code_verify_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/b;->av:Lcom/roblox/client/components/RbxProgressButton;

    .line 143
    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/b$4;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/b$4;-><init>(Lcom/roblox/client/signup/multiscreen/c/b;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 150
    sget p2, Lcom/roblox/client/o$f;->verify_code_resend_code_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/b;->ax:Lcom/roblox/client/components/RbxButton;

    .line 151
    sget p3, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_ResendCode:I

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxButton;->setText(I)V

    .line 152
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/b;->ax:Lcom/roblox/client/components/RbxButton;

    new-instance p3, Lcom/roblox/client/signup/multiscreen/c/b$5;

    invoke-direct {p3, p0}, Lcom/roblox/client/signup/multiscreen/c/b$5;-><init>(Lcom/roblox/client/signup/multiscreen/c/b;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b;->au:Landroid/view/View;

    .line 163
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->as()V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 220
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->w()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/roblox/client/signup/multiscreen/c/b$a;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->w()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/multiscreen/c/b$a;

    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b;->as:Lcom/roblox/client/signup/multiscreen/c/b$a;

    return-void

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent fragment must implement OnFragmentInteractionListener."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aq()V
    .locals 1

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->ay:Z

    .line 247
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->a()V

    return-void
.end method

.method public ar()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->av:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v2, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Verify:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 252
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 253
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->ax:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Lcom/roblox/client/s;->d(Landroid/os/Bundle;)V

    const-string p1, "SignUpCodeVerificationFragment"

    const-string v0, "onActivityCreated."

    .line 171
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->c()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFieldError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpCodeVerificationFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/c/b;->ar()V

    .line 242
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 229
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    const-string v0, "SignUpCodeVerificationFragment"

    const-string v1, "onDetach."

    .line 230
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->ay:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->as:Lcom/roblox/client/signup/multiscreen/c/b$a;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c/b$a;->p_()V

    .line 236
    :cond_0
    sget-object v0, Lcom/roblox/client/signup/multiscreen/c/b;->at:Lcom/roblox/client/signup/multiscreen/c/b$a;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->as:Lcom/roblox/client/signup/multiscreen/c/b$a;

    return-void
.end method

.method public h()V
    .locals 4

    .line 178
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    const-string v0, "SignUpCodeVerificationFragment"

    const-string v1, "onStart."

    .line 179
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "aType"

    const-string v3, "shown"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/multiscreen/c/b;->a(Ljava/util/List;)V

    .line 184
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-VAppSignupC-VerifyScreenLoaded"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCodeParsedFromSMS(Lcom/roblox/client/l/o;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignUpCodeVerificationFragment"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/b;->aw:Lcom/roblox/client/components/RbxEditText;

    iget-object v1, p1, Lcom/roblox/client/l/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxEditText;->setTextBoxText(Ljava/lang/String;)V

    .line 298
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/b$6;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/multiscreen/c/b$6;-><init>(Lcom/roblox/client/signup/multiscreen/c/b;Lcom/roblox/client/l/o;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 205
    invoke-super {p0, p1}, Lcom/roblox/client/s;->onDismiss(Landroid/content/DialogInterface;)V

    const-string p1, "SignUpCodeVerificationFragment"

    const-string v0, "onDismiss."

    .line 206
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b;->au:Landroid/view/View;

    invoke-static {p1}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v0, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v1, "aType"

    const-string v2, "dismissed"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(Ljava/util/List;)V

    return-void
.end method
