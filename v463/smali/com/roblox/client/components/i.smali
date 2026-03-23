.class public Lcom/roblox/client/components/i;
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
    .locals 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/roblox/client/components/i;->n:Z

    .line 39
    iput-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    .line 40
    iput-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    .line 41
    iput-object v0, p0, Lcom/roblox/client/components/i;->q:Landroid/animation/ValueAnimator;

    .line 43
    iput-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    const/16 v0, 0x3c

    .line 251
    iput v0, p0, Lcom/roblox/client/components/i;->s:I

    const/16 v1, 0xa

    .line 252
    iput v1, p0, Lcom/roblox/client/components/i;->t:I

    const v2, 0xb8b8b8

    .line 253
    iput v2, p0, Lcom/roblox/client/components/i;->u:I

    const/16 v3, 0xdac

    .line 254
    iput v3, p0, Lcom/roblox/client/components/i;->v:I

    const/16 v4, 0x12c

    .line 255
    iput v4, p0, Lcom/roblox/client/components/i;->w:I

    const/high16 v5, 0x42480000    # 50.0f

    .line 256
    iput v5, p0, Lcom/roblox/client/components/i;->x:F

    if-eqz p1, :cond_1

    .line 47
    iput-object p1, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v6, Lcom/roblox/client/o$l;->RbxRipple:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_startingRadius:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->d:F

    .line 56
    iput p2, p0, Lcom/roblox/client/components/i;->e:F

    .line 57
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_expandDuration:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->i:I

    .line 58
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_fadeDuration:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->j:I

    .line 59
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_startAlpha:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->f:I

    .line 60
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_endAlpha:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->g:I

    .line 61
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_startingColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->k:I

    .line 62
    sget p2, Lcom/roblox/client/o$l;->RbxRipple_endColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/roblox/client/components/i;->m:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 66
    :cond_0
    iput v5, p0, Lcom/roblox/client/components/i;->d:F

    .line 67
    iput v5, p0, Lcom/roblox/client/components/i;->e:F

    .line 68
    iput v3, p0, Lcom/roblox/client/components/i;->i:I

    .line 69
    iput v4, p0, Lcom/roblox/client/components/i;->j:I

    .line 70
    iput v0, p0, Lcom/roblox/client/components/i;->f:I

    .line 71
    iput v1, p0, Lcom/roblox/client/components/i;->g:I

    .line 72
    iput v2, p0, Lcom/roblox/client/components/i;->k:I

    .line 73
    iput v2, p0, Lcom/roblox/client/components/i;->m:I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/i;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/roblox/client/components/i;->d:F

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/components/i;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/roblox/client/components/i;->h:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/components/i;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 7

    .line 130
    invoke-direct {p0}, Lcom/roblox/client/components/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/roblox/client/components/i;->c()V

    .line 133
    :cond_0
    iget v0, p0, Lcom/roblox/client/components/i;->e:F

    iput v0, p0, Lcom/roblox/client/components/i;->d:F

    .line 134
    iget v1, p0, Lcom/roblox/client/components/i;->f:I

    iput v1, p0, Lcom/roblox/client/components/i;->h:I

    .line 135
    iget v1, p0, Lcom/roblox/client/components/i;->k:I

    iput v1, p0, Lcom/roblox/client/components/i;->l:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 137
    iget v0, p0, Lcom/roblox/client/components/i;->b:F

    float-to-int v0, v0

    iget v4, p0, Lcom/roblox/client/components/i;->c:F

    float-to-int v4, v4

    invoke-direct {p0, v0, v4}, Lcom/roblox/client/components/i;->b(II)F

    move-result v0

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    .line 138
    new-instance v2, Lcom/roblox/client/components/i$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/components/i$1;-><init>(Lcom/roblox/client/components/i;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    iget-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/roblox/client/components/i;->i:I

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/e/a/a/c;

    invoke-direct {v2}, Landroidx/e/a/a/c;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v1, [I

    .line 150
    iget v1, p0, Lcom/roblox/client/components/i;->h:I

    aput v1, v0, v3

    iget v1, p0, Lcom/roblox/client/components/i;->g:I

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    .line 151
    new-instance v1, Lcom/roblox/client/components/i$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/i$2;-><init>(Lcom/roblox/client/components/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/roblox/client/components/i;->i:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/e/a/a/a;

    invoke-direct {v1}, Landroidx/e/a/a/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(II)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    iget-object v1, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 108
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 109
    aget v0, v0, v3

    .line 110
    iget-object v4, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 111
    iget-object v5, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lt p1, v2, :cond_1

    add-int/2addr v2, v4

    if-gt p1, v2, :cond_1

    if-lt p2, v0, :cond_1

    add-int/2addr v0, v5

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/roblox/client/components/i;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/roblox/client/components/i;->n:Z

    return p1
.end method

.method private b(II)F
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 194
    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    if-le v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    move v1, p1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    move v1, v0

    .line 201
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int p1, p2, p1

    iget-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    if-le p1, v0, :cond_1

    .line 202
    iget-object p1, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int p1, p2, p1

    goto :goto_1

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    :goto_1
    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-le v1, p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, p1

    :goto_3
    int-to-float p1, v1

    const/high16 p2, 0x43960000    # 300.0f

    add-float/2addr p1, p2

    return p1
.end method

.method private b()V
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/roblox/client/components/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/roblox/client/components/i;->c()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 167
    iget v1, p0, Lcom/roblox/client/components/i;->h:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    .line 168
    new-instance v1, Lcom/roblox/client/components/i$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/i$3;-><init>(Lcom/roblox/client/components/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/roblox/client/components/i$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/i$4;-><init>(Lcom/roblox/client/components/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/roblox/client/components/i;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/i;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/i;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 216
    iget-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 221
    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/components/i;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/roblox/client/components/i;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_2
    return-void
.end method

.method private d()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/roblox/client/components/i;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/i;->p:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/i;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/roblox/client/components/i;->k:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 120
    iget-boolean v0, p0, Lcom/roblox/client/components/i;->n:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    iget v1, p0, Lcom/roblox/client/components/i;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget v1, p0, Lcom/roblox/client/components/i;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget v1, p0, Lcom/roblox/client/components/i;->b:F

    iget v2, p0, Lcom/roblox/client/components/i;->c:F

    iget v3, p0, Lcom/roblox/client/components/i;->d:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/i;->r:Landroid/graphics/Rect;

    .line 80
    iget-object v1, p0, Lcom/roblox/client/components/i;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/components/i;->b()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/components/i;->a(II)Z

    move-result p1

    if-nez p1, :cond_5

    .line 93
    invoke-direct {p0}, Lcom/roblox/client/components/i;->b()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/roblox/client/components/i;->b()V

    goto :goto_0

    .line 85
    :cond_4
    iput-boolean v1, p0, Lcom/roblox/client/components/i;->n:Z

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/i;->b:F

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/roblox/client/components/i;->c:F

    .line 88
    invoke-direct {p0}, Lcom/roblox/client/components/i;->a()V

    :cond_5
    :goto_0
    return-void
.end method
