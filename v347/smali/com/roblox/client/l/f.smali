.class public Lcom/roblox/client/l/f;
.super Lcom/roblox/client/k;
.source "SourceFile"


# instance fields
.field protected m:Lcom/roblox/client/l/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method private a(Lcom/roblox/client/l/d;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/l/f;->m:Lcom/roblox/client/l/e;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/roblox/client/l/f;->m:Lcom/roblox/client/l/e;

    invoke-interface {v0, p1}, Lcom/roblox/client/l/e;->a(Lcom/roblox/client/l/d;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "RobloxMVPActivity"

    const-string v1, "Lifecycle listener is null."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object v0, Lcom/roblox/client/l/d;->a:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/f;->a(Lcom/roblox/client/l/d;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/roblox/client/k;->onDestroy()V

    .line 60
    sget-object v0, Lcom/roblox/client/l/d;->f:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/f;->a(Lcom/roblox/client/l/d;)V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/roblox/client/k;->onPause()V

    .line 46
    sget-object v0, Lcom/roblox/client/l/d;->d:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/f;->a(Lcom/roblox/client/l/d;)V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/roblox/client/k;->onResume()V

    .line 39
    sget-object v0, Lcom/roblox/client/l/d;->c:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/f;->a(Lcom/roblox/client/l/d;)V

    .line 40
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/roblox/client/k;->onStart()V

    .line 32
    sget-object v0, Lcom/roblox/client/l/d;->b:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/f;->a(Lcom/roblox/client/l/d;)V

    .line 33
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/roblox/client/k;->onStop()V

    .line 53
    sget-object v0, Lcom/roblox/client/l/d;->e:Lcom/roblox/client/l/d;

    invoke-direct {p0, v0}, Lcom/roblox/client/l/f;->a(Lcom/roblox/client/l/d;)V

    .line 54
    return-void
.end method
