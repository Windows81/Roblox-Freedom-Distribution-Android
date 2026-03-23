.class public Lcom/roblox/client/l/g;
.super Lcom/roblox/client/m;
.source "SourceFile"


# instance fields
.field protected a:Lcom/roblox/client/l/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/l/d;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/roblox/client/l/g;->a:Lcom/roblox/client/l/e;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/roblox/client/l/g;->a:Lcom/roblox/client/l/e;

    invoke-interface {v0, p1}, Lcom/roblox/client/l/e;->a(Lcom/roblox/client/l/d;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "RobloxMVPFragment"

    const-string v1, "Lifecycle listener is null."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    sget-object v0, Lcom/roblox/client/l/d;->i:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 55
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onAttach(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/roblox/client/l/d;->g:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object v0, Lcom/roblox/client/l/d;->a:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/m;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/roblox/client/l/d;->h:Lcom/roblox/client/l/d;

    invoke-direct {p0, v1}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 47
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/roblox/client/m;->onDestroyView()V

    .line 89
    sget-object v0, Lcom/roblox/client/l/d;->j:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 90
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/roblox/client/m;->onDetach()V

    .line 96
    sget-object v0, Lcom/roblox/client/l/d;->k:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/roblox/client/m;->onPause()V

    .line 75
    sget-object v0, Lcom/roblox/client/l/d;->d:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/roblox/client/m;->onResume()V

    .line 68
    sget-object v0, Lcom/roblox/client/l/d;->c:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 69
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 61
    sget-object v0, Lcom/roblox/client/l/d;->b:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 62
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/roblox/client/m;->onStop()V

    .line 82
    sget-object v0, Lcom/roblox/client/l/d;->e:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/g;->a(Lcom/roblox/client/l/d;)V

    .line 83
    return-void
.end method
