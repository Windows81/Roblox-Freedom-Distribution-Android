.class public Lcom/roblox/client/login/ActivityLogin;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/login/a$a;
.implements Lcom/roblox/client/login/c;
.implements Lcom/roblox/client/p/a$a;
.implements Lcom/roblox/client/resetpassword/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    const-string v0, "ActivityLogin"

    const-string v1, "showResetPassword:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "login"

    const-string v1, "forgot_password"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/roblox/client/b;->bh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/resetpassword/ResetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/roblox/client/login/ActivityLogin;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/roblox/client/resetpassword/a;->a()Lcom/roblox/client/resetpassword/a;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f010015

    const v3, 0x7f010013

    .line 133
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/support/v4/app/p;->a(IIII)Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f08011a

    const-string v3, "reset_password_window"

    .line 134
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/login/ActivityLogin;)Lcom/roblox/client/login/a;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->z()Lcom/roblox/client/login/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/login/ActivityLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/16 v1, 0x277f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    const v0, 0x7f010015

    const v1, 0x7f010016

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/ActivityLogin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/roblox/client/login/ActivityLogin;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Lcom/roblox/client/login/ActivityLogin$3;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/login/ActivityLogin$3;-><init>(Lcom/roblox/client/login/ActivityLogin;Landroid/os/Bundle;)V

    .line 316
    new-instance v1, Landroid/support/v7/app/b$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 317
    const-string v2, "DialogTitle"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    const-string v2, "DialogMessage"

    .line 318
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v1

    const-string v2, "PositiveButton"

    .line 319
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v1

    const-string v2, "NegativeButton"

    .line 320
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/roblox/client/login/ActivityLogin$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/ActivityLogin$4;-><init>(Lcom/roblox/client/login/ActivityLogin;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 338
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 339
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/login/ActivityLogin;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->A()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/login/ActivityLogin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/roblox/client/login/ActivityLogin;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    const-string v1, "WrongCredentialsForgotPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const-string v0, "Android-AppLogin-ForgotPassword-Pressed"

    .line 349
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 350
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 352
    :cond_1
    return-void

    .line 345
    :cond_2
    const-string v1, "FloodcheckedResetPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    const-string v0, "Android-AppLogin-ResetPassword-Pressed"

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->z()Lcom/roblox/client/login/a;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/roblox/client/login/a;->b()V

    .line 111
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/roblox/client/p/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/p/a;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f010015

    const v3, 0x7f010013

    .line 115
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/support/v4/app/p;->a(IIII)Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f08011a

    const-string v3, "Fragment2SV"

    .line 116
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 119
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    .line 361
    :cond_0
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0061

    invoke-virtual {p0, v1}, Lcom/roblox/client/login/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00ed

    new-instance v2, Lcom/roblox/client/login/ActivityLogin$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/ActivityLogin$6;-><init>(Lcom/roblox/client/login/ActivityLogin;)V

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/login/ActivityLogin$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/ActivityLogin$5;-><init>(Lcom/roblox/client/login/ActivityLogin;)V

    .line 368
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 374
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 377
    return-void
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/ActivityLogin;->setResult(I)V

    .line 142
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->finish()V

    .line 143
    const/4 v0, 0x0

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/ActivityLogin;->overridePendingTransition(II)V

    .line 144
    return-void
.end method

.method private y()V
    .locals 4

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->z()Lcom/roblox/client/login/a;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const-string v0, "ActivityLogin"

    const-string v1, "Create a new FragmentLogin..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/roblox/client/login/a;->a()Lcom/roblox/client/login/a;

    move-result-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f08011a

    const-string v3, "login_window"

    .line 93
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 95
    return-void
.end method

.method private z()Lcom/roblox/client/login/a;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "login_window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/roblox/client/login/a;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/roblox/client/login/a;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 274
    const-string v0, "ActivityLogin"

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

    .line 275
    invoke-static {}, Lcom/roblox/client/login/b;->a()Lcom/roblox/client/login/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/login/b;->a(J)V

    .line 276
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 214
    const-string v0, "ActivityLogin"

    const-string v1, "showForgotPasswordAlert:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/roblox/client/login/ActivityLogin;->b(Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 239
    const-string v0, "ActivityLogin"

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

    .line 240
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/roblox/client/ReCaptchaActivity;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    const-string v0, "ActivityLogin"

    const-string v1, "onLoginClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/roblox/client/login/b;->a()Lcom/roblox/client/login/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/login/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 171
    const-string v0, "ActivityLogin"

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

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/login/ActivityLogin;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public d(I)V
    .locals 3

    .prologue
    .line 165
    const-string v0, "ActivityLogin"

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

    .line 166
    invoke-direct {p0, p1}, Lcom/roblox/client/login/ActivityLogin;->f(I)V

    .line 167
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/ActivityLogin;->c(I)V

    .line 235
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->z()Lcom/roblox/client/login/a;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/roblox/client/login/a;->b()V

    .line 161
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 177
    const-string v0, "ActivityLogin"

    const-string v1, "showPasswordResetRequestedAlert:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "password_reset_requested"

    .line 181
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0065

    invoke-virtual {p0, v1}, Lcom/roblox/client/login/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00ed

    new-instance v2, Lcom/roblox/client/login/ActivityLogin$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/ActivityLogin$1;-><init>(Lcom/roblox/client/login/ActivityLogin;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    .line 210
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "ActivityLogin"

    const-string v1, "showInvalidCredentialsAlert:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const v0, 0x7f0e004a

    new-instance v1, Lcom/roblox/client/login/ActivityLogin$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/ActivityLogin$2;-><init>(Lcom/roblox/client/login/ActivityLogin;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/ActivityLogin;->a(ILandroid/content/DialogInterface$OnDismissListener;)V

    .line 230
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "ActivityLogin"

    const-string v1, "onCancelClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "login"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/login/ActivityLogin;->f(I)V

    .line 256
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    const-string v0, "ActivityLogin"

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

    .line 80
    const/16 v0, 0x2779

    if-ne p1, v0, :cond_0

    .line 81
    invoke-static {}, Lcom/roblox/client/login/b;->a()Lcom/roblox/client/login/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/roblox/client/login/b;->a(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-super {p0}, Lcom/roblox/client/k;->onBackPressed()V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "login"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/login/ActivityLogin;->f(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v0, "ActivityLogin"

    const-string v1, "onCreate:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/roblox/client/login/ActivityLogin;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->y()V

    .line 53
    invoke-static {}, Lcom/roblox/client/login/b;->a()Lcom/roblox/client/login/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/c;)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 60
    const-string v0, "ActivityLogin"

    const-string v1, "onDestroy: unset the activity from LoginHelper."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/roblox/client/login/b;->a()Lcom/roblox/client/login/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/login/b;->b(Lcom/roblox/client/login/c;)V

    .line 62
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "ActivityLogin"

    const-string v1, "onSignUpClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, "login"

    const-string v1, "signup"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/roblox/client/login/ActivityLogin;->f(I)V

    .line 263
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "ActivityLogin"

    const-string v1, "onForgotPasswordClicked:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/roblox/client/login/ActivityLogin;->A()V

    .line 269
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "ActivityLogin"

    const-string v1, "onResetPasswordClose:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->c()V

    .line 285
    return-void
.end method
