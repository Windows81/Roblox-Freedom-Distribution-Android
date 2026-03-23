.class Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Landroid/os/Bundle;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    iget-object p2, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->a:Landroid/os/Bundle;

    const-string v0, "CallContext"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Ljava/lang/String;)V

    .line 453
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->s()V

    goto :goto_0

    .line 458
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 459
    iget-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-static {p1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)Lcom/roblox/client/login/mvp/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 461
    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/a;->as()V

    :cond_2
    :goto_0
    return-void
.end method
