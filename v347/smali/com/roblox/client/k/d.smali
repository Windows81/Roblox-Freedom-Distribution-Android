.class public Lcom/roblox/client/k/d;
.super Lcom/roblox/client/k/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/roblox/client/k/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/ArrayList;
    .locals 8
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
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v0, Lcom/roblox/client/k/c$h;

    invoke-direct {v0, p0, v2, v7}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;ZZ)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->i()Ljava/util/ArrayList;

    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    move v1, v2

    .line 52
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 53
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/k/e;

    .line 54
    new-instance v5, Lcom/roblox/client/k/c$c;

    invoke-virtual {v0}, Lcom/roblox/client/k/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/roblox/client/k/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v6, v2, v0}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 56
    new-instance v0, Lcom/roblox/client/k/c$d;

    invoke-direct {v0, p0, v2}, Lcom/roblox/client/k/c$d;-><init>(Lcom/roblox/client/k/c;Z)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/roblox/client/k/c$h;

    invoke-direct {v0, p0, v7, v2}, Lcom/roblox/client/k/c$h;-><init>(Lcom/roblox/client/k/c;ZZ)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v3
.end method

.method protected a(Landroid/support/v7/widget/Toolbar;)V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f0e0116

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 38
    invoke-virtual {p0}, Lcom/roblox/client/k/d;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/k/d$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/k/d$1;-><init>(Lcom/roblox/client/k/d;)V

    invoke-static {p1, v0, v1}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "rbx.more.settings"

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/roblox/client/k/c;->onStart()V

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 30
    invoke-super {p0}, Lcom/roblox/client/k/c;->onStop()V

    .line 31
    return-void
.end method
