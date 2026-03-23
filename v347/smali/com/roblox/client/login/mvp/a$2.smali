.class Lcom/roblox/client/login/mvp/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$2;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$2;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$2;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 335
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$2;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->i(Lcom/roblox/client/login/mvp/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$2;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Landroid/view/View;Landroid/widget/EditText;)V

    .line 336
    return-void
.end method
