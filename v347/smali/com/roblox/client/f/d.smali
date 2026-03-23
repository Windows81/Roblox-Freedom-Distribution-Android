.class public Lcom/roblox/client/f/d;
.super Lcom/roblox/client/n;
.source "SourceFile"


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:Z

.field protected g:Landroid/support/v7/widget/Toolbar;

.field protected h:Lcom/roblox/client/j/c;

.field protected i:Landroid/view/Menu;

.field protected j:Lcom/roblox/client/j/e;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/view/View$OnClickListener;

.field private o:Lcom/roblox/client/j/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/roblox/client/n;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/f/d;->e:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/roblox/client/f/d;->f:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/f/d;->k:I

    .line 56
    iput-boolean v1, p0, Lcom/roblox/client/f/d;->m:Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/roblox/client/f/d;->m:Z

    if-eq v0, p1, :cond_1

    .line 213
    const-string v0, "rbx.web"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateToolbar() canGoBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-boolean p1, p0, Lcom/roblox/client/f/d;->m:Z

    .line 215
    iget-object v1, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/f/d;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/f/d;->f:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/f/d;->n:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_1
    return-void

    .line 215
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/roblox/client/f/d;->j:Lcom/roblox/client/j/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/f/d;->o:Lcom/roblox/client/j/f;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/roblox/client/f/d;->o:Lcom/roblox/client/j/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/j/f;->b(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/roblox/client/f/d;->j:Lcom/roblox/client/j/e;

    invoke-virtual {v0}, Lcom/roblox/client/j/e;->a()V

    .line 236
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/roblox/client/f/d;->h:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/roblox/client/f/d;->h:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/roblox/client/f/d;->i:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/roblox/client/f/d;->i:Landroid/view/Menu;

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/f/d;->c(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 166
    new-instance v0, Lcom/roblox/client/j/d;

    iget-object v1, p0, Lcom/roblox/client/f/d;->e:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/j/d;-><init>(Lcom/roblox/client/m;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/d;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/f/d;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 169
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Lcom/roblox/client/n;->a(Landroid/webkit/WebView;I)V

    .line 207
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/f/d;->a(Z)V

    .line 208
    return-void
.end method

.method a(Lcom/roblox/client/e/b;Landroid/app/Activity;Lcom/roblox/client/locale/a;)V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/roblox/client/e/b;->a()Lcom/roblox/client/locale/c;

    move-result-object v0

    .line 136
    const-string v1, "rbx.locale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAppLanguageChangeEvent(), newLanguageRobloxLocaleValue:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p3, v0, p2}, Lcom/roblox/client/locale/a;->b(Lcom/roblox/client/locale/c;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/app/Activity;->recreate()V

    .line 141
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/roblox/client/f/d;->d(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected b(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/f/d;->h:Lcom/roblox/client/j/c;

    .line 116
    iget-object v0, p0, Lcom/roblox/client/f/d;->h:Lcom/roblox/client/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 117
    return-void
.end method

.method protected c(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/roblox/client/j/f;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/f;-><init>(Lcom/roblox/client/n;)V

    iput-object v0, p0, Lcom/roblox/client/f/d;->o:Lcom/roblox/client/j/f;

    .line 221
    new-instance v0, Lcom/roblox/client/j/e;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/e;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/f/d;->j:Lcom/roblox/client/j/e;

    .line 222
    iget-object v0, p0, Lcom/roblox/client/f/d;->j:Lcom/roblox/client/j/e;

    iget-object v1, p0, Lcom/roblox/client/f/d;->o:Lcom/roblox/client/j/f;

    invoke-virtual {v0, v1}, Lcom/roblox/client/j/e;->a(Lcom/roblox/client/j/e$a;)V

    .line 223
    iget-object v0, p0, Lcom/roblox/client/f/d;->j:Lcom/roblox/client/j/e;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/e;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 224
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/roblox/client/n;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/roblox/client/f/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/roblox/client/f/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/f/d;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/roblox/client/f/d;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/f/d;->n:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 159
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/roblox/client/f/d;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0e00f1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lcom/roblox/client/f/d;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAppLocaleChangeEvent(Lcom/roblox/client/e/b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/roblox/client/f/d;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/locale/a;->a()Lcom/roblox/client/locale/a;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/roblox/client/f/d;->a(Lcom/roblox/client/e/b;Landroid/app/Activity;Lcom/roblox/client/locale/a;)V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/roblox/client/n;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/f/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string v1, "TITLE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/f/d;->k:I

    .line 71
    const-string v1, "TITLE_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/f/d;->l:Ljava/lang/String;

    .line 72
    const-string v1, "REPORTING_TAB_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/f/d;->e:Ljava/lang/String;

    .line 73
    const-string v1, "HAS_PARENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/f/d;->f:Z

    .line 76
    :cond_0
    new-instance v0, Lcom/roblox/client/f/d$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/f/d$1;-><init>(Lcom/roblox/client/f/d;)V

    iput-object v0, p0, Lcom/roblox/client/f/d;->n:Landroid/view/View$OnClickListener;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 91
    const v0, 0x7f0a009d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 92
    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    .line 93
    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 95
    invoke-super {p0, p1, v1, p3}, Lcom/roblox/client/n;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/roblox/client/f/d;->g:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/roblox/client/f/d;->getActivity()Landroid/support/v4/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/roblox/client/f/d;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 99
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/roblox/client/n;->onHiddenChanged(Z)V

    .line 181
    if-nez p1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/roblox/client/f/d;->e()V

    .line 184
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/roblox/client/n;->onResume()V

    .line 189
    invoke-direct {p0}, Lcom/roblox/client/f/d;->e()V

    .line 190
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/roblox/client/n;->onStart()V

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 111
    invoke-super {p0}, Lcom/roblox/client/n;->onStop()V

    .line 112
    return-void
.end method

.method public onUnreadNotificationCountEvent(Lcom/roblox/client/e/w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GWF.onUnreadNotificationCountEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/w;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/roblox/client/f/d;->h:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/roblox/client/f/d;->h:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 125
    :cond_0
    return-void
.end method
