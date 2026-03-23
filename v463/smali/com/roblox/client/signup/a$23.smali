.class Lcom/roblox/client/signup/a$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;Landroid/content/Context;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/roblox/client/signup/a$23;->b:Lcom/roblox/client/signup/a;

    iput-object p2, p0, Lcom/roblox/client/signup/a$23;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 2

    .line 340
    iget-object p1, p0, Lcom/roblox/client/signup/a$23;->b:Lcom/roblox/client/signup/a;

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/signup/a;->a(Ljava/lang/String;Z)V

    .line 341
    iget-object p1, p0, Lcom/roblox/client/signup/a$23;->b:Lcom/roblox/client/signup/a;

    invoke-static {p1}, Lcom/roblox/client/signup/a;->d(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$e;

    move-result-object p1

    sget-object v0, Lcom/roblox/client/signup/a$e;->a:Lcom/roblox/client/signup/a$e;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 343
    iget-object p1, p0, Lcom/roblox/client/signup/a$23;->b:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    iget-object p2, p0, Lcom/roblox/client/signup/a$23;->a:Landroid/content/Context;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_PasswordMinLength:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxEditText;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/a$23;->b:Lcom/roblox/client/signup/a;

    iget-object p1, p1, Lcom/roblox/client/signup/a;->at:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

    :cond_1
    :goto_0
    return-void
.end method
