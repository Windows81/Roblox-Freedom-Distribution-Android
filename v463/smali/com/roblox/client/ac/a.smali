.class public Lcom/roblox/client/ac/a;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ac/a$a;
    }
.end annotation


# instance fields
.field private aA:Landroid/widget/TextView;

.field private aB:Landroid/widget/TextView;

.field private aC:Lcom/roblox/client/components/RbxProgressButton;

.field private aD:Lcom/roblox/client/ac/b;

.field private aE:Landroid/view/View$OnTouchListener;

.field protected as:Ljava/lang/String;

.field protected at:Ljava/lang/String;

.field protected au:Ljava/lang/String;

.field protected av:Landroid/widget/CheckBox;

.field protected aw:Landroid/widget/EditText;

.field protected ax:Lcom/roblox/client/ac/a$a;

.field ay:Lcom/roblox/client/ac/b$a;

.field private az:Lcom/roblox/client/components/RbxEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    .line 64
    new-instance v0, Lcom/roblox/client/ac/a$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/ac/a$1;-><init>(Lcom/roblox/client/ac/a;)V

    iput-object v0, p0, Lcom/roblox/client/ac/a;->aE:Landroid/view/View$OnTouchListener;

    .line 188
    new-instance v0, Lcom/roblox/client/ac/a$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/ac/a$4;-><init>(Lcom/roblox/client/ac/a;)V

    iput-object v0, p0, Lcom/roblox/client/ac/a;->ay:Lcom/roblox/client/ac/b$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/ac/a;
    .locals 3

    .line 80
    new-instance v0, Lcom/roblox/client/ac/a;

    invoke-direct {v0}, Lcom/roblox/client/ac/a;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nonce"

    .line 83
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mediaType"

    .line 84
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "username"

    .line 85
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/roblox/client/ac/a;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private ar()V
    .locals 4

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Lcom/roblox/client/ac/a;->m(Z)V

    .line 264
    iget-object v0, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/roblox/client/ac/a;->aD:Lcom/roblox/client/ac/b;

    iget-object v1, p0, Lcom/roblox/client/ac/a;->au:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/ac/a;->as:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/ac/a;->ay:Lcom/roblox/client/ac/b$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/ac/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/ac/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 126
    sget p3, Lcom/roblox/client/o$g;->fragment_2_sv:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 128
    sget p2, Lcom/roblox/client/o$f;->edittext_verify_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/ac/a;->az:Lcom/roblox/client/components/RbxEditText;

    .line 129
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    .line 130
    new-instance p3, Lcom/roblox/client/ac/a$2;

    invoke-direct {p3, p0}, Lcom/roblox/client/ac/a$2;-><init>(Lcom/roblox/client/ac/a;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 140
    sget p2, Lcom/roblox/client/o$f;->textview_2sv_resend_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/roblox/client/ac/a;->aA:Landroid/widget/TextView;

    .line 141
    sget p2, Lcom/roblox/client/o$f;->textview_2sv_support:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/roblox/client/ac/a;->aB:Landroid/widget/TextView;

    .line 142
    sget p2, Lcom/roblox/client/o$f;->button_verify_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/ac/a;->aC:Lcom/roblox/client/components/RbxProgressButton;

    .line 143
    sget p2, Lcom/roblox/client/o$f;->checkbox_2sv_trust_device:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/roblox/client/ac/a;->av:Landroid/widget/CheckBox;

    .line 145
    sget p2, Lcom/roblox/client/o$f;->textview_2sv_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 146
    sget p3, Lcom/roblox/client/o$f;->textview_2sv_verification:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 147
    sget v1, Lcom/roblox/client/o$f;->imageview_2sv_logo:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 150
    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->p()Landroid/content/Context;

    move-result-object v2

    .line 151
    sget v3, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_RobloxSupport:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 153
    iget-object v3, p0, Lcom/roblox/client/ac/a;->aA:Landroid/widget/TextView;

    sget v4, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Action_ResendCode:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, p0, Lcom/roblox/client/ac/a;->aC:Lcom/roblox/client/components/RbxProgressButton;

    sget v4, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Action_Verify:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/roblox/client/components/RbxProgressButton;->setText(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/roblox/client/ac/a;->az:Lcom/roblox/client/components/RbxEditText;

    sget v4, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_EnterCode:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 156
    sget v3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_EnterEmailCode:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/roblox/client/ac/a;->av:Landroid/widget/CheckBox;

    sget v4, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_TrustThisDevice:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget v3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_TwoStepVerification:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    sget p3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_TwoStepVerification:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p3, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p3, p0, Lcom/roblox/client/ac/a;->aC:Lcom/roblox/client/components/RbxProgressButton;

    sget v3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_TwoStepVerification:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/roblox/client/components/RbxProgressButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    sget p3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_NeedHelp:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v8, v4, v0

    invoke-static {v2, p3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 163
    invoke-virtual {p3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 164
    new-instance v4, Lcom/roblox/client/ae/a/d;

    invoke-static {}, Lcom/roblox/client/u;->W()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->r()Landroidx/fragment/app/c;

    move-result-object v7

    .line 165
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int v10, v9, v5

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/roblox/client/ae/a/d;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 166
    iget-object v5, p0, Lcom/roblox/client/ac/a;->aB:Landroid/widget/TextView;

    new-array v3, v3, [Lcom/roblox/client/ae/a/a;

    aput-object v4, v3, v0

    invoke-static {v5, p3, v3}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    .line 169
    iget-object p3, p0, Lcom/roblox/client/ac/a;->at:Ljava/lang/String;

    const-string v3, "Sms"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 170
    sget p3, Lcom/roblox/client/o$e;->two_step_verification_logo_sms:I

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    sget p3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Label_EnterTextCode:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p3, v0}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    iget-object p2, p0, Lcom/roblox/client/ac/a;->aA:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p2, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 178
    iget-object p2, p0, Lcom/roblox/client/ac/a;->aC:Lcom/roblox/client/components/RbxProgressButton;

    new-instance p3, Lcom/roblox/client/ac/a$3;

    invoke-direct {p3, p0}, Lcom/roblox/client/ac/a$3;-><init>(Lcom/roblox/client/ac/a;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    const-string v0, "Fragment2SV"

    const-string v1, "onAttach()"

    .line 94
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    instance-of v0, p1, Lcom/roblox/client/ac/a$a;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/roblox/client/ac/a$a;

    iput-object p1, p0, Lcom/roblox/client/ac/a;->ax:Lcom/roblox/client/ac/a$a;

    return-void

    .line 98
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

.method protected a(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/roblox/client/ac/a;->az:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aC:Lcom/roblox/client/components/RbxProgressButton;

    sget-object p2, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->p()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Action_Verify:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aA:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aB:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method protected aq()V
    .locals 8

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/roblox/client/ac/a;->m(Z)V

    .line 247
    iget-object v1, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/ac/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/roblox/client/ac/a;->av:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 252
    iget-object v2, p0, Lcom/roblox/client/ac/a;->aD:Lcom/roblox/client/ac/b;

    iget-object v3, p0, Lcom/roblox/client/ac/a;->au:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/roblox/client/ac/a;->as:Ljava/lang/String;

    iget-object v7, p0, Lcom/roblox/client/ac/a;->ay:Lcom/roblox/client/ac/b$a;

    invoke-virtual/range {v2 .. v7}, Lcom/roblox/client/ac/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/roblox/client/ac/b$a;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->p()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$j;->Authentication_TwoStepVerification_Response_TwoStepEmptyCode:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/ac/a;->a(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/ac/a;->as:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mediaType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/ac/a;->at:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/roblox/client/ac/a;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/ac/a;->au:Ljava/lang/String;

    .line 117
    new-instance p1, Lcom/roblox/client/ac/b;

    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/http/h;

    invoke-direct {v1}, Lcom/roblox/client/http/h;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/roblox/client/ac/b;-><init>(Lcom/roblox/client/s/f;Lcom/roblox/client/http/f;)V

    iput-object p1, p0, Lcom/roblox/client/ac/a;->aD:Lcom/roblox/client/ac/b;

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 0

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    const-string v0, "Fragment2SV"

    const-string v1, "onDetach()"

    .line 105
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/roblox/client/ac/a;->ax:Lcom/roblox/client/ac/a$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 311
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    const-string v0, "twoStepVerification"

    .line 313
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected m(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aC:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/ac/a;->az:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 282
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 283
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aA:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/roblox/client/ac/a;->aE:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/roblox/client/ac/a;->aE:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 287
    iget-object p1, p0, Lcom/roblox/client/ac/a;->aw:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/roblox/client/o$f;->textview_2sv_resend_code:I

    if-ne p1, v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/roblox/client/ac/a;->ar()V

    :cond_0
    return-void
.end method
