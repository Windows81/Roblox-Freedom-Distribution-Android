.class public Lcom/roblox/client/components/RbxProgressButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/RbxProgressButton$a;,
        Lcom/roblox/client/components/RbxProgressButton$b;
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/components/o;

.field private b:Lcom/roblox/client/components/RbxButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/roblox/client/components/g;

.field private g:Lcom/roblox/client/components/RbxProgressButton$a;

.field private h:Lcom/roblox/client/components/RbxProgressButton$b;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0xff0000

    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    .line 39
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->d:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/g;

    .line 52
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 53
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 55
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 58
    const/16 v0, 0x96

    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->l:I

    .line 59
    const/16 v0, 0xc8

    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->m:I

    .line 60
    iput v2, p0, Lcom/roblox/client/components/RbxProgressButton;->n:I

    .line 61
    iput v3, p0, Lcom/roblox/client/components/RbxProgressButton;->o:I

    .line 62
    iput v2, p0, Lcom/roblox/client/components/RbxProgressButton;->p:I

    .line 63
    iput v3, p0, Lcom/roblox/client/components/RbxProgressButton;->q:I

    .line 65
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/high16 v3, 0xff0000

    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    .line 39
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->d:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/g;

    .line 52
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 53
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 55
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 58
    const/16 v0, 0x96

    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->l:I

    .line 59
    const/16 v0, 0xc8

    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->m:I

    .line 60
    iput v2, p0, Lcom/roblox/client/components/RbxProgressButton;->n:I

    .line 61
    iput v3, p0, Lcom/roblox/client/components/RbxProgressButton;->o:I

    .line 62
    iput v2, p0, Lcom/roblox/client/components/RbxProgressButton;->p:I

    .line 63
    iput v3, p0, Lcom/roblox/client/components/RbxProgressButton;->q:I

    .line 65
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    .line 28
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->a(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/high16 v3, 0xff0000

    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    .line 39
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->d:Landroid/widget/ProgressBar;

    .line 41
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/g;

    .line 52
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 53
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 55
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 58
    const/16 v0, 0x96

    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->l:I

    .line 59
    const/16 v0, 0xc8

    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->m:I

    .line 60
    iput v2, p0, Lcom/roblox/client/components/RbxProgressButton;->n:I

    .line 61
    iput v3, p0, Lcom/roblox/client/components/RbxProgressButton;->o:I

    .line 62
    iput v2, p0, Lcom/roblox/client/components/RbxProgressButton;->p:I

    .line 63
    iput v3, p0, Lcom/roblox/client/components/RbxProgressButton;->q:I

    .line 65
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    .line 35
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->a(Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxProgressButton;Lcom/roblox/client/components/RbxProgressButton$a;)Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxProgressButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    .line 171
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxButton;->setText(I)V

    .line 165
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    .line 166
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const v7, 0x7f0707e3

    const/high16 v6, 0xff0000

    const/4 v4, 0x4

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0091

    invoke-static {v0, v1, p0}, Lcom/roblox/client/components/RbxProgressButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/h$b;->RbxProgressButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 72
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0122

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 83
    :cond_1
    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    .line 84
    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->d:Landroid/widget/ProgressBar;

    .line 86
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    .line 88
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Lcom/roblox/client/components/RbxButton;->setTextSize(IF)V

    .line 97
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    new-instance v0, Lcom/roblox/client/components/o;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/components/o;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    .line 104
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/o;->a(I)V

    .line 107
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setBackgroundResource(I)V

    .line 108
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->setBackgroundResource(I)V

    .line 110
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->f()V

    .line 112
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxProgressButton;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->f()V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 174
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_1

    .line 175
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 177
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 178
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 179
    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$1;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 200
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 201
    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    new-instance v2, Lcom/roblox/client/components/RbxProgressButton$2;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/components/RbxProgressButton$2;-><init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->b(Lcom/roblox/client/components/RbxProgressButton$b;)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    .line 260
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private b(Lcom/roblox/client/components/RbxProgressButton$b;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 230
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxProgressButton;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->c()V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxProgressButton;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 244
    :cond_0
    return-void

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/RbxButton;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 281
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    .line 282
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x96

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_1

    .line 286
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 288
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 289
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 290
    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$3;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 309
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 310
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 311
    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v2, v1}, Lcom/roblox/client/components/RbxButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    new-instance v2, Lcom/roblox/client/components/RbxProgressButton$4;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/components/RbxProgressButton$4;-><init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_2

    .line 333
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 335
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 336
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 337
    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$5;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 356
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 357
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 358
    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    new-instance v2, Lcom/roblox/client/components/RbxProgressButton$6;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/components/RbxProgressButton$6;-><init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->b(Lcom/roblox/client/components/RbxProgressButton$b;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$7;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxProgressButton;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/g;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/g;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/roblox/client/components/RbxProgressButton$b;)V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->a()V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->d()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/roblox/client/components/RbxProgressButton$b;I)V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 132
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->a(I)V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->b(I)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 397
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/o;->a(Landroid/graphics/Canvas;)V

    .line 398
    return-void
.end method

.method public getCurrentState()Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    return-object v0
.end method

.method public getOnRbxClickedListener()Lcom/roblox/client/components/g;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/g;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/o;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/o;->a(Landroid/view/MotionEvent;)V

    .line 390
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnRbxClickedListener(Lcom/roblox/client/components/g;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/g;

    .line 402
    return-void
.end method
