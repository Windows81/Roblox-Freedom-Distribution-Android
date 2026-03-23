.class Lcom/roblox/client/components/RbxEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/RbxEditText;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxEditText;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxEditText;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 181
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {p1}, Lcom/roblox/client/components/RbxEditText;->b(Lcom/roblox/client/components/RbxEditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    iget-object p1, p1, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {v0}, Lcom/roblox/client/components/RbxEditText;->c(Lcom/roblox/client/components/RbxEditText;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 183
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/roblox/client/components/RbxEditText;->f:Z

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 173
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {p1}, Lcom/roblox/client/components/RbxEditText;->b(Lcom/roblox/client/components/RbxEditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    iget-boolean p1, p1, Lcom/roblox/client/components/RbxEditText;->f:Z

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/roblox/client/components/RbxEditText;->f:Z

    .line 175
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    iget-object p1, p1, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/roblox/client/components/RbxEditText$4;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/roblox/client/components/RbxEditText;->a(Lcom/roblox/client/components/RbxEditText;Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextSize(F)V

    :cond_0
    return-void
.end method
