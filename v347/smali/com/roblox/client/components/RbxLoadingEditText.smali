.class public Lcom/roblox/client/components/RbxLoadingEditText;
.super Lcom/roblox/client/components/RbxEditText;
.source "SourceFile"


# instance fields
.field protected e:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxEditText;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxLoadingEditText;->setup(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxLoadingEditText;->setup(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f0a0077

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/roblox/client/components/RbxLoadingEditText;->e:Landroid/widget/ProgressBar;

    .line 58
    iget-object v0, p0, Lcom/roblox/client/components/RbxLoadingEditText;->e:Landroid/widget/ProgressBar;

    const v1, 0x7f0707e7

    .line 59
    invoke-virtual {p0, p1, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLoadingEditText;->g()V

    .line 54
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLoadingEditText;->g()V

    .line 47
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 37
    const v0, 0x7f0e0125

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxLoadingEditText;->b(I)V

    .line 39
    iget-object v0, p0, Lcom/roblox/client/components/RbxLoadingEditText;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/roblox/client/components/RbxLoadingEditText;->e:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 40
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/components/RbxLoadingEditText;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/roblox/client/components/RbxLoadingEditText;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method
