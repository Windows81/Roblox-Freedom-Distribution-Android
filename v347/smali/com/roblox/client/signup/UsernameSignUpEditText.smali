.class public Lcom/roblox/client/signup/UsernameSignUpEditText;
.super Lcom/roblox/client/components/RbxLoadingEditText;
.source "SourceFile"


# instance fields
.field private f:Lcom/roblox/client/signup/c;

.field private g:I

.field private final h:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxLoadingEditText;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Lcom/roblox/client/signup/UsernameSignUpEditText$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$4;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    iput-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->h:Landroid/view/View$OnTouchListener;

    .line 31
    invoke-direct {p0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->l()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxLoadingEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    new-instance v0, Lcom/roblox/client/signup/UsernameSignUpEditText$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$4;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    iput-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->h:Landroid/view/View$OnTouchListener;

    .line 37
    invoke-direct {p0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->l()V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    .line 99
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v2

    .line 102
    iget-object v1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    .line 105
    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0, p1, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 143
    :goto_0
    return-void

    .line 110
    :cond_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    .line 111
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v4

    neg-int v0, v0

    aput v0, v2, v3

    .line 110
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 112
    new-instance v2, Lcom/roblox/client/signup/UsernameSignUpEditText$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$1;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 120
    new-instance v2, Lcom/roblox/client/signup/UsernameSignUpEditText$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText$2;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/roblox/client/signup/UsernameSignUpEditText$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$3;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/signup/UsernameSignUpEditText;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/roblox/client/signup/UsernameSignUpEditText;)Lcom/roblox/client/signup/c;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->f:Lcom/roblox/client/signup/c;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->c:Z

    .line 42
    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->h:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    const v0, 0x7f070721

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    .line 47
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    const v0, 0x7f070731

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    .line 52
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    const v0, 0x7f070722

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    .line 61
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    .line 68
    return-void
.end method

.method public setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/c;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->f:Lcom/roblox/client/signup/c;

    .line 73
    return-void
.end method

.method protected setRightIcon(I)V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/roblox/client/b;->aZ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->g:I

    if-eq v0, p1, :cond_0

    .line 92
    iput p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->g:I

    .line 93
    invoke-virtual {p0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
