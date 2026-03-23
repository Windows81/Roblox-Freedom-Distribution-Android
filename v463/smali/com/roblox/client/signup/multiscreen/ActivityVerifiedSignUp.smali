.class public Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/captcha/a$a;
.implements Lcom/roblox/client/phonenumber/a$a;
.implements Lcom/roblox/client/signup/multiscreen/c/a$a;
.implements Lcom/roblox/client/signup/multiscreen/c/c$a;
.implements Lcom/roblox/client/signup/multiscreen/c/d$a;
.implements Lcom/roblox/client/signup/multiscreen/c/g$b;


# instance fields
.field private q:Landroidx/appcompat/app/a;

.field private r:Lcom/roblox/client/signup/multiscreen/d;

.field private s:Lcom/roblox/client/signup/multiscreen/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method private A()V
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->y()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/e;

    if-eqz v1, :cond_0

    const-string v1, "ActivitySignUpMultiScreen"

    const-string v2, "Captcha failed."

    .line 191
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/e;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c/e;->ar()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    .line 197
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->y()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/e;

    if-eqz v1, :cond_0

    const-string v1, "ActivitySignUpMultiScreen"

    const-string v2, "Trigger SignUp after captcha success."

    .line 199
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/client/signup/multiscreen/c/e;->m(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Flow not recognized when starting multiscreen.ActivitySignUp."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FlowBundleKey"

    .line 249
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x277d

    .line 250
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    sget p1, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v0, Lcom/roblox/client/o$a;->stay:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->e(I)V

    return-void
.end method

.method private d(I)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/roblox/client/b;->cb()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "ActivitySignUpMultiScreen"

    if-ne p1, v0, :cond_0

    const-string p1, "SAVE: Credentials saved."

    .line 145
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/a;->a(Z)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVE: Canceled by user or NEVER was clicked. ResultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/a;->a(Z)V

    :goto_0
    const/16 p1, 0x66

    .line 152
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->e(I)V

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 205
    invoke-static {}, Lcom/roblox/client/b;->cb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    const/16 v3, 0x278a

    new-instance v6, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp$1;

    invoke-direct {v6, p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp$1;-><init>(Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;)V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/roblox/client/signup/multiscreen/e/a;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/g/a$a;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    .line 229
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->e(I)V

    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 1

    .line 157
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->finish()V

    .line 159
    sget p1, Lcom/roblox/client/o$a;->slide_down_short:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->overridePendingTransition(II)V

    return-void
.end method

.method private y()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "UsernamePasswordFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "PhoneNumberFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "EmailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private z()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "PhoneNumberFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/roblox/client/phonenumber/PhonePrefix;)V
    .locals 2

    const-string v0, "ActivitySignUpMultiScreen"

    const-string v1, "onPhonePrefixSelected."

    .line 338
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->a(I)V

    .line 340
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/d;->a()V

    .line 341
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->z()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 342
    instance-of v1, v0, Lcom/roblox/client/signup/multiscreen/c/d;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/c/d;->a(Lcom/roblox/client/phonenumber/PhonePrefix;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/e/a;->a(Lcom/roblox/client/signup/multiscreen/a/a;)V

    .line 259
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/d;->c()V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/a;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/d;->a(Lcom/roblox/client/signup/multiscreen/a/a;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/signup/multiscreen/a/e;Ljava/lang/String;)V
    .locals 0

    .line 315
    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/a/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "ActivitySignUpMultiScreen"

    const-string p2, "Captcha success. Sign up again."

    .line 300
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/d;->a()V

    .line 302
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->B()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l_()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->a(I)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x278a

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0, p2}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->d(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 65
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/roblox/client/o$g;->activity_sign_up_multi_screen:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->setContentView(I)V

    .line 68
    new-instance v0, Lcom/roblox/client/signup/multiscreen/e/a$a;

    new-instance v1, Lcom/roblox/client/y/a;

    new-instance v2, Lcom/roblox/client/g/b;

    invoke-direct {v2}, Lcom/roblox/client/g/b;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/y/a;-><init>(Landroid/app/Activity;Lcom/roblox/client/g/b;)V

    invoke-direct {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/a$a;-><init>(Lcom/roblox/client/g/a;)V

    invoke-static {p0, v0}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/c;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;

    move-result-object v0

    const-class v1, Lcom/roblox/client/signup/multiscreen/e/a;

    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/multiscreen/e/a;

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    .line 72
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FlowBundleKey"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/a;->a(I)V

    .line 75
    sget v0, Lcom/roblox/client/o$f;->sign_up_multiscreen_toolbar_include:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 77
    sget v1, Lcom/roblox/client/o$c;->activityBackground:I

    invoke-static {p0, v1}, Landroidx/core/a/b;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 78
    sget v1, Lcom/roblox/client/o$f;->toolbar_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    sget v2, Lcom/roblox/client/o$c;->black:I

    invoke-static {p0, v2}, Landroidx/core/a/b;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_1

    .line 87
    sget v1, Lcom/roblox/client/o$e;->back_arrow_sign_up:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->b(I)V

    .line 88
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/a;->c(Z)V

    .line 89
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/a;->b(Z)V

    .line 90
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->a(I)V

    .line 94
    :cond_1
    new-instance v0, Lcom/roblox/client/signup/multiscreen/d;

    sget v1, Lcom/roblox/client/o$f;->multi_screen_sign_up_container:I

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/multiscreen/d;-><init>(Landroidx/appcompat/app/c;I)V

    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    if-nez p1, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/d;->b()V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/a/a;

    const-string v2, "BirthYearBundleKey"

    const/4 v3, -0x1

    .line 100
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "BirthMonthBundleKey"

    .line 101
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "BirthDayBundleKey"

    .line 102
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v1, v2, v4, p1}, Lcom/roblox/client/signup/multiscreen/a/a;-><init>(III)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/e/a;->a(Lcom/roblox/client/signup/multiscreen/a/a;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 128
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->j()Landroidx/fragment/app/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/g;->d()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 124
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->e(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/a;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget v1, v0, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    const-string v2, "BirthDayBundleKey"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget v1, v0, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    const-string v2, "BirthMonthBundleKey"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget v0, v0, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    const-string v1, "BirthYearBundleKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "ActivitySignUpMultiScreen"

    const-string v1, "Captcha dismissed."

    .line 307
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->A()V

    return-void
.end method

.method public q()V
    .locals 1

    const/16 v0, 0x67

    .line 268
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->e(I)V

    return-void
.end method

.method public r()Lcom/roblox/client/signup/multiscreen/a/a;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/a;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 2

    const-string v0, "ActivitySignUpMultiScreen"

    const-string v1, "Try invisible captcha."

    .line 285
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/d;->e()V

    return-void
.end method

.method public t()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->q:Landroidx/appcompat/app/a;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_SelectCountry:I

    const-string v2, "Authentication_SignUp_Label_SelectCountry"

    invoke-static {p0, v2, v1}, Lcom/roblox/client/locale/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/d;->d()V

    return-void
.end method

.method public u()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/e/a;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/d;->b(Lcom/roblox/client/signup/multiscreen/a/a;)V

    return-void
.end method

.method public v()V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s()V

    return-void
.end method

.method public w()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->r:Lcom/roblox/client/signup/multiscreen/d;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s:Lcom/roblox/client/signup/multiscreen/e/a;

    invoke-virtual {v1}, Lcom/roblox/client/signup/multiscreen/e/a;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/d;->a(Lcom/roblox/client/signup/multiscreen/a/a;)V

    return-void
.end method

.method public x()V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityVerifiedSignUp;->s()V

    return-void
.end method
