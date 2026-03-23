.class Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/ActivityLoginMVP;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;->a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 267
    new-instance p1, Lcom/roblox/client/v;

    invoke-direct {p1}, Lcom/roblox/client/v;-><init>()V

    .line 268
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "USING_LOGIN_WEB_URL"

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    invoke-virtual {p1, p2}, Lcom/roblox/client/v;->g(Landroid/os/Bundle;)V

    .line 272
    new-instance p2, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1$1;

    invoke-direct {p2, p0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1$1;-><init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/v;->a(Lcom/roblox/client/v$b;)V

    .line 279
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 280
    sget p2, Lcom/roblox/client/o$k;->Theme_Roblox_Fullscreen:I

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/v;->a(II)V

    goto :goto_0

    .line 282
    :cond_0
    sget p2, Lcom/roblox/client/o$k;->Theme_Roblox_WebDialogNoTitle:I

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/v;->a(II)V

    .line 285
    :goto_0
    invoke-static {}, Lcom/roblox/client/u;->af()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/v;->f(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$1;->a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-virtual {p2}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->j()Landroidx/fragment/app/g;

    move-result-object p2

    const-string v0, "password_reset_requested"

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/v;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void
.end method
