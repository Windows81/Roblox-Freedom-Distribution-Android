.class Lcom/roblox/client/signup/a$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 917
    const-string v0, "rbx.signup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". NewUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 921
    if-nez v0, :cond_0

    .line 940
    :goto_0
    return-void

    .line 927
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppSignup-UsernameGenerated"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 938
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 933
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/a;->alertOk(I)V

    .line 934
    iget-object v0, p0, Lcom/roblox/client/signup/a$19;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppSignup-UsernameNotGenerated"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
