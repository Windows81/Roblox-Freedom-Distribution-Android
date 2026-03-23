.class public Lcom/roblox/client/feature/d;
.super Lcom/roblox/client/feature/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/roblox/client/feature/j;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/roblox/client/n;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/roblox/client/f/c;

    invoke-direct {v0}, Lcom/roblox/client/f/c;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v2, "TITLE_ID"

    const v3, 0x7f0e0103

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    const-string v2, "REPORTING_TAB_NAME"

    invoke-virtual {p0}, Lcom/roblox/client/feature/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "DEFAULT_URL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "WEB_VIEW_TAG"

    const-string v3, "GAMES_TAG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method

.method public b()Lcom/roblox/client/f/c;
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 39
    instance-of v1, v0, Lcom/roblox/client/f/c;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/roblox/client/f/c;

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic f()Lcom/roblox/client/n;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/roblox/client/feature/d;->b()Lcom/roblox/client/f/c;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "tabGames"

    return-object v0
.end method

.method public v_()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/roblox/client/feature/j;->v_()V

    .line 48
    invoke-virtual {p0}, Lcom/roblox/client/feature/d;->b()Lcom/roblox/client/f/c;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/f/c;->a(Z)V

    .line 51
    invoke-virtual {v0}, Lcom/roblox/client/f/c;->e()V

    .line 53
    :cond_0
    return-void
.end method
