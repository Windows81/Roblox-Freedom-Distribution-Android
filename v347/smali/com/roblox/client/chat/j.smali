.class public Lcom/roblox/client/chat/j;
.super Lcom/roblox/client/chat/b;
.source "SourceFile"


# instance fields
.field protected b:Lcom/roblox/client/j/c;

.field private c:Landroid/support/v7/widget/Toolbar;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/roblox/client/chat/b;-><init>()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/roblox/client/chat/j;->b:Lcom/roblox/client/j/c;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/roblox/client/chat/j;->b:Lcom/roblox/client/j/c;

    invoke-virtual {v0}, Lcom/roblox/client/j/c;->b()V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/roblox/client/j/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/roblox/client/chat/j;->b:Lcom/roblox/client/j/c;

    .line 73
    iget-object v0, p0, Lcom/roblox/client/chat/j;->b:Lcom/roblox/client/j/c;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/j/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 33
    const v0, 0x7f0a0058

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 34
    invoke-virtual {p0, v4}, Lcom/roblox/client/chat/j;->a(Landroid/view/View;)V

    .line 36
    const v0, 0x7f080047

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/j;->d:Landroid/view/View;

    .line 37
    const v0, 0x7f080046

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/chat/j;->e:Landroid/view/View;

    .line 39
    const v0, 0x7f0801d9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/roblox/client/chat/j;->c:Landroid/support/v7/widget/Toolbar;

    .line 41
    invoke-virtual {p0}, Lcom/roblox/client/chat/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    const-string v2, "SHOW_SHADOWS_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46
    :goto_0
    iget-object v5, p0, Lcom/roblox/client/chat/j;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v2, p0, Lcom/roblox/client/chat/j;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/roblox/client/chat/j;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/chat/j;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 55
    :cond_0
    return-object v4

    :cond_1
    move v2, v3

    .line 46
    goto :goto_1

    :cond_2
    move v1, v3

    .line 47
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/roblox/client/chat/j;->f()V

    .line 69
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/roblox/client/chat/b;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/roblox/client/chat/j;->f()V

    .line 62
    return-void
.end method

.method public onUnreadNotificationCountEvent(Lcom/roblox/client/e/w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ESCF.onUnreadNotificationCountEvent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/e/w;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/roblox/client/chat/j;->f()V

    .line 80
    return-void
.end method
