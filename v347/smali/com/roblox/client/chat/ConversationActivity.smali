.class public Lcom/roblox/client/chat/ConversationActivity;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/i/e$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/chat/ConversationActivity$a;
    }
.end annotation


# instance fields
.field private m:Landroid/support/v7/widget/Toolbar;

.field private p:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/roblox/client/h/j;

    new-instance v1, Lcom/roblox/client/chat/ConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/chat/ConversationActivity$1;-><init>(Lcom/roblox/client/chat/ConversationActivity;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/roblox/client/h/j;-><init>(JLcom/roblox/client/h/j$a;)V

    .line 256
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 257
    return-void
.end method

.method private a(JZ)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 76
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/roblox/client/chat/f;

    if-nez v1, :cond_1

    .line 79
    new-instance v0, Lcom/roblox/client/chat/f;

    invoke-direct {v0}, Lcom/roblox/client/chat/f;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v2, "CONVERSATION_ID_EXTRA"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 84
    const v2, 0x7f080197

    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 85
    invoke-virtual {v1}, Landroid/support/v4/app/p;->d()I

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 87
    :cond_1
    check-cast v0, Lcom/roblox/client/chat/f;

    invoke-virtual {v0, p1, p2, v2}, Lcom/roblox/client/chat/f;->a(JZ)V

    goto :goto_0

    .line 96
    :cond_2
    const v0, 0x7f0e015b

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->finish()V

    .line 98
    if-eqz p3, :cond_0

    .line 99
    const/high16 v0, 0x10a0000

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/ConversationActivity;->overridePendingTransition(II)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/roblox/client/chat/ConversationActivity;JZ)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/chat/ConversationActivity;->a(JZ)V

    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 106
    instance-of v0, v0, Lcom/roblox/client/chat/f;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/roblox/client/chat/e;

    invoke-direct {v0}, Lcom/roblox/client/chat/e;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    .line 109
    const v2, 0x7f080197

    const-class v3, Lcom/roblox/client/chat/b;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/p;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    .line 110
    invoke-virtual {v1}, Landroid/support/v4/app/p;->c()I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 117
    :cond_1
    return-void
.end method

.method private l()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-class v1, Lcom/roblox/client/chat/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->finish()V

    .line 199
    const v0, 0x7f0e000e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    sget-object v0, Lcom/roblox/client/startup/e;->h:Lcom/roblox/client/startup/e;

    invoke-static {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 213
    const/16 v0, 0x277e

    if-ne p1, v0, :cond_2

    .line 214
    const/high16 v0, 0x10a0000

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/ConversationActivity;->overridePendingTransition(II)V

    .line 215
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 216
    if-eqz p3, :cond_0

    .line 217
    const-string v0, "FEATURE_EXTRA"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    const-string v1, "CHAT_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "CONVERSATION_ID_EXTRA"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 221
    const-string v2, "USER_ID_EXTRA"

    invoke-virtual {p3, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 222
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 223
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/chat/ConversationActivity;->a(JZ)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0, v2, v3}, Lcom/roblox/client/chat/ConversationActivity;->a(J)V

    goto :goto_0

    .line 235
    :cond_2
    const/16 v0, 0x2778

    if-ne p1, v0, :cond_3

    .line 237
    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/locale/a;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->recreate()V

    .line 241
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/k;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/roblox/client/chat/ConversationActivity;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 140
    instance-of v2, v0, Lcom/roblox/client/chat/b;

    if-eqz v2, :cond_1

    .line 141
    check-cast v0, Lcom/roblox/client/chat/b;

    invoke-virtual {v0}, Lcom/roblox/client/chat/b;->d()Z

    move-result v0

    or-int/2addr v0, v1

    .line 143
    :goto_0
    if-nez v0, :cond_0

    .line 144
    invoke-super {p0}, Lcom/roblox/client/k;->onBackPressed()V

    .line 145
    const/high16 v0, 0x10a0000

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/ConversationActivity;->overridePendingTransition(II)V

    .line 147
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onChatEnabledChangeEvent(Lcom/roblox/client/e/h;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 177
    iget v0, p1, Lcom/roblox/client/e/h;->d:I

    sget v1, Lcom/roblox/client/e/h;->c:I

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->finish()V

    .line 180
    const/high16 v0, 0x10a0000

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/ConversationActivity;->overridePendingTransition(II)V

    .line 182
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/ConversationActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    .line 58
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->m:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/ConversationActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    const-string v1, "FEATURE_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "CHAT_FEATURE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v1, "CONVERSATION_ID_EXTRA"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/chat/ConversationActivity;->a(JZ)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    const-string v0, "CHAT_CREATE_FEATURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/roblox/client/chat/ConversationActivity;->k()V

    goto :goto_0
.end method

.method public onRealtimeConversationRemovedEvent(Lcom/roblox/client/e/u;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/roblox/client/chat/ConversationActivity;->l()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 161
    instance-of v1, v0, Lcom/roblox/client/chat/ConversationActivity$a;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Lcom/roblox/client/chat/ConversationActivity$a;

    invoke-interface {v0}, Lcom/roblox/client/chat/ConversationActivity$a;->a()J

    move-result-wide v0

    .line 163
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/e/u;->a()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 164
    const v2, 0x7f0e015f

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 165
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 166
    const-string v3, "CONVERSATION_REMOVED_EXTRA"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    const v0, 0xa9a9

    invoke-virtual {p0, v0, v2}, Lcom/roblox/client/chat/ConversationActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/roblox/client/chat/ConversationActivity;->finish()V

    .line 169
    const/high16 v0, 0x10a0000

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/ConversationActivity;->overridePendingTransition(II)V

    .line 172
    :cond_0
    return-void
.end method

.method public onSignalRConnectivityChangeEvent(Lcom/roblox/client/e/v;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/roblox/client/e/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/roblox/client/e/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/c;

    invoke-direct {v1}, Lcom/roblox/client/h/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 132
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->p:Landroid/content/ServiceConnection;

    .line 133
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->a(Lcom/roblox/client/i/e$c;)V

    .line 134
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/roblox/client/chat/ConversationActivity;->p:Landroid/content/ServiceConnection;

    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    .line 124
    invoke-static {}, Lcom/roblox/client/i/e;->a()Lcom/roblox/client/i/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/i/e;->b(Lcom/roblox/client/i/e$c;)V

    .line 125
    invoke-super {p0}, Lcom/roblox/client/k;->onStop()V

    .line 126
    return-void
.end method
