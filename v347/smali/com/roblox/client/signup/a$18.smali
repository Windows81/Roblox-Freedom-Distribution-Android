.class Lcom/roblox/client/signup/a$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->j()V
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
    .line 862
    iput-object p1, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 865
    const-string v0, "rbx.signup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmailValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 868
    if-nez v0, :cond_0

    .line 883
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/roblox/client/signup/a$d;->b:Lcom/roblox/client/signup/a$d;

    :goto_1
    invoke-static {v1, v0}, Lcom/roblox/client/signup/a;->c(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 874
    if-eqz p1, :cond_2

    .line 875
    iget-object v0, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->b(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppSignup-Validation-EmailValid"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_1
    sget-object v0, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    goto :goto_1

    .line 879
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->d:Lcom/roblox/client/components/RbxLoadingEditText;

    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->a(I)V

    .line 880
    iget-object v0, p0, Lcom/roblox/client/signup/a$18;->a:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->F(Lcom/roblox/client/signup/a;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppSignup-Validation-EmailInvalid"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
