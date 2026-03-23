.class Lcom/roblox/client/signup/multiscreen/c/g$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 161
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 164
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    const-string v0, "UsernamePasswordFragment"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "transformation = null"

    .line 165
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/g;->s()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/roblox/client/o$e;->show_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 168
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object p1

    const-string v0, "passwordInvisible"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "transformation not null"

    .line 171
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/g;->s()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/roblox/client/o$e;->hide_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->d(Lcom/roblox/client/signup/multiscreen/c/g;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 174
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/g$14;->a:Lcom/roblox/client/signup/multiscreen/c/g;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/g;->c(Lcom/roblox/client/signup/multiscreen/c/g;)Lcom/roblox/client/signup/multiscreen/e/f;

    move-result-object p1

    const-string v0, "passwordVisible"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
