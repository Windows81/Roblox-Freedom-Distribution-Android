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
.field a:Lcom/roblox/client/components/i;

.field private b:Lcom/roblox/client/components/RbxButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/roblox/client/components/d;

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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    .line 39
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    .line 40
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->d:Landroid/widget/ProgressBar;

    .line 41
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    .line 42
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/d;

    .line 52
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 53
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    .line 55
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    const/16 v0, 0x96

    .line 58
    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->l:I

    const/16 v0, 0xc8

    .line 59
    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->m:I

    const/16 v0, 0x19

    .line 60
    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->n:I

    const/high16 v1, 0xff0000

    .line 61
    iput v1, p0, Lcom/roblox/client/components/RbxProgressButton;->o:I

    .line 62
    iput v0, p0, Lcom/roblox/client/components/RbxProgressButton;->p:I

    .line 63
    iput v1, p0, Lcom/roblox/client/components/RbxProgressButton;->q:I

    .line 65
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/i;

    .line 28
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxProgressButton;Lcom/roblox/client/components/RbxProgressButton$a;)Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxProgressButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxButton;->setText(I)V

    .line 165
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$g;->rbx_button_progress:I

    invoke-static {v0, v1, p0}, Lcom/roblox/client/components/RbxProgressButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/o$l;->RbxProgressButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    sget v1, Lcom/roblox/client/o$l;->RbxProgressButton_defButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 73
    sget v1, Lcom/roblox/client/o$l;->RbxProgressButton_defProgressText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 76
    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Label_Working:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    .line 83
    :cond_1
    sget v1, Lcom/roblox/client/o$f;->rbxProgressBtnRbxBtn:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/components/RbxButton;

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    .line 84
    sget v1, Lcom/roblox/client/o$f;->rbxProgressBtnProgressText:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    .line 85
    sget v1, Lcom/roblox/client/o$f;->rbxProgressBtnProgressBar:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->d:Landroid/widget/ProgressBar;

    .line 86
    sget v1, Lcom/roblox/client/o$f;->rbxProgressBtnProgressContainer:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/RbxProgressButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    .line 88
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    sget v2, Lcom/roblox/client/o$l;->RbxProgressButton_progressTextSize:I

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    sget v2, Lcom/roblox/client/o$l;->RbxProgressButton_progressTextColor:I

    const/high16 v5, 0xff0000

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    sget v2, Lcom/roblox/client/o$l;->RbxProgressButton_buttonTextSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/roblox/client/components/RbxButton;->setTextSize(IF)V

    .line 97
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    sget v2, Lcom/roblox/client/o$l;->RbxProgressButton_buttonTextColor:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxButton;->setTextColor(I)V

    .line 99
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/components/RbxButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    new-instance v1, Lcom/roblox/client/components/i;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/components/i;-><init>(Landroid/view/View;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/i;

    .line 104
    sget p1, Lcom/roblox/client/o$l;->RbxProgressButton_rippleStartColor:I

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$c;->RbxGray4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/roblox/client/components/i;->a(I)V

    .line 107
    iget-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$l;->RbxProgressButton_backgroundResource:I

    sget v2, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_progress_blue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/roblox/client/components/RbxButton;->setBackgroundResource(I)V

    .line 108
    sget p1, Lcom/roblox/client/o$l;->RbxProgressButton_backgroundResource:I

    sget v1, Lcom/roblox/client/o$e;->rbx_drawable_flat_button_progress_blue:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxProgressButton;->setBackgroundResource(I)V

    .line 110
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->f()V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxProgressButton;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 179
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 181
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    .line 182
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 183
    new-instance v3, Lcom/roblox/client/components/RbxProgressButton$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/components/RbxProgressButton$1;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x96

    .line 204
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 205
    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$2;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/components/RbxProgressButton$2;-><init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_1

    .line 228
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->b(Lcom/roblox/client/components/RbxProgressButton$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/roblox/client/components/RbxProgressButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Label_Working_InProgress:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    return-void
.end method

.method private b(Lcom/roblox/client/components/RbxProgressButton$b;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxProgressButton;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 268
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxProgressButton;)Landroid/widget/LinearLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    if-eqz v0, :cond_2

    .line 238
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->b()V

    :goto_0
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->h:Lcom/roblox/client/components/RbxProgressButton$b;

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/RbxButton;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->e()V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 8

    .line 289
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-ne v0, v1, :cond_0

    .line 290
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 292
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 293
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 294
    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$3;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 313
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 314
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 315
    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v2, v1}, Lcom/roblox/client/components/RbxButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    new-instance v2, Lcom/roblox/client/components/RbxProgressButton$4;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/components/RbxProgressButton$4;-><init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_1

    .line 337
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    iput-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    .line 339
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 340
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 341
    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$5;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 362
    iget-object v2, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    new-instance v2, Lcom/roblox/client/components/RbxProgressButton$6;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/components/RbxProgressButton$6;-><init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->b:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_2

    .line 385
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/roblox/client/components/RbxProgressButton;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-direct {p0, v0}, Lcom/roblox/client/components/RbxProgressButton;->b(Lcom/roblox/client/components/RbxProgressButton$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->k:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/components/RbxProgressButton$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxProgressButton$7;-><init>(Lcom/roblox/client/components/RbxProgressButton;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxProgressButton;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/d;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/roblox/client/components/RbxProgressButton$b;)V
    .locals 1

    .line 119
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->d()V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/components/RbxProgressButton;->a()V

    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/components/RbxProgressButton$b;I)V
    .locals 1

    .line 130
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->b(I)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->a(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V
    .locals 1

    .line 148
    sget-object v0, Lcom/roblox/client/components/RbxProgressButton$8;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxProgressButton$b;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0, p2}, Lcom/roblox/client/components/RbxProgressButton;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 406
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 407
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/i;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/i;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCurrentState()Lcom/roblox/client/components/RbxProgressButton$a;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->g:Lcom/roblox/client/components/RbxProgressButton$a;

    return-object v0
.end method

.method public getOnRbxClickedListener()Lcom/roblox/client/components/d;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/d;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->a:Lcom/roblox/client/components/i;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/i;->a(Landroid/view/MotionEvent;)V

    .line 394
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 399
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnRbxClickedListener(Lcom/roblox/client/components/d;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton;->f:Lcom/roblox/client/components/d;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
