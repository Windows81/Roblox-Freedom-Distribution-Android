.class public Lcom/roblox/client/captcha/ActivityFunCaptcha;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/captcha/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/roblox/client/captcha/CaptchaConfig;)Landroid/content/Intent;
    .locals 2

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/captcha/ActivityFunCaptcha;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "captchaConfigKey"

    .line 30
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private d(I)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->finish()V

    return-void
.end method


# virtual methods
.method protected I()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/16 p1, 0x65

    .line 114
    invoke-direct {p0, p1}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->d(I)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/roblox/client/q;->onBackPressed()V

    const/16 v0, 0x66

    .line 85
    invoke-direct {p0, v0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->d(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 39
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/roblox/client/o$g;->activity_captcha:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "captchaConfigKey"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/captcha/CaptchaConfig;

    .line 47
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 50
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$d;->captchaScreenWidth:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    .line 48
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 52
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    float-to-int v1, v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 59
    invoke-virtual {p0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentFunCaptcha"

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    sget v2, Lcom/roblox/client/o$f;->captcha_content:I

    .line 64
    invoke-static {p1}, Lcom/roblox/client/captcha/a;->a(Lcom/roblox/client/captcha/CaptchaConfig;)Lcom/roblox/client/captcha/a;

    move-result-object p1

    .line 62
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/k;->c()I

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/roblox/client/q;->onStop()V

    return-void
.end method

.method public p()V
    .locals 1

    const/16 v0, 0x66

    .line 119
    invoke-direct {p0, v0}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->d(I)V

    return-void
.end method
