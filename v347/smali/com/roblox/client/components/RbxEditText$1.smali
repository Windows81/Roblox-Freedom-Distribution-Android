.class Lcom/roblox/client/components/RbxEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .prologue
    .line 98
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {v0}, Lcom/roblox/client/components/RbxEditText;->a(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-static {v0}, Lcom/roblox/client/components/RbxEditText;->a(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/components/i;->a(Landroid/view/View;Z)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    iget-object v0, v0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    iget-boolean v1, v1, Lcom/roblox/client/components/RbxEditText;->c:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 107
    if-eqz p2, :cond_2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->d()V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText$1;->a:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->e()V

    goto :goto_0
.end method
