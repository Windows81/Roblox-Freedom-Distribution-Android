.class public Lcom/roblox/client/k/a;
.super Lcom/roblox/client/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/k/a$a;
    }
.end annotation


# instance fields
.field private e:Lcom/roblox/client/k/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/roblox/client/k/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/k/c$g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Lcom/roblox/client/k/c$h;

    invoke-direct {v1, p0, v5, v6}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e00fc

    const v3, 0x7f070774

    const-string v4, "CATALOG_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    new-instance v1, Lcom/roblox/client/k/c$a;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$a;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/roblox/client/k/c$h;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e0114

    const v3, 0x7f07077d

    const-string v4, "PROFILE_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e0102

    const v3, 0x7f070778

    const-string v4, "FRIENDS_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e0105

    const v3, 0x7f070779

    const-string v4, "GROUPS_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e0108

    const v3, 0x7f07077b

    const-string v4, "INVENTORY_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e010c

    const v3, 0x7f07077c

    const-string v4, "MESSAGES_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/roblox/client/b;->bG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e00ff

    const v3, 0x7f070776

    const-string v4, "CREATE_GAMES_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    new-instance v1, Lcom/roblox/client/k/c$h;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/roblox/client/k/c$b;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$b;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e00f9

    const v3, 0x7f070772

    const-string v4, "BLOG_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/roblox/client/k/c$h;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/roblox/client/b;->bF()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->i()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 91
    new-instance v1, Lcom/roblox/client/k/a$a;

    const-string v2, "SETTINGS_GROUPS_TAG"

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/k/a$a;-><init>(Lcom/roblox/client/k/a;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/roblox/client/k/a;->e:Lcom/roblox/client/k/a$a;

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/k/a;->e:Lcom/roblox/client/k/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e00f5

    const v3, 0x7f070775

    const-string v4, "ABOUT_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/roblox/client/k/c$d;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/roblox/client/k/c$c;

    const v2, 0x7f0e0106

    const v3, 0x7f07077a

    const-string v4, "HELP_TAG"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/roblox/client/k/c$h;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/roblox/client/k/c$e;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/c$e;-><init>(Lcom/roblox/client/k/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/roblox/client/k/c$h;

    invoke-direct {v1, p0, v6, v5}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0

    .line 93
    :cond_3
    new-instance v1, Lcom/roblox/client/k/a$a;

    const-string v2, "SETTINGS_TAG"

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/k/a$a;-><init>(Lcom/roblox/client/k/a;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/roblox/client/k/a;->e:Lcom/roblox/client/k/a$a;

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    .line 148
    const v0, 0x7f0e010d

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 151
    invoke-virtual {p0}, Lcom/roblox/client/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isShowVisibleAgeOnMorePage()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V

    .line 152
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "rbx.more"

    return-object v0
.end method

.method public onAccountNotificationsUpdateEvent(Lcom/roblox/client/e/a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/roblox/client/k/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAccountNotificationsUpdateEvent() update"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/roblox/client/k/a;->e:Lcom/roblox/client/k/a$a;

    invoke-virtual {p0, v0}, Lcom/roblox/client/k/a;->a(Lcom/roblox/client/k/c$g;)V

    .line 131
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/roblox/client/k/c;->onHiddenChanged(Z)V

    .line 117
    if-nez p1, :cond_0

    .line 120
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->h()Lcom/roblox/client/q/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/a;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/roblox/client/h/k;-><init>(Lcom/roblox/client/h/k$a;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/roblox/client/k/c;->onStart()V

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/roblox/client/k/c;->onStop()V

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 145
    return-void
.end method
