.class public Lcom/roblox/client/RobloxWebActivity;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/i/e$c;


# instance fields
.field private m:Landroid/content/ServiceConnection;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/RobloxWebActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/roblox/client/RobloxWebActivity;->p:I

    return v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 238
    instance-of v1, v0, Lcom/roblox/client/n;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lcom/roblox/client/n;

    invoke-virtual {v0, p1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    const-string v1, "FEATURE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "PATH_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/RobloxWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 249
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/RobloxWebActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    return v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 143
    sparse-switch p1, :sswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 145
    :sswitch_0
    const-string v0, "game_init_params"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 146
    invoke-static {v0, p0}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/game/a;Landroid/app/Activity;)V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 152
    const v0, 0x7f0e000e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    sget-object v0, Lcom/roblox/client/startup/e;->h:Lcom/roblox/client/startup/e;

    invoke-static {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxWebActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(JJ)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    const-string v1, "FEATURE_EXTRA"

    const-string v2, "CHAT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    cmp-long v1, p1, v4

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "CONVERSATION_ID_EXTRA"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    :cond_0
    cmp-long v1, p3, v4

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "USER_ID_EXTRA"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    :cond_1
    cmp-long v1, p3, v4

    if-nez v1, :cond_2

    cmp-long v1, p1, v4

    if-eqz v1, :cond_3

    .line 174
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/RobloxWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 177
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 253
    if-ne p2, v1, :cond_0

    .line 254
    if-eqz p3, :cond_0

    const-string v0, "FEATURE_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, v1, p3}, Lcom/roblox/client/RobloxWebActivity;->setResult(ILandroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 259
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/n;

    .line 119
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/n;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/k;->onBackPressed()V

    .line 121
    iget v0, p0, Lcom/roblox/client/RobloxWebActivity;->p:I

    iget v1, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/RobloxWebActivity;->overridePendingTransition(II)V

    .line 123
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxWebActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 58
    if-eqz v5, :cond_4

    .line 59
    const-string v0, "URL_EXTRA"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v0, "TITLE_EXTRA"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v0, "USE_STANDARD_OPTIONS_EXTRA"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move-object v4, v2

    move v2, v0

    .line 64
    :goto_0
    if-nez v4, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 114
    :goto_1
    return-void

    .line 69
    :cond_0
    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 72
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 74
    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Lcom/roblox/client/f/d;

    invoke-direct {v2}, Lcom/roblox/client/f/d;-><init>()V

    .line 76
    const-string v7, "TITLE_STRING"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "HAS_PARENT"

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 83
    iput v3, p0, Lcom/roblox/client/RobloxWebActivity;->p:I

    .line 84
    iput v3, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    move-object v0, v2

    .line 106
    :goto_2
    invoke-virtual {p0}, Lcom/roblox/client/RobloxWebActivity;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 107
    const-string v2, "DEFAULT_URL"

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "USING_LOGIN_WEB_URL"

    const-string v4, "USING_LOGIN_WEB_URL"

    .line 109
    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 108
    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {v0, v6}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 111
    const v2, 0x7f080200

    const-class v3, Lcom/roblox/client/n;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 112
    invoke-virtual {v1}, Landroid/support/v4/app/p;->c()I

    goto :goto_1

    .line 87
    :cond_1
    new-instance v2, Lcom/roblox/client/n;

    invoke-direct {v2}, Lcom/roblox/client/n;-><init>()V

    .line 88
    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isShowVisibleAge()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->ageVisibilityText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    const v1, 0x7f070732

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 93
    new-instance v1, Lcom/roblox/client/RobloxWebActivity$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/RobloxWebActivity$1;-><init>(Lcom/roblox/client/RobloxWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const/high16 v0, 0x10a0000

    iput v0, p0, Lcom/roblox/client/RobloxWebActivity;->p:I

    .line 102
    const v0, 0x7f010013

    iput v0, p0, Lcom/roblox/client/RobloxWebActivity;->q:I

    move-object v0, v2

    goto :goto_2

    .line 88
    :cond_3
    const v1, 0x7f0e00f1

    invoke-virtual {p0, v1}, Lcom/roblox/client/RobloxWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move v2, v3

    move-object v4, v1

    goto/16 :goto_0
.end method

.method public onNavigateToConversationEvent(Lcom/roblox/client/e/p;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 182
    const-string v0, "RobloxActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RWF.onNavigateToConversationEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/roblox/client/e/p;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/roblox/client/e/p;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-wide v0, p1, Lcom/roblox/client/e/p;->a:J

    iget-wide v2, p1, Lcom/roblox/client/e/p;->b:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/roblox/client/RobloxWebActivity;->a(JJ)V

    .line 184
    return-void
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/e/q;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 189
    const-string v0, "ABUSE_REPORT_TAG"

    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    const v1, 0x7f0e00f0

    invoke-virtual {p0, v1}, Lcom/roblox/client/RobloxWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "FRIEND_FINDER_TAG"

    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/contacts/ActivityContacts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxWebActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :cond_1
    const-string v0, "PROFILE_TAG"

    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-wide v0, p1, Lcom/roblox/client/e/q;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 198
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

    .line 204
    :goto_1
    iget-object v1, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/RobloxWebActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    goto :goto_1

    .line 202
    :cond_3
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->profileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 206
    :cond_4
    iget-object v0, p1, Lcom/roblox/client/e/q;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/roblox/client/e/q;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/RobloxWebActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 128
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxWebActivity;->m:Landroid/content/ServiceConnection;

    .line 129
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->a(Lcom/roblox/client/i/e$c;)V

    .line 130
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/roblox/client/RobloxWebActivity;->m:Landroid/content/ServiceConnection;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    .line 136
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->b(Lcom/roblox/client/i/e$c;)V

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 138
    invoke-super {p0}, Lcom/roblox/client/k;->onStop()V

    .line 139
    return-void
.end method

.method public onWebSearchEvent(Lcom/roblox/client/e/aa;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 213
    const-string v0, "RobloxActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RWA.onWebSearchEvent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    .line 215
    iget v1, p1, Lcom/roblox/client/e/aa;->a:I

    packed-switch v1, :pswitch_data_0

    .line 230
    :goto_0
    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0}, Lcom/roblox/client/p;->a(Landroid/app/Activity;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/roblox/client/RobloxWebActivity;->a(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchUsersUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchGamesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchCatalogUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v0, p1, Lcom/roblox/client/e/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->searchGroupsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
