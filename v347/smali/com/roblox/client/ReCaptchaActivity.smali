.class public Lcom/roblox/client/ReCaptchaActivity;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Landroid/lib/recaptcha/ReCaptcha$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ReCaptchaActivity$a;
    }
.end annotation


# instance fields
.field private m:Ljava/lang/String;

.field private p:Landroid/lib/recaptcha/ReCaptcha;

.field private q:Landroid/widget/ProgressBar;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/Button;

.field private t:Landroid/support/design/widget/TextInputLayout;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->m:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/ReCaptchaActivity;->w:I

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ReCaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    const-string v1, "USERNAME_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "ACTION_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/16 v1, 0x2779

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ReCaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string v1, "USERNAME_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "ACTION_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const/16 v1, 0x2779

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ReCaptchaActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->l()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/ReCaptchaActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->q:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->p:Landroid/lib/recaptcha/ReCaptcha;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/lib/recaptcha/ReCaptcha;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->t:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->p:Landroid/lib/recaptcha/ReCaptcha;

    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/lib/recaptcha/ReCaptcha;->a(Ljava/lang/String;Landroid/lib/recaptcha/ReCaptcha$a;)V

    .line 153
    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->m()V

    .line 170
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->p:Landroid/lib/recaptcha/ReCaptcha;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/lib/recaptcha/ReCaptcha;->setVisibility(I)V

    .line 175
    new-instance v0, Lcom/roblox/client/ReCaptchaActivity$a;

    iget-object v2, p0, Lcom/roblox/client/ReCaptchaActivity;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/ReCaptchaActivity;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/roblox/client/ReCaptchaActivity;->w:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/ReCaptchaActivity$a;-><init>(Lcom/roblox/client/ReCaptchaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/ReCaptchaActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 182
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/roblox/client/p;->b(Landroid/view/View;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->q:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iput-object p2, p0, Lcom/roblox/client/ReCaptchaActivity;->u:Ljava/lang/String;

    .line 161
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->p:Landroid/lib/recaptcha/ReCaptcha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/lib/recaptcha/ReCaptcha;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->s:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0e0127

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 124
    :sswitch_0
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->m()V

    goto :goto_0

    .line 127
    :sswitch_1
    invoke-static {p0}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->l()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/roblox/client/ReCaptchaActivity;->a(II)V

    goto :goto_0

    .line 134
    :sswitch_2
    invoke-static {p0}, Lcom/roblox/client/p;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->k()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/roblox/client/ReCaptchaActivity;->a(II)V

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x7f080072 -> :sswitch_0
        0x7f080171 -> :sswitch_2
        0x7f0801ee -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "ReCaptchaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: savedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->setContentView(I)V

    .line 59
    invoke-static {}, Lcom/roblox/client/b;->R()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->m:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0, v3}, Lcom/roblox/client/ReCaptchaActivity;->a(II)V

    .line 62
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/roblox/client/ReCaptchaActivity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/ReCaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    const-string v1, "USERNAME_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->v:Ljava/lang/String;

    .line 70
    const-string v1, "ACTION_EXTRA"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/ReCaptchaActivity;->w:I

    .line 73
    :cond_1
    iget v0, p0, Lcom/roblox/client/ReCaptchaActivity;->w:I

    if-nez v0, :cond_2

    .line 74
    const-string v0, "ReCaptchaActivity"

    const-string v1, "onCreate: action = NONE. Not enough information to complete captcha."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/roblox/client/ReCaptchaActivity;->finish()V

    goto :goto_0

    .line 79
    :cond_2
    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/lib/recaptcha/ReCaptcha;

    iput-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->p:Landroid/lib/recaptcha/ReCaptcha;

    .line 80
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->q:Landroid/widget/ProgressBar;

    .line 81
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->s:Landroid/widget/Button;

    .line 84
    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/roblox/client/ReCaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->t:Landroid/support/design/widget/TextInputLayout;

    .line 88
    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->t:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->t:Landroid/support/design/widget/TextInputLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 92
    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->r:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/ReCaptchaActivity$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/ReCaptchaActivity$1;-><init>(Lcom/roblox/client/ReCaptchaActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 103
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/roblox/client/ReCaptchaActivity;->s:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/roblox/client/ReCaptchaActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    invoke-direct {p0}, Lcom/roblox/client/ReCaptchaActivity;->k()V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 116
    const-string v0, "captcha"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 117
    return-void
.end method
