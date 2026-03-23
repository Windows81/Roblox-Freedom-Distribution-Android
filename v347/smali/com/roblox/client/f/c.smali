.class public Lcom/roblox/client/f/c;
.super Lcom/roblox/client/f/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/roblox/client/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/roblox/client/f/d;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 19
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/f/c;->a(Z)V

    .line 20
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f08001e

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/f/c;->a(IZ)V

    .line 24
    const v0, 0x7f080011

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/f/c;->a(IZ)V

    .line 25
    const v0, 0x7f08001c

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/f/c;->a(IZ)V

    .line 26
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/roblox/client/f/c;->g:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/roblox/client/f/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/components/p;->a(Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 30
    return-void
.end method
