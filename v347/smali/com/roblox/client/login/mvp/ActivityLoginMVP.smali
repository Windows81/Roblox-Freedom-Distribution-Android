.class public Lcom/roblox/client/login/mvp/ActivityLoginMVP;
.super Lcom/roblox/client/l/f;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/login/mvp/a$a;
.implements Lcom/roblox/client/login/mvp/b$c;
.implements Lcom/roblox/client/p/a$a;
.implements Lcom/roblox/client/resetpassword/a$a;


# instance fields
.field private p:Lcom/roblox/client/login/mvp/b$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/l/f;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "rbx.authlogin"

    const-string v1, "onResetPasswordClosed."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->p:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$b;->a()V

    .line 154
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->y()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/a;->c()V

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)Lcom/roblox/client/login/mvp/a;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->y()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const/16 v1, 0x277f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    const v0, 0x7f010015

    const v1, 0x7f010016

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Landroid/os/Bundle;)V

    .line 377
    new-instance v1, Landroid/support/v7/app/b$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 378
    const-string v2, "DialogTitle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    const-string v2, "DialogMessage"

    .line 379
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    const-string v2, "PositiveButton"

    .line 380
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v1

    const-string v2, "NegativeButton"

    .line 381
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 382
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 384
    new-instance v1, Lcom/roblox/client/login/mvp/ActivityLoginMVP$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$5;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 399
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->z()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-static {p1, p2, p3}, Lcom/roblox/client/p/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/p/a;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f010015

    const v3, 0x7f010013

    .line 119
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/support/v4/app/p;->a(IIII)Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f08011a

    const-string v3, "Fragment2SV"

    .line 120
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 123
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    const-string v1, "WrongCredentialsForgotPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    const-string v0, "Android-AppLogin-ForgotPassword-Pressed"

    .line 410
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 411
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 413
    :cond_1
    return-void

    .line 406
    :cond_2
    const-string v1, "FloodcheckedResetPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string v0, "Android-AppLogin-ResetPassword-Pressed"

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 422
    :cond_0
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0061

    invoke-virtual {p0, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00ed

    new-instance v2, Lcom/roblox/client/login/mvp/ActivityLoginMVP$7;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$7;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    .line 423
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/login/mvp/ActivityLoginMVP$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$6;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    .line 429
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 438
    return-void
.end method

.method private h(I)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->finish()V

    .line 147
    const/4 v0, 0x0

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->overridePendingTransition(II)V

    .line 148
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->y()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    const-string v0, "rbx.authlogin"

    const-string v1, "Create a new FragmentLoginMVP..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/roblox/client/login/mvp/a;->a()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f08011a

    const-string v3, "login_window_mvp"

    .line 102
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 104
    return-void
.end method

.method private y()Lcom/roblox/client/login/mvp/a;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "login_window_mvp"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lcom/roblox/client/login/mvp/a;

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Lcom/roblox/client/login/mvp/a;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    const-string v0, "rbx.authlogin"

    const-string v1, "showResetPassword:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "login"

    const-string v1, "forgot_password"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/roblox/client/b;->bh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/resetpassword/ResetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const/16 v1, 0x2781

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/roblox/client/resetpassword/a;->a()Lcom/roblox/client/resetpassword/a;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f010015

    const v3, 0x7f010013

    .line 137
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/support/v4/app/p;->a(IIII)Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f08011a

    const-string v3, "reset_password_window"

    .line 138
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 323
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCodeVerified: userId => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->p:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/login/mvp/b$b;->a(J)V

    .line 325
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 242
    const-string v0, "rbx.authlogin"

    const-string v1, "showForgotPasswordAlert:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method public a(Lcom/roblox/client/l/a$a;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public a(Lcom/roblox/client/login/mvp/b$b;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->p:Lcom/roblox/client/login/mvp/b$b;

    .line 172
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/roblox/client/login/mvp/b$b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Lcom/roblox/client/login/mvp/b$b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 267
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReCaptchaUI: username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/roblox/client/ReCaptchaActivity;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 296
    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->p:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/login/mvp/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTwoStepVerificationUI: username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->y()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Lcom/roblox/client/login/mvp/a;->a(Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 3

    .prologue
    .line 189
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishViewWithResult: resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->h(I)V

    .line 191
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    .line 248
    const-string v0, "rbx.authlogin"

    const-string v1, "showInvalidCredentialsAlert:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$2;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(ILandroid/content/DialogInterface$OnDismissListener;)V

    .line 258
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->c(I)V

    .line 263
    return-void
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$3;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(ILandroid/content/DialogInterface$OnDismissListener;)V

    .line 282
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->y()Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/a;->b()V

    .line 185
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "rbx.authlogin"

    const-string v1, "showPasswordResetRequestedAlert:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "password_reset_requested"

    .line 209
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0065

    invoke-virtual {p0, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00ed

    new-instance v2, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "rbx.authlogin"

    const-string v1, "onCancelClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "login"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->h(I)V

    .line 305
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "rbx.authlogin"

    const-string v1, "onSignUpClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v0, "login"

    const-string v1, "signup"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->h(I)V

    .line 312
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/l/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v0, 0x2779

    if-ne p1, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->p:Lcom/roblox/client/login/mvp/b$b;

    invoke-interface {v0, p2}, Lcom/roblox/client/login/mvp/b$b;->a(I)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/16 v0, 0x2781

    if-ne p1, v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    invoke-super {p0}, Lcom/roblox/client/l/f;->onBackPressed()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "login"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->h(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/roblox/client/l/f;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "rbx.authlogin"

    const-string v1, "onCreate:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->w()V

    .line 61
    new-instance v0, Lcom/roblox/client/login/mvp/LoginPresenter;

    .line 63
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/login/mvp/e;

    new-instance v3, Lcom/roblox/client/login/mvp/d;

    .line 65
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v4

    .line 66
    invoke-static {}, Lcom/roblox/client/q/c;->a()Lcom/roblox/client/q/c;

    move-result-object v5

    .line 67
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;)Lcom/roblox/client/util/m;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/roblox/client/login/mvp/d;-><init>(Lcom/roblox/client/q/d;Lcom/roblox/client/q/c;Lcom/roblox/client/util/m;)V

    invoke-direct {v2, v3}, Lcom/roblox/client/login/mvp/e;-><init>(Lcom/roblox/client/login/mvp/d;)V

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->getLifecycle()Landroid/arch/lifecycle/d;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/roblox/client/login/mvp/LoginPresenter;-><init>(Lcom/roblox/client/login/mvp/b$c;Lcom/roblox/client/i/f;Lcom/roblox/client/login/mvp/b$a;Landroid/arch/lifecycle/d;)V

    iput-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->p:Lcom/roblox/client/login/mvp/b$b;

    .line 69
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "rbx.authlogin"

    const-string v1, "onForgotPasswordClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->z()V

    .line 318
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "rbx.authlogin"

    const-string v1, "onResetPasswordClose."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 336
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->A()V

    .line 337
    return-void
.end method
