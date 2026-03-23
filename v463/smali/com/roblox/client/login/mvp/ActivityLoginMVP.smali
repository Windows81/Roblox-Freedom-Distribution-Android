.class public Lcom/roblox/client/login/mvp/ActivityLoginMVP;
.super Lcom/roblox/client/u/f;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ac/a$a;
.implements Lcom/roblox/client/captcha/a$a;
.implements Lcom/roblox/client/login/mvp/a$a;
.implements Lcom/roblox/client/login/mvp/b$c;


# instance fields
.field protected q:Lcom/roblox/client/login/mvp/b$b;

.field protected r:Landroid/content/DialogInterface$OnDismissListener;

.field private t:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/roblox/client/u/f;-><init>()V

    .line 306
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    iput-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->r:Landroid/content/DialogInterface$OnDismissListener;

    .line 340
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$3;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    iput-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->t:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private A()Lcom/roblox/client/login/mvp/a;
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "login_window_mvp"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 173
    instance-of v1, v0, Lcom/roblox/client/login/mvp/a;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Lcom/roblox/client/login/mvp/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)Lcom/roblox/client/login/mvp/a;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()Lcom/roblox/client/login/mvp/a;

    move-result-object p0

    return-object p0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {p1, p2}, Lcom/roblox/client/login/mvp/b$b;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/b$b;->c()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x277f

    .line 217
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    sget v0, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v1, Lcom/roblox/client/o$a;->stay:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptchaCallback: success => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/roblox/client/login/mvp/b$b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(II)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p2}, Lcom/roblox/client/login/mvp/b$b;->a(I)V

    const-string v0, "SAVE: Credentials saved."

    const/4 v1, -0x1

    const-string v2, "rbx.authlogin"

    const/16 v3, 0x2787

    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_0

    .line 137
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SAVE: Canceled by user or NEVER was clicked. ResultCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/b$b;->b()V

    goto :goto_1

    :cond_1
    const/16 v3, 0x2788

    if-ne p1, v3, :cond_3

    if-ne p2, v1, :cond_2

    .line 145
    invoke-static {v2, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "SAVE: Canceled by user or NEVER was clicked."

    .line 147
    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 508
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    .line 511
    invoke-virtual {v0, p1}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroidx/fragment/app/k;->d()I

    .line 515
    :cond_0
    new-instance p1, Landroidx/appcompat/app/b$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/roblox/client/o$j;->Authentication_ResetPassword_Response_CheckEmailToResetPassword:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 516
    invoke-static {p0, v0, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/login/mvp/ActivityLoginMVP$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$7;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$6;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    .line 522
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 528
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCodeVerified: userId => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/login/mvp/b$b;->a(J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "showForgotPasswordAlert:"

    .line 296
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/roblox/client/captcha/LoginCaptchaConfig;)V
    .locals 3

    .line 322
    sget-object v0, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->g()Landroidx/lifecycle/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/g$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCaptchaUI: config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {p1}, Lcom/roblox/client/captcha/a;->a(Lcom/roblox/client/captcha/CaptchaConfig;)Lcom/roblox/client/captcha/a;

    move-result-object p1

    .line 326
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$f;->login_captcha_content_layout:I

    const-string v2, "FragmentFunCaptcha"

    .line 327
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1, v0}, Landroidx/fragment/app/k;->a(Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Landroidx/fragment/app/k;->c()I

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bQ()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/login/mvp/b$b;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    return-void
.end method

.method public a(Lcom/roblox/client/u/a$a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/roblox/client/login/mvp/b$b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Lcom/roblox/client/login/mvp/b$b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Lcom/roblox/client/login/mvp/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->c()V

    const/4 v0, 0x1

    .line 420
    invoke-direct {p0, v0, p1, p2}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-static {p1, p2, p3}, Lcom/roblox/client/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/ac/a;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object p2

    .line 183
    invoke-virtual {p2}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v0, Lcom/roblox/client/o$a;->slide_down_short:I

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p2, p3, v1, v1, v0}, Landroidx/fragment/app/k;->a(IIII)Landroidx/fragment/app/k;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$f;->login_content_layout:I

    const-string v0, "Fragment2SV"

    .line 185
    invoke-virtual {p2, p3, p1, v0}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    const/4 p2, 0x0

    .line 186
    invoke-virtual {p1, p2}, Landroidx/fragment/app/k;->a(Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroidx/fragment/app/k;->c()I

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/roblox/client/b;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lcom/roblox/client/ae/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/roblox/client/u/f;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 5

    .line 442
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 446
    :cond_0
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Landroid/os/Bundle;)V

    .line 468
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const-string v2, "DialogTitle"

    .line 469
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    const-string v2, "DialogMessage"

    .line 470
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    const-string v2, "PositiveButton"

    .line 471
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    const-string v2, "NegativeButton"

    .line 472
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 473
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p1

    .line 476
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$5;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 491
    invoke-virtual {p1}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "WrongCredentialsForgotPassword"

    .line 496
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Android-AppLogin-ForgotPassword-Pressed"

    goto :goto_0

    :cond_0
    const-string v0, "FloodcheckedResetPassword"

    .line 498
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Android-AppLogin-ResetPassword-Pressed"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 503
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/login/mvp/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTwoStepVerificationUI: username = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginClicked:"

    .line 370
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/login/mvp/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d(I)V
    .locals 1

    .line 199
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->finish()V

    .line 201
    sget p1, Lcom/roblox/client/o$a;->slide_down_short:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->overridePendingTransition(II)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishViewWithResult: resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->d(I)V

    return-void
.end method

.method public f(I)V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "showInvalidCredentialsAlert:"

    .line 302
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 303
    invoke-static {p0, p1, v0}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->r:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public g(I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 317
    invoke-static {p0, p1, v0}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e(Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 337
    invoke-static {p0, p1, v0}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->t:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/u/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2781

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(II)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->t()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2787
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-super {p0}, Lcom/roblox/client/u/f;->onBackPressed()V

    goto :goto_0

    :cond_0
    const-string v0, "login"

    const-string v1, "close"

    .line 99
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->d(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/roblox/client/u/f;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "rbx.authlogin"

    const-string v0, "onCreate:"

    .line 64
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget p1, Lcom/roblox/client/o$g;->activity_login:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->r()V

    .line 69
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q()Lcom/roblox/client/login/mvp/LoginPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    return-void
.end method

.method public p()V
    .locals 2

    .line 425
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 426
    invoke-direct {p0, v0, v1, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q()Lcom/roblox/client/login/mvp/LoginPresenter;
    .locals 8

    .line 73
    new-instance v7, Lcom/roblox/client/login/mvp/LoginPresenter;

    .line 75
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/login/mvp/e;

    new-instance v0, Lcom/roblox/client/login/mvp/d;

    .line 77
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/roblox/client/ad/b;->a()Lcom/roblox/client/ad/b;

    move-result-object v4

    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/roblox/client/ae/s;->a(Landroid/content/Context;)Lcom/roblox/client/ae/s;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/login/mvp/d;-><init>(Lcom/roblox/client/ad/c;Lcom/roblox/client/ad/b;Lcom/roblox/client/ae/s;)V

    invoke-direct {v3, v0}, Lcom/roblox/client/login/mvp/e;-><init>(Lcom/roblox/client/login/mvp/d;)V

    .line 80
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->g()Landroidx/lifecycle/g;

    move-result-object v4

    .line 81
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v5

    new-instance v6, Lcom/roblox/client/y/a;

    new-instance v0, Lcom/roblox/client/g/b;

    invoke-direct {v0}, Lcom/roblox/client/g/b;-><init>()V

    invoke-direct {v6, p0, v0}, Lcom/roblox/client/y/a;-><init>(Landroid/app/Activity;Lcom/roblox/client/g/b;)V

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/login/mvp/LoginPresenter;-><init>(Lcom/roblox/client/login/mvp/b$c;Lcom/roblox/client/s/f;Lcom/roblox/client/login/mvp/b$a;Landroidx/lifecycle/g;Lcom/roblox/abtesting/a;Lcom/roblox/client/g/a;)V

    return-object v7
.end method

.method protected r()V
    .locals 4

    .line 160
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "rbx.authlogin"

    const-string v1, "Create a new FragmentLoginMVP..."

    .line 162
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/roblox/client/login/mvp/a;->aq()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$f;->login_content_layout:I

    const-string v3, "login_window_mvp"

    .line 167
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroidx/fragment/app/k;->c()I

    return-void
.end method

.method protected s()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "showResetPassword:"

    .line 191
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "login"

    const-string v1, "forgot_password"

    .line 192
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/resetpassword/ResetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2781

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected t()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onResetPasswordClosed."

    .line 205
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$b;->a()V

    .line 208
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/a;->as()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/a;->ar()V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "rbx.authlogin"

    const-string v1, "showPasswordResetRequestedAlert:"

    .line 259
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->Authentication_ResetPassword_Response_ResetPasswordStarted:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    new-array v3, v2, [Ljava/lang/Object;

    .line 264
    invoke-static {p0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method public w()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onCancelClicked:"

    .line 381
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "login"

    const-string v1, "close"

    .line 382
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->d(I)V

    return-void
.end method

.method public x()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onSignUpClicked:"

    .line 388
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "login"

    const-string v1, "signup"

    .line 389
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x69

    .line 390
    invoke-virtual {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->d(I)V

    return-void
.end method

.method public y()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onForgotPasswordClicked:"

    .line 395
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->s()V

    return-void
.end method

.method public z()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->q:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p0}, Lcom/roblox/client/login/mvp/b$b;->a(Landroid/app/Activity;)V

    return-void
.end method
