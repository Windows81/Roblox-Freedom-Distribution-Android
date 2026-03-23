.class Lcom/roblox/client/login/mvp/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->av()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/client/login/mvp/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/a;Landroid/content/Context;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "login"

    const-string v1, "submit"

    .line 312
    invoke-static {v0, v1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->e(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    iget-object v1, v1, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    iget-object v4, p0, Lcom/roblox/client/login/mvp/a$2;->a:Landroid/content/Context;

    sget v5, Lcom/roblox/client/o$j;->Authentication_Login_Response_PleaseEnterUsername:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1, v2}, Lcom/roblox/client/login/mvp/a;->a(Lcom/roblox/client/login/mvp/a;Z)Z

    goto :goto_0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    iget-object v1, v1, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/a;->f(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    iget-object v4, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v4}, Lcom/roblox/client/login/mvp/a;->d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/roblox/client/login/mvp/a$2;->a:Landroid/content/Context;

    sget v6, Lcom/roblox/client/o$j;->Authentication_Login_Response_PleaseEnterPassword:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v3, v2}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;Z)Z

    .line 326
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->f(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 327
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->g(Lcom/roblox/client/login/mvp/a;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v3}, Lcom/roblox/client/login/mvp/a;->f(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/x;->a(Landroid/view/View;Landroid/widget/EditText;)V

    goto :goto_1

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/a;->d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 332
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    iget-object v2, v2, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    if-eqz v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/login/mvp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 333
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$2;->b:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->h(Lcom/roblox/client/login/mvp/a;)V

    return-void
.end method
