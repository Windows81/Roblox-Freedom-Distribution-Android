.class Lcom/roblox/client/signup/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->a(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;Landroid/content/Context;ZLandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    iput-object p2, p0, Lcom/roblox/client/signup/a$14;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/roblox/client/signup/a$14;->b:Z

    iput-object p4, p0, Lcom/roblox/client/signup/a$14;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/roblox/client/signup/a$14;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/roblox/client/signup/a$14;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 695
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Empty"

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->j(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/roblox/client/signup/a$14;->a:Landroid/content/Context;

    sget v6, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterUsername:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    sget-object v4, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    invoke-static {v0, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    const-string v0, "username"

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v4, v0

    .line 701
    :goto_0
    iget-object v5, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v5}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    iget-object v1, v0, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    iget-object v4, p0, Lcom/roblox/client/signup/a$14;->a:Landroid/content/Context;

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterPassword:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    const-string v0, "password"

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 708
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "signup"

    .line 709
    invoke-static {v1, v0, v3, v2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)V

    .line 713
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->e(Lcom/roblox/client/signup/a;)V

    .line 715
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->n(Lcom/roblox/client/signup/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->at()V

    return-void

    .line 723
    :cond_3
    iget-boolean v0, p0, Lcom/roblox/client/signup/a$14;->b:Z

    if-eqz v0, :cond_4

    .line 724
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->o(Lcom/roblox/client/signup/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->p(Lcom/roblox/client/signup/a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 725
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->ax:Lcom/roblox/client/signup/a$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$b;->s()V

    return-void

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->f:Lcom/roblox/client/signup/a;

    invoke-static {v0, v2}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Z)Z

    .line 732
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/signup/a$14;->c:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/signup/a$14$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$14$1;-><init>(Lcom/roblox/client/signup/a$14;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
