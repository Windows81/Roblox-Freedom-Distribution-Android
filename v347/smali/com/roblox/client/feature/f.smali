.class public Lcom/roblox/client/feature/f;
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
    new-instance v0, Lcom/roblox/client/f/e;

    invoke-direct {v0}, Lcom/roblox/client/f/e;-><init>()V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v2, "TITLE_ID"

    const v3, 0x7f0e0107

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    const-string v2, "REPORTING_TAB_NAME"

    invoke-virtual {p0}, Lcom/roblox/client/feature/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, "DEFAULT_URL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "WEB_VIEW_TAG"

    const-string v3, "HOME_TAG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "tabHome"

    return-object v0
.end method
