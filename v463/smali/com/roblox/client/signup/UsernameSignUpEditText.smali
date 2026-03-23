.class public Lcom/roblox/client/signup/UsernameSignUpEditText;
.super Lcom/roblox/client/components/RbxLoadingEditText;
.source "SourceFile"


# instance fields
.field private h:Lcom/roblox/client/signup/b;

.field private i:I

.field private final j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxLoadingEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    new-instance p1, Lcom/roblox/client/signup/UsernameSignUpEditText$4;

    invoke-direct {p1, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$4;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->j:Landroid/view/View$OnClickListener;

    .line 35
    invoke-direct {p0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->l()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 100
    iget-object v2, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, p1, v2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 108
    iget-object v4, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    .line 109
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v4, v0

    neg-int v0, v4

    aput v0, v1, v3

    .line 108
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/roblox/client/signup/UsernameSignUpEditText$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$1;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    new-instance v1, Lcom/roblox/client/signup/UsernameSignUpEditText$2;

    invoke-direct {v1, p0, p1, v2}, Lcom/roblox/client/signup/UsernameSignUpEditText$2;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x64

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 151
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 152
    new-instance p2, Lcom/roblox/client/signup/UsernameSignUpEditText$3;

    invoke-direct {p2, p0}, Lcom/roblox/client/signup/UsernameSignUpEditText$3;-><init>(Lcom/roblox/client/signup/UsernameSignUpEditText;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x64

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/UsernameSignUpEditText;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/signup/UsernameSignUpEditText;)Landroid/widget/EditText;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/signup/UsernameSignUpEditText;)Lcom/roblox/client/signup/b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->h:Lcom/roblox/client/signup/b;

    return-object p0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->d:Z

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/roblox/client/o$e;->icon_autogenerate:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v0, Lcom/roblox/client/o$e;->icon_check_green:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v0, Lcom/roblox/client/o$e;->icon_autogenerate_disabled:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setRightIcon(I)V

    return-void
.end method

.method public setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/b;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->h:Lcom/roblox/client/signup/b;

    return-void
.end method

.method protected setRightIcon(I)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/roblox/client/b;->ap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->i:I

    if-ne v0, p1, :cond_1

    return-void

    .line 90
    :cond_1
    iput p1, p0, Lcom/roblox/client/signup/UsernameSignUpEditText;->i:I

    .line 91
    invoke-virtual {p0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
