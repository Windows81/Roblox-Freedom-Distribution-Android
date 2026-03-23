.class public Lcom/roblox/client/signup/ActivitySignUp;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/captcha/a$a;
.implements Lcom/roblox/client/signup/a$b;


# instance fields
.field q:Lcom/roblox/client/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/signup/ActivitySignUp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x277d

    .line 132
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    sget v0, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v1, Lcom/roblox/client/o$a;->stay:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/ActivitySignUp;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/roblox/client/signup/ActivitySignUp;->t()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    check-cast v0, Lcom/roblox/client/signup/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/roblox/client/signup/a;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "signup"

    const-string v1, "close"

    .line 90
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/ActivitySignUp;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->finish()V

    const/4 p1, 0x0

    .line 95
    sget v0, Lcom/roblox/client/o$a;->slide_down_short:I

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/signup/ActivitySignUp;->overridePendingTransition(II)V

    return-void
.end method

.method private e(I)V
    .locals 3

    .line 116
    invoke-static {}, Lcom/roblox/client/b;->ca()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "ActivitySignUp"

    if-ne p1, v0, :cond_0

    const-string p1, "SAVE: Credentials saved."

    .line 118
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/roblox/client/signup/ActivitySignUp;->q:Lcom/roblox/client/g/a;

    invoke-interface {p1}, Lcom/roblox/client/g/a;->a()V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVE: Canceled by user or NEVER was clicked. ResultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/roblox/client/signup/ActivitySignUp;->q:Lcom/roblox/client/g/a;

    invoke-interface {p1}, Lcom/roblox/client/g/a;->b()V

    :goto_0
    const/16 p1, 0x66

    .line 125
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    :cond_1
    return-void
.end method

.method private t()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "signup_window"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/roblox/client/b;->ca()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/roblox/client/y/a;

    new-instance v1, Lcom/roblox/client/g/b;

    invoke-direct {v1}, Lcom/roblox/client/g/b;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/y/a;-><init>(Landroid/app/Activity;Lcom/roblox/client/g/b;)V

    iput-object v0, p0, Lcom/roblox/client/signup/ActivitySignUp;->q:Lcom/roblox/client/g/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ActivitySignUp"

    const-string v1, "Invisible captcha success. Sign up again."

    .line 196
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->c()V

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/ActivitySignUp;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-static {}, Lcom/roblox/client/b;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/roblox/client/ae/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/roblox/client/q;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 139
    invoke-static {}, Lcom/roblox/client/b;->ca()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/roblox/client/signup/ActivitySignUp;->q:Lcom/roblox/client/g/a;

    const/16 v1, 0x278a

    new-instance v2, Lcom/roblox/client/g/c;

    invoke-direct {v2, p1, p2}, Lcom/roblox/client/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/roblox/client/signup/ActivitySignUp$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/signup/ActivitySignUp$1;-><init>(Lcom/roblox/client/signup/ActivitySignUp;)V

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/roblox/client/g/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/c;Lcom/roblox/client/g/a$a;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    .line 162
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult: resultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ActivitySignUp"

    invoke-static {v0, p3}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x278a

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/ActivitySignUp;->e(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/roblox/client/o$g;->activity_sign_up:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/ActivitySignUp;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->j()Landroidx/fragment/app/g;

    move-result-object p1

    const-string v0, "signup_window"

    .line 48
    invoke-virtual {p1, v0}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/signup/a;

    if-nez p1, :cond_0

    .line 51
    invoke-static {}, Lcom/roblox/client/signup/a;->aq()Lcom/roblox/client/signup/a;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->j()Landroidx/fragment/app/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$f;->sign_up_content_layout:I

    .line 53
    invoke-virtual {v1, v2, p1, v0}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/k;->c()I

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentSignUp not null. isAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Lcom/roblox/client/signup/a;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Lcom/roblox/client/signup/a;->A()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivitySignUp"

    .line 61
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UnexpectedError"

    .line 62
    invoke-static {v0, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/signup/ActivitySignUp;->u()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/roblox/client/signup/ActivitySignUp;->t()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    check-cast v0, Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->at()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    const/16 v0, 0x67

    .line 168
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    return-void
.end method

.method public s()V
    .locals 4

    const-string v0, "ActivitySignUp"

    const-string v1, "Try invisible captcha."

    .line 178
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Lcom/roblox/client/captcha/SignUpCaptchaConfig;

    invoke-direct {v0}, Lcom/roblox/client/captcha/SignUpCaptchaConfig;-><init>()V

    .line 180
    invoke-static {v0}, Lcom/roblox/client/captcha/a;->a(Lcom/roblox/client/captcha/CaptchaConfig;)Lcom/roblox/client/captcha/a;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->j()Landroidx/fragment/app/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$f;->sign_up_captcha_content_layout:I

    const-string v3, "FragmentFunCaptcha"

    .line 182
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Landroidx/fragment/app/k;->a(Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroidx/fragment/app/k;->c()I

    return-void
.end method
