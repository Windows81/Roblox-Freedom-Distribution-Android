.class public Lcom/roblox/client/resetpassword/ResetPasswordActivity;
.super Lcom/roblox/client/RobloxWebActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/roblox/client/RobloxWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseOverlayEvent(Lcom/roblox/client/l/d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/roblox/client/resetpassword/ResetPasswordActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/roblox/client/resetpassword/ResetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USING_LOGIN_WEB_URL"

    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    invoke-static {}, Lcom/roblox/client/u;->ah()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TITLE_EXTRA"

    const-string v2, ""

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxWebActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
