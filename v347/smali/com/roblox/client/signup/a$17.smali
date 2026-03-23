.class Lcom/roblox/client/signup/a$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    iput-object p2, p0, Lcom/roblox/client/signup/a$17;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 651
    const-string v1, ""

    .line 652
    const-string v0, ""

    .line 653
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->l(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    const-string v1, "Empty"

    .line 655
    const-string v0, "username"

    .line 656
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    iget-object v3, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v3}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v3

    const v4, 0x7f0e00d2

    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 657
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    sget-object v3, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v2, v3}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->m(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    const-string v1, "Empty"

    .line 661
    const-string v0, "password"

    .line 662
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    iget-object v3, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    iget-object v3, v3, Lcom/roblox/client/signup/a;->b:Lcom/roblox/client/components/RbxEditText;

    const v4, 0x7f0e00d1

    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 663
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    sget-object v3, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v2, v3}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 665
    :cond_1
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v2}, Lcom/roblox/client/signup/a;->n(Lcom/roblox/client/signup/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    iget-object v3, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v3}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v3

    const v4, 0x7f0e00e6

    invoke-static {v2, v3, v4}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/components/RbxEditText;I)V

    .line 667
    iget-object v2, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    sget-object v3, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v2, v3}, Lcom/roblox/client/signup/a;->d(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 670
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 671
    const-string v2, "signup"

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->o(Lcom/roblox/client/signup/a;)V

    .line 675
    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->p(Lcom/roblox/client/signup/a;)V

    .line 676
    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->k(Lcom/roblox/client/signup/a;)V

    .line 678
    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->q(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 679
    invoke-static {v0}, Lcom/roblox/client/signup/a;->r(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 680
    invoke-static {v0}, Lcom/roblox/client/signup/a;->s(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 681
    invoke-static {v0}, Lcom/roblox/client/signup/a;->t(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 682
    invoke-static {v0}, Lcom/roblox/client/signup/a;->u(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 683
    invoke-static {v0}, Lcom/roblox/client/signup/a;->v(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    .line 684
    invoke-static {v0}, Lcom/roblox/client/signup/a;->w(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$d;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    if-eq v0, v1, :cond_5

    .line 685
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)V

    .line 705
    :goto_0
    return-void

    .line 689
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/signup/a$17;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/signup/a$17$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/a$17$1;-><init>(Lcom/roblox/client/signup/a$17;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
