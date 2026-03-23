.class public Lcom/roblox/client/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/m;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/roblox/client/j/a;->a:Lcom/roblox/client/m;

    .line 29
    iput-object p2, p0, Lcom/roblox/client/j/a;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v0, p0, Lcom/roblox/client/j/a;->a:Lcom/roblox/client/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/j/a;->a:Lcom/roblox/client/m;

    invoke-virtual {v0}, Lcom/roblox/client/m;->alertIfNetworkNotConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Lcom/roblox/client/n;

    invoke-direct {v0}, Lcom/roblox/client/n;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v2, "showBC"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    const-string v2, "dialogHeight"

    iget-object v3, p0, Lcom/roblox/client/j/a;->a:Lcom/roblox/client/m;

    invoke-virtual {v3}, Lcom/roblox/client/m;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->buildersClubOnlyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/roblox/client/n;->getTheme()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/roblox/client/n;->setStyle(II)V

    .line 61
    iget-object v1, p0, Lcom/roblox/client/j/a;->a:Lcom/roblox/client/m;

    invoke-virtual {v1}, Lcom/roblox/client/m;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/n;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 63
    const-string v0, "nativeMain"

    const-string v1, "buildersClub"

    iget-object v2, p0, Lcom/roblox/client/j/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
