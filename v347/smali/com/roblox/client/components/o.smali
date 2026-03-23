.class public Lcom/roblox/client/components/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/animation/ValueAnimator;

.field private p:Landroid/animation/ValueAnimator;

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/graphics/Rect;

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/16 v5, 0x3c

    const/16 v4, 0xa

    const/high16 v2, 0x42480000    # 50.0f

    const/4 v1, 0x0

    const v3, 0xb8b8b8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/components/o;->n:Z

    .line 39
    iput-object v1, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    .line 40
    iput-object v1, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    .line 41
    iput-object v1, p0, Lcom/roblox/client/components/o;->q:Landroid/animation/ValueAnimator;

    .line 43
    iput-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    .line 251
    iput v5, p0, Lcom/roblox/client/components/o;->s:I

    .line 252
    iput v4, p0, Lcom/roblox/client/components/o;->t:I

    .line 253
    iput v3, p0, Lcom/roblox/client/components/o;->u:I

    .line 254
    const/16 v0, 0xdac

    iput v0, p0, Lcom/roblox/client/components/o;->v:I

    .line 255
    const/16 v0, 0x12c

    iput v0, p0, Lcom/roblox/client/components/o;->w:I

    .line 256
    iput v2, p0, Lcom/roblox/client/components/o;->x:F

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    .line 53
    if-eqz p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/h$b;->RbxRipple:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->d:F

    .line 56
    iget v1, p0, Lcom/roblox/client/components/o;->d:F

    iput v1, p0, Lcom/roblox/client/components/o;->e:F

    .line 57
    const/4 v1, 0x2

    const/16 v2, 0xdac

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->i:I

    .line 58
    const/4 v1, 0x3

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->j:I

    .line 59
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->f:I

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->g:I

    .line 61
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->k:I

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/components/o;->m:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iput v2, p0, Lcom/roblox/client/components/o;->d:F

    .line 67
    iget v0, p0, Lcom/roblox/client/components/o;->d:F

    iput v0, p0, Lcom/roblox/client/components/o;->e:F

    .line 68
    const/16 v0, 0xdac

    iput v0, p0, Lcom/roblox/client/components/o;->i:I

    .line 69
    const/16 v0, 0x12c

    iput v0, p0, Lcom/roblox/client/components/o;->j:I

    .line 70
    iput v5, p0, Lcom/roblox/client/components/o;->f:I

    .line 71
    iput v4, p0, Lcom/roblox/client/components/o;->g:I

    .line 72
    iput v3, p0, Lcom/roblox/client/components/o;->k:I

    .line 73
    iput v3, p0, Lcom/roblox/client/components/o;->m:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/components/o;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/roblox/client/components/o;->d:F

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/components/o;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/roblox/client/components/o;->h:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/components/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Lcom/roblox/client/components/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/roblox/client/components/o;->c()V

    .line 133
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/o;->e:F

    iput v0, p0, Lcom/roblox/client/components/o;->d:F

    .line 134
    iget v0, p0, Lcom/roblox/client/components/o;->f:I

    iput v0, p0, Lcom/roblox/client/components/o;->h:I

    .line 135
    iget v0, p0, Lcom/roblox/client/components/o;->k:I

    iput v0, p0, Lcom/roblox/client/components/o;->l:I

    .line 137
    new-array v0, v6, [F

    iget v1, p0, Lcom/roblox/client/components/o;->d:F

    aput v1, v0, v4

    iget v1, p0, Lcom/roblox/client/components/o;->b:F

    float-to-int v1, v1

    iget v2, p0, Lcom/roblox/client/components/o;->c:F

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/roblox/client/components/o;->b(II)F

    move-result v1

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    .line 138
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/roblox/client/components/o$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/o$1;-><init>(Lcom/roblox/client/components/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/roblox/client/components/o;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v4/view/b/c;

    invoke-direct {v1}, Landroid/support/v4/view/b/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 150
    new-array v0, v6, [I

    iget v1, p0, Lcom/roblox/client/components/o;->h:I

    aput v1, v0, v4

    iget v1, p0, Lcom/roblox/client/components/o;->g:I

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    .line 151
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/roblox/client/components/o$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/o$2;-><init>(Lcom/roblox/client/components/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/roblox/client/components/o;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v4/view/b/a;

    invoke-direct {v1}, Landroid/support/v4/view/b/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 160
    return-void
.end method

.method private a(II)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 107
    iget-object v3, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 108
    aget v3, v2, v1

    .line 109
    aget v2, v2, v0

    .line 110
    iget-object v4, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 111
    iget-object v5, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 113
    if-lt p1, v3, :cond_0

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_0

    if-lt p2, v2, :cond_0

    add-int/2addr v2, v5

    if-le p2, v2, :cond_1

    :cond_0
    move v0, v1

    .line 116
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/roblox/client/components/o;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/roblox/client/components/o;->n:Z

    return p1
.end method

.method private b(II)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    .line 193
    iget-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 194
    iget-object v0, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    if-le v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p2

    if-le v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    move v3, v1

    move v1, v0

    move v0, v3

    .line 209
    :goto_1
    if-le v0, v1, :cond_2

    :goto_2
    int-to-float v0, v0

    const/high16 v1, 0x43960000    # 300.0f

    add-float/2addr v0, v1

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p2

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    .line 209
    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Lcom/roblox/client/components/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/roblox/client/components/o;->c()V

    .line 167
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/roblox/client/components/o;->h:I

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    .line 168
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/roblox/client/components/o$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/o$3;-><init>(Lcom/roblox/client/components/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/roblox/client/components/o$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/o$4;-><init>(Lcom/roblox/client/components/o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/roblox/client/components/o;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 187
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/o;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/o;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 216
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 221
    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/o;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/roblox/client/components/o;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/roblox/client/components/o;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 228
    :cond_2
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/o;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/o;->p:Landroid/animation/ValueAnimator;

    .line 232
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/o;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/o;->q:Landroid/animation/ValueAnimator;

    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/roblox/client/components/o;->k:I

    .line 238
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/roblox/client/components/o;->n:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    iget v1, p0, Lcom/roblox/client/components/o;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget v1, p0, Lcom/roblox/client/components/o;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget v1, p0, Lcom/roblox/client/components/o;->b:F

    iget v2, p0, Lcom/roblox/client/components/o;->c:F

    iget v3, p0, Lcom/roblox/client/components/o;->d:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    .line 80
    iget-object v0, p0, Lcom/roblox/client/components/o;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/o;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/components/o;->n:Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/o;->b:F

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/o;->c:F

    .line 88
    invoke-direct {p0}, Lcom/roblox/client/components/o;->a()V

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/o;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/roblox/client/components/o;->b()V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-direct {p0}, Lcom/roblox/client/components/o;->b()V

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-direct {p0}, Lcom/roblox/client/components/o;->b()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
