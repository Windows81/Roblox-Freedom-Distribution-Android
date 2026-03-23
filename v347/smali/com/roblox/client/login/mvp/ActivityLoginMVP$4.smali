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

    .prologue
    .line 355
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 358
    packed-switch p2, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->a:Landroid/os/Bundle;

    const-string v2, "CallContext"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Lcom/roblox/client/login/mvp/ActivityLoginMVP;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V

    goto :goto_0

    .line 367
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 368
    iget-object v0, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$4;->b:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/ActivityLoginMVP;->a(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)Lcom/roblox/client/login/mvp/a;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/a;->c()V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
