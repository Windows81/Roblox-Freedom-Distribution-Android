.class public Lcom/roblox/client/captcha/a;
.super Lcom/roblox/client/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/captcha/a$a;
    }
.end annotation


# instance fields
.field private aA:Z

.field private aB:Z

.field private aC:Lcom/roblox/client/captcha/CaptchaConfig;

.field private az:Lcom/roblox/client/captcha/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/t;-><init>()V

    return-void
.end method

.method public static a(Lcom/roblox/client/captcha/CaptchaConfig;)Lcom/roblox/client/captcha/a;
    .locals 3

    .line 61
    new-instance v0, Lcom/roblox/client/captcha/a;

    invoke-direct {v0}, Lcom/roblox/client/captcha/a;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "captchaConfig"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/roblox/client/captcha/a;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private au()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/roblox/client/captcha/a;->E()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/captcha/a;->az:Lcom/roblox/client/captcha/a$a;

    invoke-interface {v0}, Lcom/roblox/client/captcha/a$a;->n()V

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, v0}, Lcom/roblox/client/captcha/a;->m(Z)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/roblox/client/t;->F()V

    const-string v0, "FragmentFunCaptcha"

    const-string v1, "onResume."

    .line 104
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 108
    iget-boolean v0, p0, Lcom/roblox/client/captcha/a;->aA:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/roblox/client/captcha/a;->au()V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/roblox/client/t;->G()V

    const-string v0, "FragmentFunCaptcha"

    const-string v1, "onPause."

    .line 116
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/roblox/client/captcha/a;->m(Z)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/t;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/roblox/client/t;->a(Landroid/content/Context;)V

    const-string v0, "FragmentFunCaptcha"

    const-string v1, "onAttach."

    .line 126
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/roblox/client/captcha/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    instance-of v0, v0, Lcom/roblox/client/captcha/a$a;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/roblox/client/captcha/a;->r()Landroidx/fragment/app/c;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/captcha/a$a;

    iput-object p1, p0, Lcom/roblox/client/captcha/a;->az:Lcom/roblox/client/captcha/a$a;

    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/roblox/client/t;->b(Landroid/os/Bundle;)V

    const-string p1, "FragmentFunCaptcha"

    const-string v0, "onCreate."

    .line 71
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/roblox/client/captcha/a;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/roblox/client/captcha/a;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "captchaConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/captcha/CaptchaConfig;

    iput-object p1, p0, Lcom/roblox/client/captcha/a;->aC:Lcom/roblox/client/captcha/CaptchaConfig;

    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/roblox/client/t;->d(Landroid/os/Bundle;)V

    const-string p1, "FragmentFunCaptcha"

    const-string v0, "onActivityCreated."

    .line 87
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/roblox/client/captcha/a;->aC:Lcom/roblox/client/captcha/CaptchaConfig;

    invoke-interface {v0}, Lcom/roblox/client/captcha/CaptchaConfig;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/captcha/a;->at:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load captcha url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/captcha/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/roblox/client/captcha/a;->at:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/roblox/client/captcha/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/roblox/client/t;->f()V

    const-string v0, "FragmentFunCaptcha"

    const-string v1, "onDetach."

    .line 138
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/roblox/client/captcha/a;->aB:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/roblox/client/captcha/a;->az:Lcom/roblox/client/captcha/a$a;

    invoke-interface {v0}, Lcom/roblox/client/captcha/a$a;->p()V

    const-string v0, "captcha"

    const-string v1, "close"

    .line 142
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/roblox/client/captcha/a;->az:Lcom/roblox/client/captcha/a$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/roblox/client/t;->h()V

    const-string v0, "captcha"

    .line 98
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/l/j;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigateToFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentFunCaptcha"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v2, "CAPTCHA_SUCCESS_TAG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 162
    iput-boolean v2, p0, Lcom/roblox/client/captcha/a;->aB:Z

    .line 165
    invoke-virtual {p1}, Lcom/roblox/client/l/j;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "captchaData"

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "captchaToken"

    .line 169
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "captchaProvider"

    .line 170
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/captcha/a;->az:Lcom/roblox/client/captcha/a$a;

    invoke-interface {v1, v0, p1}, Lcom/roblox/client/captcha/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_1
    iget-object p1, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v0, "CAPTCHA_SHOWN_TAG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptchaShown: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/roblox/client/captcha/a;->aA:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean p1, p0, Lcom/roblox/client/captcha/a;->aA:Z

    if-nez p1, :cond_2

    .line 177
    iput-boolean v2, p0, Lcom/roblox/client/captcha/a;->aA:Z

    .line 178
    invoke-direct {p0}, Lcom/roblox/client/captcha/a;->au()V

    :cond_2
    :goto_1
    return-void
.end method
