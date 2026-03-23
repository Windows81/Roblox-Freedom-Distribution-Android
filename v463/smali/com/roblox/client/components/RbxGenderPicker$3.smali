.class Lcom/roblox/client/components/RbxGenderPicker$3;
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

    .line 103
    iput-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->b(Lcom/roblox/client/components/RbxGenderPicker;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->c(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;

    move-result-object p1

    sget v1, Lcom/roblox/client/o$e;->icon_male:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->d(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;

    move-result-object p1

    sget v1, Lcom/roblox/client/o$e;->icon_female_on:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1, v0}, Lcom/roblox/client/components/RbxGenderPicker;->a(Lcom/roblox/client/components/RbxGenderPicker;I)I

    .line 111
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->f(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->g(Lcom/roblox/client/components/RbxGenderPicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->h(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->e(Lcom/roblox/client/components/RbxGenderPicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxGenderPicker;->b()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->a(Lcom/roblox/client/components/RbxGenderPicker;)V

    .line 119
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->i(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxGenderPicker$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {p1}, Lcom/roblox/client/components/RbxGenderPicker;->i(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxGenderPicker$a;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker$3;->a:Lcom/roblox/client/components/RbxGenderPicker;

    invoke-static {v0}, Lcom/roblox/client/components/RbxGenderPicker;->k(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxButton;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/roblox/client/components/RbxGenderPicker$a;->a(Lcom/roblox/client/components/RbxButton;)V

    :cond_1
    return-void
.end method
