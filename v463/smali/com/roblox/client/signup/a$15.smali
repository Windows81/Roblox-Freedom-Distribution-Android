.class Lcom/roblox/client/signup/a$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->aB()V
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

    .line 885
    iput-object p1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEmailValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.signup"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 895
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/roblox/client/signup/a$e;->b:Lcom/roblox/client/signup/a$e;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/roblox/client/signup/a$e;->c:Lcom/roblox/client/signup/a$e;

    :goto_0
    invoke-static {v1, v2}, Lcom/roblox/client/signup/a;->c(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$e;)Lcom/roblox/client/signup/a$e;

    .line 897
    iget-object v1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->n(Lcom/roblox/client/signup/a;)Z

    if-eqz p1, :cond_2

    .line 899
    iget-object p1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxLoadingEditText;->a(Ljava/lang/String;)V

    .line 900
    iget-object p1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-AppSignup-Validation-EmailValid"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 903
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->au:Lcom/roblox/client/components/RbxLoadingEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_SignUp_Response_InvalidEmail:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/components/RbxLoadingEditText;->b(Ljava/lang/String;)V

    .line 904
    iget-object p1, p0, Lcom/roblox/client/signup/a$15;->a:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->x(Lcom/roblox/client/signup/a;)Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-AppSignup-Validation-EmailInvalid"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
