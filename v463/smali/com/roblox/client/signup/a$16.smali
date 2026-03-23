.class Lcom/roblox/client/signup/a$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->aC()V
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

    .line 927
    iput-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNewUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". NewUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.signup"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 941
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 943
    iget-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-AppSignup-UsernameGenerated"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 947
    iget-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_SignUpErrorGeneratingUsername:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/a;->c(Ljava/lang/String;)V

    .line 948
    iget-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-AppSignup-UsernameNotGenerated"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 952
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object p1, p0, Lcom/roblox/client/signup/a$16;->a:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->as:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
