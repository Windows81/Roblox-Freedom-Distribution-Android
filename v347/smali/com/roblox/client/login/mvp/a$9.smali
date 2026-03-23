.class Lcom/roblox/client/login/mvp/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->f()V
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
    .line 258
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 261
    const-string v0, "login"

    const-string v1, "submit"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->g(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/a;->d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v1

    const v2, 0x7f0e004f

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxEditText;->a(I)V

    .line 266
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1, v4}, Lcom/roblox/client/login/mvp/a;->a(Lcom/roblox/client/login/mvp/a;Z)Z

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->f(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v2

    const v3, 0x7f0e004e

    invoke-virtual {v2, v3}, Lcom/roblox/client/components/RbxEditText;->a(I)V

    .line 274
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2, v4}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;Z)Z

    .line 275
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 276
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->i(Lcom/roblox/client/login/mvp/a;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v3}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/p;->a(Landroid/view/View;Landroid/widget/EditText;)V

    .line 281
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->j(Lcom/roblox/client/login/mvp/a;)V

    .line 289
    :cond_1
    :goto_2
    return-void

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/a;->d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->a()V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->f(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/components/RbxEditText;->a()V

    goto :goto_1

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/login/mvp/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$9;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/login/mvp/a$a;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/roblox/client/login/mvp/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
