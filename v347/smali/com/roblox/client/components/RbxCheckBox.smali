.class public Lcom/roblox/client/components/RbxCheckBox;
.super Landroid/support/v7/widget/AppCompatCheckBox;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {p0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {p0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/roblox/client/components/l;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxCheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxCheckBox;->setEnabled(Z)V

    .line 33
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/roblox/client/components/l;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxCheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxCheckBox;->setEnabled(Z)V

    .line 40
    return-void
.end method
