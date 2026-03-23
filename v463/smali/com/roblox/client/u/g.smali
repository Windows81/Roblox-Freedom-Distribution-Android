.class public Lcom/roblox/client/u/g;
.super Lcom/roblox/client/s;
.source "SourceFile"


# instance fields
.field protected au:Lcom/roblox/client/u/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/u/d;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/roblox/client/u/g;->au:Lcom/roblox/client/u/e;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Lcom/roblox/client/u/e;->a(Lcom/roblox/client/u/d;)V

    goto :goto_0

    :cond_0
    const-string p1, "RobloxMVPFragment"

    const-string v0, "Lifecycle listener is null."

    .line 103
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public F()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/roblox/client/s;->F()V

    .line 68
    sget-object v0, Lcom/roblox/client/u/d;->c:Lcom/roblox/client/u/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public G()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/roblox/client/s;->G()V

    .line 75
    sget-object v0, Lcom/roblox/client/u/d;->d:Lcom/roblox/client/u/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 45
    sget-object p2, Lcom/roblox/client/u/d;->h:Lcom/roblox/client/u/d;

    invoke-direct {p0, p2}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 30
    sget-object p1, Lcom/roblox/client/u/d;->g:Lcom/roblox/client/u/d;

    invoke-direct {p0, p1}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    .line 37
    sget-object p1, Lcom/roblox/client/u/d;->a:Lcom/roblox/client/u/d;

    invoke-direct {p0, p1}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/roblox/client/s;->d(Landroid/os/Bundle;)V

    .line 54
    sget-object p1, Lcom/roblox/client/u/d;->i:Lcom/roblox/client/u/d;

    invoke-direct {p0, p1}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    .line 96
    sget-object v0, Lcom/roblox/client/u/d;->k:Lcom/roblox/client/u/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 61
    sget-object v0, Lcom/roblox/client/u/d;->b:Lcom/roblox/client/u/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public i()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    .line 82
    sget-object v0, Lcom/roblox/client/u/d;->e:Lcom/roblox/client/u/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method

.method public j()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/roblox/client/s;->j()V

    .line 89
    sget-object v0, Lcom/roblox/client/u/d;->j:Lcom/roblox/client/u/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/u/g;->a(Lcom/roblox/client/u/d;)V

    return-void
.end method
