.class public Lcom/roblox/client/components/RbxLoadingEditText;
.super Lcom/roblox/client/components/RbxEditText;
.source "SourceFile"


# instance fields
.field protected g:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxLoadingEditText;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 2

    .line 57
    sget v0, Lcom/roblox/client/o$g;->include_rbx_progress_bar:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/roblox/client/components/RbxLoadingEditText;->g:Landroid/widget/ProgressBar;

    .line 58
    sget v1, Lcom/roblox/client/o$e;->rbx_spinner_loading_edittext:I

    .line 59
    invoke-virtual {p0, p1, v1}, Lcom/roblox/client/components/RbxLoadingEditText;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLoadingEditText;->g()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxLoadingEditText;->g()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 37
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_CheckingMessage:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxLoadingEditText;->a(I)V

    .line 39
    iget-object v0, p0, Lcom/roblox/client/components/RbxLoadingEditText;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/roblox/client/components/RbxLoadingEditText;->g:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method protected g()V
    .locals 2

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

    :cond_0
    return-void
.end method
