.class Lcom/roblox/client/login/ActivityLogin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/ActivityLogin;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/ActivityLogin;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/roblox/client/login/ActivityLogin$1;->a:Lcom/roblox/client/login/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    new-instance v0, Lcom/roblox/client/n;

    invoke-direct {v0}, Lcom/roblox/client/n;-><init>()V

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string v2, "USING_LOGIN_WEB_URL"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 190
    new-instance v1, Lcom/roblox/client/login/ActivityLogin$1$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/ActivityLogin$1$1;-><init>(Lcom/roblox/client/login/ActivityLogin$1;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->a(Lcom/roblox/client/n$a;)V

    .line 197
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const v1, 0x7f0f013d

    invoke-virtual {v0, v4, v1}, Lcom/roblox/client/n;->setStyle(II)V

    .line 203
    :goto_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->passwordResetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/roblox/client/login/ActivityLogin$1;->a:Lcom/roblox/client/login/ActivityLogin;

    invoke-virtual {v1}, Lcom/roblox/client/login/ActivityLogin;->e()Landroid/support/v4/app/l;

    move-result-object v1

    const-string v2, "password_reset_requested"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/n;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 205
    return-void

    .line 200
    :cond_0
    const v1, 0x7f0f014a

    invoke-virtual {v0, v4, v1}, Lcom/roblox/client/n;->setStyle(II)V

    goto :goto_0
.end method
