.class Lcom/roblox/client/signup/multiscreen/c/g$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/g;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$16;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 2

    .line 193
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$16;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object p1

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/signup/multiscreen/e/f;->a(Ljava/lang/String;Z)V

    .line 194
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$16;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/components/RbxEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 196
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$16;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/components/RbxEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/g$16;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordMinLength:I

    const-string v1, "Authentication_SignUp_Description_PasswordMinLength"

    invoke-static {p2, v1, v0}, Lcom/roblox/client/signup/multiscreen/c/g;->a(Lcom/roblox/client/signup/multiscreen/c/g;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$16;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->b(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/components/RbxEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

    :cond_1
    :goto_0
    return-void
.end method
