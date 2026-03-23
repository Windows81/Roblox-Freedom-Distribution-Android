.class public Lcom/roblox/client/components/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/animation/AnimatorSet;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    .line 29
    iput-object v1, p0, Lcom/roblox/client/components/c;->e:Ljava/lang/Integer;

    .line 30
    iput-object v1, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    .line 31
    iput-object v1, p0, Lcom/roblox/client/components/c;->g:Ljava/lang/Integer;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/components/c;->l:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/c;->b:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/c;->c:I

    .line 49
    if-eqz p6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    .line 50
    if-eqz p7, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/roblox/client/components/c;->e:Ljava/lang/Integer;

    .line 51
    if-eqz p8, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    .line 52
    if-eqz p9, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/roblox/client/components/c;->g:Ljava/lang/Integer;

    .line 54
    iput p3, p0, Lcom/roblox/client/components/c;->k:I

    .line 56
    const v0, 0x7f080116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/c;->h:Landroid/view/View;

    .line 57
    const v0, 0x7f080117

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/c;->i:Landroid/view/View;

    .line 58
    const v0, 0x7f080118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/c;->j:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/roblox/client/components/c;->d()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    .line 61
    return-void

    :cond_1
    move-object v0, v1

    .line 49
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 50
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 51
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/components/c;-><init>(Landroid/content/Context;Landroid/view/View;IIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 43
    return-void
.end method

.method private a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 136
    if-eq p2, p3, :cond_0

    .line 137
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 138
    new-array v4, v6, [I

    aput p2, v4, v5

    aput p3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 139
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 140
    new-instance v4, Lcom/roblox/client/components/c$2;

    invoke-direct {v4, p0, p1}, Lcom/roblox/client/components/c$2;-><init>(Lcom/roblox/client/components/c;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 148
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 153
    new-instance v0, Lcom/roblox/client/components/c$3;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/components/c$3;-><init>(Lcom/roblox/client/components/c;Landroid/view/View;)V

    invoke-direct {p0, p4, p5, v0}, Lcom/roblox/client/components/c;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 164
    new-instance v0, Lcom/roblox/client/components/c$4;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/components/c$4;-><init>(Lcom/roblox/client/components/c;Landroid/view/View;)V

    invoke-direct {p0, p6, p7, v0}, Lcom/roblox/client/components/c;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 170
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 174
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 175
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 176
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 175
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_3
    iget v0, p0, Lcom/roblox/client/components/c;->k:I

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 180
    return-object v3
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 184
    new-array v0, v4, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 187
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 188
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/components/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/components/c;->h:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 193
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/c;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/c;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 199
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/c;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/c;->a(Landroid/view/View;I)V

    return-void
.end method

.method private d()Landroid/animation/AnimatorSet;
    .locals 11

    .prologue
    .line 97
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/roblox/client/components/c;->h:Landroid/view/View;

    iget v2, p0, Lcom/roblox/client/components/c;->b:I

    iget v3, p0, Lcom/roblox/client/components/c;->c:I

    iget-object v4, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/roblox/client/components/c;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/roblox/client/components/c;->g:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/components/c;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;

    move-result-object v9

    .line 100
    iget-object v1, p0, Lcom/roblox/client/components/c;->i:Landroid/view/View;

    iget v2, p0, Lcom/roblox/client/components/c;->b:I

    iget v3, p0, Lcom/roblox/client/components/c;->c:I

    iget-object v4, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/roblox/client/components/c;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/roblox/client/components/c;->g:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/components/c;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;

    move-result-object v10

    .line 101
    iget-object v1, p0, Lcom/roblox/client/components/c;->j:Landroid/view/View;

    iget v2, p0, Lcom/roblox/client/components/c;->b:I

    iget v3, p0, Lcom/roblox/client/components/c;->c:I

    iget-object v4, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/roblox/client/components/c;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/roblox/client/components/c;->g:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/components/c;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/roblox/client/components/c$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/c$1;-><init>(Lcom/roblox/client/components/c;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 127
    return-object v8
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/roblox/client/components/c;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/roblox/client/components/c;->k:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 66
    iget-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 68
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/roblox/client/components/c;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 75
    iget-object v0, p0, Lcom/roblox/client/components/c;->h:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/c;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/roblox/client/components/c;->i:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/c;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/roblox/client/components/c;->j:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/c;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/roblox/client/components/c;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/c;->a(Landroid/view/View;I)V

    .line 80
    iget-object v0, p0, Lcom/roblox/client/components/c;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/c;->a(Landroid/view/View;I)V

    .line 81
    iget-object v0, p0, Lcom/roblox/client/components/c;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/c;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/c;->a(Landroid/view/View;I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/roblox/client/components/c;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/c;->b(Landroid/view/View;I)V

    .line 85
    iget-object v0, p0, Lcom/roblox/client/components/c;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/c;->b(Landroid/view/View;I)V

    .line 86
    iget-object v0, p0, Lcom/roblox/client/components/c;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/c;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/c;->b(Landroid/view/View;I)V

    .line 89
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/roblox/client/components/c;->b()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/components/c;->l:Z

    .line 94
    return-void
.end method
