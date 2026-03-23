.class Lcom/roblox/client/components/RbxGenderPicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/RbxGenderPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxGenderPicker;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxGenderPicker;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->b(Lcom/roblox/client/components/RbxGenderPicker;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->c(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f07074c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->d(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f07073a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0, v2}, Lcom/roblox/client/components/RbxGenderPicker;->a(Lcom/roblox/client/components/RbxGenderPicker;I)I

    .line 82
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->f(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v1}, Lcom/roblox/client/components/RbxGenderPicker;->e(Lcom/roblox/client/components/RbxGenderPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->h(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v1}, Lcom/roblox/client/components/RbxGenderPicker;->g(Lcom/roblox/client/components/RbxGenderPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxGenderPicker;->b()V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->i(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxGenderPicker$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->i(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxGenderPicker$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v1}, Lcom/roblox/client/components/RbxGenderPicker;->j(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxButton;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/components/RbxGenderPicker$a;->a(Lcom/roblox/client/components/RbxButton;)V

    .line 93
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$2;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->a(Lcom/roblox/client/components/RbxGenderPicker;)V

    goto :goto_0
.end method
