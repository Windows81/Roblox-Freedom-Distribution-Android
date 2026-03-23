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

.field protected c:Z

.field protected d:Lcom/roblox/client/components/RbxEditText$b;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/util/AttributeSet;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/roblox/client/components/i;

.field private k:Lcom/roblox/client/components/f;

.field private l:I

.field private m:F

.field private final n:Lcom/roblox/client/components/RbxEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    .line 30
    iput-boolean v1, p0, Lcom/roblox/client/components/RbxEditText;->c:Z

    .line 32
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->f:Landroid/util/AttributeSet;

    .line 34
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->h:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->j:Lcom/roblox/client/components/i;

    .line 38
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->k:Lcom/roblox/client/components/f;

    .line 40
    iput v1, p0, Lcom/roblox/client/components/RbxEditText;->l:I

    .line 42
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/roblox/client/components/RbxEditText;->m:F

    .line 452
    new-instance v0, Lcom/roblox/client/components/RbxEditText$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxEditText$6;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->n:Lcom/roblox/client/components/RbxEditText$a;

    .line 46
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->f()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    .line 30
    iput-boolean v1, p0, Lcom/roblox/client/components/RbxEditText;->c:Z

    .line 32
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->f:Landroid/util/AttributeSet;

    .line 34
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->h:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->j:Lcom/roblox/client/components/i;

    .line 38
    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->k:Lcom/roblox/client/components/f;

    .line 40
    iput v1, p0, Lcom/roblox/client/components/RbxEditText;->l:I

    .line 42
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/roblox/client/components/RbxEditText;->m:F

    .line 452
    new-instance v0, Lcom/roblox/client/components/RbxEditText$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxEditText$6;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->n:Lcom/roblox/client/components/RbxEditText$a;

    .line 52
    iput-object p2, p0, Lcom/roblox/client/components/RbxEditText;->f:Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->f()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->j:Lcom/roblox/client/components/i;

    return-object v0
.end method

.method private a(IFF)V
    .locals 4

    .prologue
    .line 402
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 403
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 404
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 405
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxEditText;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxEditText;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->i()V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxEditText;)Lcom/roblox/client/components/f;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->k:Lcom/roblox/client/components/f;

    return-object v0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0a0092

    invoke-static {v0, v4, p0}, Lcom/roblox/client/components/RbxEditText;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->b:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/roblox/client/components/RbxEditText;->f:Landroid/util/AttributeSet;

    sget-object v5, Lcom/roblox/client/h$b;->RbxEditText:[I

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 67
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    .line 68
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->g:Ljava/lang/String;

    .line 69
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->h:Ljava/lang/String;

    .line 71
    invoke-virtual {v7, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/roblox/client/b;->aG()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/roblox/client/components/RbxEditText;->c:Z

    .line 74
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setTextBoxInput(Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/components/RbxEditText;->f:Landroid/util/AttributeSet;

    invoke-static {v1, v3, v4}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/components/RbxEditText;->f:Landroid/util/AttributeSet;

    invoke-static {v1, v3, v4}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 86
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    if-eqz v0, :cond_3

    .line 89
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/components/RbxEditText$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxEditText$1;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-boolean v0, p0, Lcom/roblox/client/components/RbxEditText;->c:Z

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "Experiment"

    const-string v1, "EditTextClearIcon"

    const-string v3, "Enabled"

    invoke-static {v0, v1, v3}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/roblox/client/components/RbxEditText$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxEditText$2;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->k:Lcom/roblox/client/components/f;

    .line 125
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/components/RbxEditText$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxEditText$3;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    :cond_1
    new-instance v0, Lcom/roblox/client/components/RbxEditText$b;

    iget-object v5, p0, Lcom/roblox/client/components/RbxEditText;->n:Lcom/roblox/client/components/RbxEditText$a;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/roblox/client/components/RbxEditText$b;-><init>(Lcom/roblox/client/components/RbxEditText;Landroid/view/View$OnTouchListener;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;Lcom/roblox/client/components/RbxEditText$a;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxEditText;->d:Lcom/roblox/client/components/RbxEditText$b;

    .line 156
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    return-void

    :cond_2
    move v0, v3

    .line 72
    goto/16 :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private g()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->j()V

    .line 222
    :cond_0
    sget v0, Lcom/roblox/client/RobloxSettings;->mDeviceDensity:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const v1, 0x7f0707d3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 228
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxEditText;->m:F

    .line 252
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->j()V

    .line 259
    :cond_0
    sget v0, Lcom/roblox/client/RobloxSettings;->mDeviceDensity:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 267
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const v1, 0x7f0707d4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 268
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const v1, 0x7f0707d2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 392
    sget v0, Lcom/roblox/client/RobloxSettings;->mDeviceDensity:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget v1, p0, Lcom/roblox/client/components/RbxEditText;->m:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 395
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/components/RbxEditText;->a(IFF)V

    .line 399
    return-void
.end method

.method private setTextBoxInput(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 160
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_1
    return-void

    .line 160
    :sswitch_0
    const-string v2, "email"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "number"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "date"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v2, "uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "password"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "textNoSuggestions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 177
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 181
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 160
    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_1
        0x1c56c -> :sswitch_3
        0x2eefae -> :sswitch_2
        0x5c24b9c -> :sswitch_0
        0xd501a41 -> :sswitch_5
        0x4889ba9b -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 416
    if-nez p2, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 420
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/a/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->i()V

    .line 306
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 287
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 288
    new-instance v1, Lcom/roblox/client/components/RbxEditText$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxEditText$4;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 305
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->g()V

    .line 211
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 361
    invoke-static {p0}, Lcom/roblox/client/components/l;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 362
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    new-instance v0, Lcom/roblox/client/components/RbxEditText$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxEditText$5;-><init>(Lcom/roblox/client/components/RbxEditText;)V

    .line 371
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setEnabled(Z)V

    .line 374
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    if-eqz p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxEditText;->h()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 377
    invoke-static {p0}, Lcom/roblox/client/components/l;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 380
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->d:Lcom/roblox/client/components/RbxEditText$b;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setEnabled(Z)V

    .line 383
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->d:Lcom/roblox/client/components/RbxEditText$b;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    const v0, 0x7f070707

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setRightIcon(I)V

    .line 445
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setRightIcon(I)V

    .line 450
    return-void
.end method

.method public getBottomLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRbxFocusChangedListener()Lcom/roblox/client/components/i;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->j:Lcom/roblox/client/components/i;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBox()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 327
    :cond_0
    return-void
.end method

.method public setHintText(I)V
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method public setLongHintText(I)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setLongHintText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->d:Lcom/roblox/client/components/RbxEditText$b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxEditText$b;->a(Landroid/view/View$OnTouchListener;)V

    .line 189
    return-void
.end method

.method public setRbxFocusChangedListener(Lcom/roblox/client/components/i;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/roblox/client/components/RbxEditText;->j:Lcom/roblox/client/components/i;

    .line 354
    return-void
.end method

.method protected setRightIcon(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    iget v0, p0, Lcom/roblox/client/components/RbxEditText;->l:I

    if-ne v0, p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 435
    :cond_0
    iput p1, p0, Lcom/roblox/client/components/RbxEditText;->l:I

    .line 436
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTextBoxText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/roblox/client/components/RbxEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method
