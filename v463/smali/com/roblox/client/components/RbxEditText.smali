.class public Lcom/roblox/client/components/RbxEditText;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/RbxEditText$a;,
        Lcom/roblox/client/components/RbxEditText$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/EditText;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Landroid/widget/LinearLayout;

.field protected d:Z

.field protected e:Lcom/roblox/client/components/RbxEditText$b;

.field f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/util/AttributeSet;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/roblox/client/components/f;

.field private m:Lcom/roblox/client/components/c;

.field private n:Landroid/view/View$OnClickListener;

.field private o:I

.field private p:F

.field private q:Z

.field private r:F

.field private final s:Lcom/roblox/client/components/RbxEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/roblox/client/components/RbxEditText;->d:Z

    .line 44
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    .line 45
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->h:Landroid/util/AttributeSet;

    .line 46
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->j:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->k:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->l:Lcom/roblox/client/components/f;

    .line 50
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->m:Lcom/roblox/client/components/c;

    .line 53
    iput v0, p0, Lcom/roblox/client/components/RbxEditText;->o:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/roblox/client/components/RbxEditText;->f:Z

    const/high16 p1, 0x41b00000    # 22.0f

    .line 59
    iput p1, p0, Lcom/roblox/client/components/RbxEditText;->r:F

    .line 593
    new-instance p1, Lcom/roblox/client/components/RbxEditText$8;

    invoke-direct {p1, p0}, Lcom/roblox/client/components/RbxEditText$8;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->s:Lcom/roblox/client/components/RbxEditText$a;

    .line 63
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/roblox/client/components/RbxEditText;->d:Z

    .line 44
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    .line 45
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->h:Landroid/util/AttributeSet;

    .line 46
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->j:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->k:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->l:Lcom/roblox/client/components/f;

    .line 50
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->m:Lcom/roblox/client/components/c;

    .line 53
    iput v0, p0, Lcom/roblox/client/components/RbxEditText;->o:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/roblox/client/components/RbxEditText;->f:Z

    const/high16 p1, 0x41b00000    # 22.0f

    .line 59
    iput p1, p0, Lcom/roblox/client/components/RbxEditText;->r:F

    .line 593
    new-instance p1, Lcom/roblox/client/components/RbxEditText$8;

    invoke-direct {p1, p0}, Lcom/roblox/client/components/RbxEditText$8;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->s:Lcom/roblox/client/components/RbxEditText$a;

    .line 68
    iput-object p2, p0, Lcom/roblox/client/components/RbxEditText;->h:Landroid/util/AttributeSet;

    .line 70
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->f()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxEditText;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/roblox/client/components/RbxEditText;->p:F

    return p1
.end method

.method private a(Landroid/content/Context;)I
    .locals 1

    .line 433
    invoke-static {p1}, Lcom/roblox/client/ae/f;->a(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x168

    if-ge p1, v0, :cond_0

    const/16 p1, 0x12

    return p1

    :cond_0
    const/16 p1, 0x16

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxEditText;Landroid/content/Context;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/f;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/roblox/client/components/RbxEditText;->l:Lcom/roblox/client/components/f;

    return-object p0
.end method

.method private a(IFF)V
    .locals 1

    .line 543
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p2, 0xc8

    .line 544
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 545
    iget-object p2, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 546
    iget-object p2, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxEditText;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/roblox/client/components/RbxEditText;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxEditText;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/roblox/client/components/RbxEditText;->q:Z

    return p0
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxEditText;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/roblox/client/components/RbxEditText;->p:F

    return p0
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxEditText;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxEditText;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->j()V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/roblox/client/components/RbxEditText;->m:Lcom/roblox/client/components/c;

    return-object p0
.end method

.method private f()V
    .locals 10

    .line 78
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$g;->rbx_edittext:I

    invoke-static {v0, v1, p0}, Lcom/roblox/client/components/RbxEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    sget v0, Lcom/roblox/client/o$f;->rbxEditTextBottomLayout:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->b:Landroid/widget/LinearLayout;

    .line 81
    sget v0, Lcom/roblox/client/o$f;->rbxEditTextTopLayout:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->c:Landroid/widget/LinearLayout;

    .line 83
    sget v0, Lcom/roblox/client/o$f;->rbxEditTextTextBox:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    .line 84
    sget v0, Lcom/roblox/client/o$f;->rbxEditTextBottomLabel:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->h:Landroid/util/AttributeSet;

    sget-object v2, Lcom/roblox/client/o$l;->RbxEditText:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    sget v1, Lcom/roblox/client/o$l;->RbxEditText_hintText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/components/RbxEditText;->k:Ljava/lang/String;

    .line 88
    sget v1, Lcom/roblox/client/o$l;->RbxEditText_errorText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    .line 89
    sget v1, Lcom/roblox/client/o$l;->RbxEditText_successText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/components/RbxEditText;->j:Ljava/lang/String;

    .line 90
    sget v1, Lcom/roblox/client/o$l;->RbxEditText_enableClearTextIcon:I

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/roblox/client/b;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/roblox/client/components/RbxEditText;->d:Z

    .line 94
    sget v1, Lcom/roblox/client/o$l;->RbxEditText_inputType:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0, v1}, Lcom/roblox/client/components/RbxEditText;->setTextBoxInput(Ljava/lang/String;)V

    .line 99
    :cond_1
    sget v1, Lcom/roblox/client/o$l;->RbxEditText_hintTextLong:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/components/RbxEditText;->h:Landroid/util/AttributeSet;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/components/RbxEditText;->h:Landroid/util/AttributeSet;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/roblox/client/components/RbxEditText;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/roblox/client/o$c;->RbxGray3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 106
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    .line 109
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$c;->RbxGray2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/components/RbxEditText$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/components/RbxEditText$1;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-boolean v1, p0, Lcom/roblox/client/components/RbxEditText;->d:Z

    if-eqz v1, :cond_3

    const-string v1, "Experiment"

    const-string v2, "EditTextClearIcon"

    const-string v3, "Enabled"

    .line 136
    invoke-static {v1, v2, v3}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/roblox/client/components/RbxEditText$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxEditText$2;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v1, p0, Lcom/roblox/client/components/RbxEditText;->m:Lcom/roblox/client/components/c;

    .line 144
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/components/RbxEditText$3;

    invoke-direct {v2, p0}, Lcom/roblox/client/components/RbxEditText$3;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/RbxEditText;->p:F

    .line 167
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/components/RbxEditText$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/components/RbxEditText$4;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    new-instance v1, Lcom/roblox/client/components/RbxEditText$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/roblox/client/components/RbxEditText;->s:Lcom/roblox/client/components/RbxEditText$a;

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/roblox/client/components/RbxEditText$b;-><init>(Lcom/roblox/client/components/RbxEditText;Landroid/view/View$OnTouchListener;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;)V

    iput-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Lcom/roblox/client/components/RbxEditText$b;

    .line 195
    iget-object v2, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxEditText;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/roblox/client/components/RbxEditText;->n:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$c;->RbxGray2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->k()V

    .line 266
    :cond_0
    sget v0, Lcom/roblox/client/u;->d:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->j()V

    return-void
.end method

.method private h()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$c;->RbxRed2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->k()V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    const/16 v1, 0xb

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;IIII)V

    .line 297
    sget v0, Lcom/roblox/client/u;->d:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_flat_edittext_error:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    return-void
.end method

.method private i()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxEditText;->r:F

    .line 326
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$c;->RbxGreen1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->k()V

    .line 333
    :cond_0
    sget v0, Lcom/roblox/client/u;->d:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    :cond_2
    :goto_0
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->fragment_sign_up_username:I

    if-ne v0, v1, :cond_3

    .line 341
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_flat_edittext:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_1

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_flat_edittext_success:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method private j()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_flat_edittext:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 533
    sget v0, Lcom/roblox/client/u;->d:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget v1, p0, Lcom/roblox/client/components/RbxEditText;->r:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 539
    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/components/RbxEditText;->a(IFF)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/graphics/Paint;F)I
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x41400000    # 12.0f

    :goto_0
    sub-float v2, v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    add-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 421
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 422
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p3

    if-ltz v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    float-to-int p1, v1

    return p1
.end method

.method protected a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 561
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->j()V

    return-void

    .line 363
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 365
    new-instance v1, Lcom/roblox/client/components/RbxEditText$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxEditText$5;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->i()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 502
    invoke-static {p0}, Lcom/roblox/client/components/g;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 503
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 505
    new-instance v0, Lcom/roblox/client/components/RbxEditText$7;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxEditText$7;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    .line 512
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setEnabled(Z)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->h()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 518
    invoke-static {p0}, Lcom/roblox/client/components/g;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 519
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 521
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Lcom/roblox/client/components/RbxEditText$b;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 523
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setEnabled(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->g()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Lcom/roblox/client/components/RbxEditText$b;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 585
    sget v0, Lcom/roblox/client/o$e;->ic_clear:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setRightIcon(I)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setRightIcon(I)V

    return-void
.end method

.method public getBottomContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getBottomLabel()Landroid/widget/TextView;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRbxFocusChangedListener()Lcom/roblox/client/components/f;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->l:Lcom/roblox/client/components/f;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBox()Landroid/widget/EditText;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getTopContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 450
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setHintText(I)V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/components/RbxEditText$6;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/components/RbxEditText$6;-><init>(Lcom/roblox/client/components/RbxEditText;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 410
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLongHintText(I)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setLongHintText(Ljava/lang/String;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Lcom/roblox/client/components/RbxEditText$b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxEditText$b;->a(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setRbxFocusChangedListener(Lcom/roblox/client/components/f;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->l:Lcom/roblox/client/components/f;

    return-void
.end method

.method public setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setRightIcon(I)V
    .locals 2

    .line 572
    iget v0, p0, Lcom/roblox/client/components/RbxEditText;->o:I

    if-ne v0, p1, :cond_0

    return-void

    .line 576
    :cond_0
    iput p1, p0, Lcom/roblox/client/components/RbxEditText;->o:I

    .line 577
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 579
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setTextBoxInput(Ljava/lang/String;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "textNoSuggestions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 226
    :pswitch_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 222
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 218
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 214
    :pswitch_3
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 210
    :pswitch_4
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 207
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 203
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_6
        0x1c56c -> :sswitch_5
        0x2eefae -> :sswitch_4
        0x5c24b9c -> :sswitch_3
        0x65b3d6e -> :sswitch_2
        0xd501a41 -> :sswitch_1
        0x4889ba9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTextBoxText(Ljava/lang/String;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
