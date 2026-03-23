.class public Lcom/roblox/client/RobloxWebActivity;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/s/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;
    }
.end annotation


# instance fields
.field protected q:I

.field protected r:I

.field protected s:Landroidx/appcompat/widget/Toolbar;

.field private t:Landroid/content/ServiceConnection;

.field private u:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    .line 81
    new-instance v0, Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;

    invoke-direct {v0, p0}, Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;-><init>(Lcom/roblox/client/RobloxWebActivity;)V

    iput-object v0, p0, Lcom/roblox/client/RobloxWebActivity;->u:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v1, Lcom/roblox/client/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 294
    instance-of v1, v0, Lcom/roblox/client/v;

    if-eqz v1, :cond_0

    .line 295
    check-cast v0, Lcom/roblox/client/v;

    invoke-virtual {v0, p1}, Lcom/roblox/client/v;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "FEATURE_EXTRA"

    .line 308
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "PATH_EXTRA"

    .line 309
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 310
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/RobloxWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 311
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v1, Lcom/roblox/client/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 301
    instance-of v1, v0, Lcom/roblox/client/v;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Lcom/roblox/client/v;

    invoke-virtual {v0}, Lcom/roblox/client/v;->g_()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    const-string v0, "friends?contactupsell=cff"

    .line 317
    invoke-static {v0}, Lcom/roblox/client/ae/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/RobloxWebActivity;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "game_init_params"

    .line 204
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/game/h;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/h;

    move-result-object p1

    .line 205
    invoke-static {p1, p0}, Lcom/roblox/client/a;->a(Lcom/roblox/client/game/h;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string p1, "RobloxActivity"

    const-string v0, "(RobloxWebActivity) handleNotification() Logout event..."

    .line 209
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget p1, Lcom/roblox/client/o$j;->Application_Logout_Response_SorryLoggedOut:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-static {}, Lcom/roblox/client/x/c;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 212
    invoke-static {}, Lcom/roblox/client/s/c;->b()V

    .line 214
    :cond_2
    invoke-static {p2}, Lcom/roblox/client/s/c;->a(Landroid/os/Bundle;)Lcom/roblox/client/s/c$e;

    move-result-object p1

    .line 215
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxWebActivity;->a(Lcom/roblox/client/s/c$e;)V

    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 4

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "FEATURE_EXTRA"

    const-string v2, "CHAT_TAG"

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const-string v3, "CONVERSATION_ID_EXTRA"

    .line 226
    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    const-string v3, "USER_ID_EXTRA"

    .line 229
    invoke-virtual {v0, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    cmp-long v3, p3, v1

    if-nez v3, :cond_2

    cmp-long p3, p1, v1

    if-eqz p3, :cond_3

    :cond_2
    const/4 p1, -0x1

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/RobloxWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    :cond_3
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    return-void
.end method

.method public a(Lcom/roblox/client/ab/e;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    check-cast v0, Lcom/roblox/client/components/RobloxToolbar;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RobloxToolbar;->a(Lcom/roblox/client/ab/e;)V

    .line 162
    invoke-super {p0, p1}, Lcom/roblox/client/q;->a(Lcom/roblox/client/ab/e;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x2785

    if-eq p1, v0, :cond_0

    const/16 v1, 0x2782

    if-ne p1, v1, :cond_3

    :cond_0
    const/16 v1, 0x64

    if-eq p2, v1, :cond_2

    const/16 v1, 0x65

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 331
    invoke-direct {p0}, Lcom/roblox/client/RobloxWebActivity;->p()V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    const-string v0, "FEATURE_EXTRA"

    .line 326
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 327
    invoke-virtual {p0, v0, p3}, Lcom/roblox/client/RobloxWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 334
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-class v1, Lcom/roblox/client/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/v;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/roblox/client/v;->at()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/q;->onBackPressed()V

    .line 170
    iget v0, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    iget v1, p0, Lcom/roblox/client/RobloxWebActivity;->r:I

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/RobloxWebActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public onCloseOverlayEvent(Lcom/roblox/client/l/d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 85
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/roblox/client/o$g;->activity_web:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxWebActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "URL_EXTRA"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TITLE_EXTRA"

    .line 96
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEND_DATA_MODEL_FOCUS_EVENTS_EXTRA"

    .line 97
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "USE_GENERIC_WEB_FRAG_EXTRA"

    .line 98
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    goto/16 :goto_3

    .line 106
    :cond_1
    sget v5, Lcom/roblox/client/o$f;->toolbar:I

    invoke-virtual {p0, v5}, Lcom/roblox/client/RobloxWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar;

    iput-object v5, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    .line 109
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_2

    .line 112
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/l;->c()Lcom/roblox/client/n/b;

    move-result-object v4

    const-string v6, "TITLE_STRING"

    .line 113
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v6, "HAS_PARENT"

    .line 114
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "HIDE_ACCESSORY_BUTTONS_EXTRA"

    .line 115
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "HIDE_ACCESSORY_BUTTONS"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "SEARCH_PARAMS"

    .line 116
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    .line 121
    iput v1, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    .line 122
    iput v1, p0, Lcom/roblox/client/RobloxWebActivity;->r:I

    goto :goto_2

    .line 125
    :cond_2
    new-instance v4, Lcom/roblox/client/v;

    invoke-direct {v4}, Lcom/roblox/client/v;-><init>()V

    .line 126
    iget-object v6, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget v2, Lcom/roblox/client/o$j;->CommonUI_Features_Heading_Roblox_NormalCase:I

    invoke-virtual {p0, v2}, Lcom/roblox/client/RobloxWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {}, Lcom/roblox/client/u;->au()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0}, Lcom/roblox/client/u;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    sget v6, Lcom/roblox/client/o$e;->icon_close:I

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 131
    iget-object v2, p0, Lcom/roblox/client/RobloxWebActivity;->s:Landroidx/appcompat/widget/Toolbar;

    new-instance v6, Lcom/roblox/client/RobloxWebActivity$1;

    invoke-direct {v6, p0}, Lcom/roblox/client/RobloxWebActivity$1;-><init>(Lcom/roblox/client/RobloxWebActivity;)V

    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v2, 0x10a0000

    .line 139
    iput v2, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    .line 140
    sget v2, Lcom/roblox/client/o$a;->slide_down_short:I

    iput v2, p0, Lcom/roblox/client/RobloxWebActivity;->r:I

    :goto_2
    if-eqz v3, :cond_5

    .line 144
    invoke-virtual {v4}, Lcom/roblox/client/v;->g()Landroidx/lifecycle/g;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/RobloxWebActivity;->u:Lcom/roblox/client/RobloxWebActivity$DataModelFocusLifecycleObserver;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->j()Landroidx/fragment/app/g;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v2

    const-string v3, "DEFAULT_URL"

    .line 149
    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "USING_LOGIN_WEB_URL"

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 150
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {v4, v5}, Lcom/roblox/client/v;->g(Landroid/os/Bundle;)V

    .line 153
    sget p1, Lcom/roblox/client/o$f;->web_layout:I

    const-class v0, Lcom/roblox/client/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v4, v0}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    .line 154
    invoke-virtual {v2}, Landroidx/fragment/app/k;->c()I

    :goto_3
    return-void
.end method

.method public onNavigateToConversationEvent(Lcom/roblox/client/l/i;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RWF.onNavigateToConversationEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/roblox/client/l/i;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/roblox/client/l/i;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxActivity"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-wide v0, p1, Lcom/roblox/client/l/i;->a:J

    iget-wide v2, p1, Lcom/roblox/client/l/i;->b:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/roblox/client/RobloxWebActivity;->a(JJ)V

    return-void
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/l/j;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 247
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v1, "ABUSE_REPORT_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p1, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v1, "FRIEND_FINDER_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x2785

    .line 251
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/RobloxWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v1, "UNIVERSAL_FRIENDS_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x2782

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/RobloxWebActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/RobloxWebActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNavigateToLuaEvent(Lcom/roblox/client/v$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    return-void
.end method

.method public onPushNotificationRegistrationFailedEvent(Lcom/roblox/client/l/l;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/j;
    .end annotation

    .line 340
    invoke-virtual {p1}, Lcom/roblox/client/l/l;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PushNotificationRegistrationFailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    sget p1, Lcom/roblox/client/o$j;->Notifications_PushNotifications_Response_UnableToRegisterForPushNotifications:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxWebActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 343
    invoke-direct {p0}, Lcom/roblox/client/RobloxWebActivity;->n()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcom/roblox/client/q;->onResume()V

    .line 195
    invoke-static {}, Lcom/roblox/client/routing/a;->a()Lcom/roblox/client/routing/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/routing/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    .line 177
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxWebActivity;->t:Landroid/content/ServiceConnection;

    .line 178
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/s/e;->a(Lcom/roblox/client/s/e$b;)V

    .line 179
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/roblox/client/RobloxWebActivity;->t:Landroid/content/ServiceConnection;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    .line 185
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/s/e;->b(Lcom/roblox/client/s/e$b;)V

    .line 186
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 187
    invoke-super {p0}, Lcom/roblox/client/q;->onStop()V

    return-void
.end method

.method public onWebSearchEvent(Lcom/roblox/client/l/p;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RWA.onWebSearchEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxActivity"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v0, p1, Lcom/roblox/client/l/p;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p1, Lcom/roblox/client/l/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/roblox/client/u;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p1, Lcom/roblox/client/l/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/roblox/client/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 271
    :cond_2
    iget-object p1, p1, Lcom/roblox/client/l/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/roblox/client/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 268
    :cond_3
    iget-object p1, p1, Lcom/roblox/client/l/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/roblox/client/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 281
    invoke-static {p0}, Lcom/roblox/client/x;->a(Landroid/app/Activity;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxWebActivity;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
