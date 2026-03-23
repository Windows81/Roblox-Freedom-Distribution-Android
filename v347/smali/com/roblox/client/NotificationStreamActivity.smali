.class public Lcom/roblox/client/NotificationStreamActivity;
.super Lcom/roblox/client/RobloxWebActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/roblox/client/RobloxWebActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f0b0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 44
    const v0, 0x7f080020

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 45
    const v1, 0x7f070763

    const v2, 0x7f070764

    invoke-static {p0, v1, v2}, Lcom/roblox/client/components/p;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 46
    new-instance v1, Lcom/roblox/client/NotificationStreamActivity$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/NotificationStreamActivity$1;-><init>(Lcom/roblox/client/NotificationStreamActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    const-string v1, "FEATURE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "PATH_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/NotificationStreamActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/roblox/client/NotificationStreamActivity;->finish()V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/roblox/client/NotificationStreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    const-string v1, "URL_EXTRA"

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->notificationStreamUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lcom/roblox/client/b;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const-string v1, "TITLE_EXTRA"

    invoke-static {p0}, Lcom/roblox/client/locale/g;->a(Landroid/content/Context;)Lcom/roblox/client/locale/g;

    move-result-object v2

    const-string v3, "CommonUI_Features_Label_Notifications"

    invoke-virtual {v2, v3}, Lcom/roblox/client/locale/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lcom/roblox/client/NotificationStreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 39
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/NotificationStreamActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/NotificationStreamActivity;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 40
    return-void

    .line 33
    :cond_1
    const-string v1, "TITLE_EXTRA"

    const v2, 0x7f0e0110

    invoke-virtual {p0, v2}, Lcom/roblox/client/NotificationStreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/e/q;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 67
    const-string v0, "PROFILE_TAG"

    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-wide v0, p1, Lcom/roblox/client/e/q;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/roblox/client/e/q;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/NotificationStreamActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_1
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->profileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/NotificationStreamActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
