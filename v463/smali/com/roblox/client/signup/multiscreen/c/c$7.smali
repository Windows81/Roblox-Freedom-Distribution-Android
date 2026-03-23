.class Lcom/roblox/client/signup/multiscreen/c/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/c;->aq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/roblox/client/signup/multiscreen/c/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/c;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 537
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/c;->k(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/c;->k(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    sget v5, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterAnEmail:I

    const-string v6, "Authentication_SignUp_Response_PleaseEnterAnEmail"

    invoke-static {v4, v6, v5}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/c/c;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v3}, Lcom/roblox/client/signup/multiscreen/c/c;->b(Lcom/roblox/client/signup/multiscreen/c/c;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/c;->e(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v1

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    sget v4, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_PleaseEnterPassword:I

    const-string v5, "Authentication_SignUp_Response_PleaseEnterPassword"

    invoke-static {v3, v5, v4}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/c/c;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/roblox/client/signup/multiscreen/c/c;->a(Lcom/roblox/client/signup/multiscreen/c/c;Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    .line 546
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/c;->c(Lcom/roblox/client/signup/multiscreen/c/c;)Lcom/roblox/client/signup/multiscreen/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/c;->j()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/signup/multiscreen/c/c$7$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/multiscreen/c/c$7$1;-><init>(Lcom/roblox/client/signup/multiscreen/c/c$7;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 547
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/c$7;->c:Lcom/roblox/client/signup/multiscreen/c/c;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/c;->l(Lcom/roblox/client/signup/multiscreen/c/c;)V

    return-void
.end method
