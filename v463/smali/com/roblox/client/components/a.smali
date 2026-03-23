.class public Lcom/roblox/client/components/a;
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
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    .line 29
    iput-object v0, p0, Lcom/roblox/client/components/a;->e:Ljava/lang/Integer;

    .line 30
    iput-object v0, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/roblox/client/components/a;->g:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/roblox/client/components/a;->l:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    iput p4, p0, Lcom/roblox/client/components/a;->b:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    iput p4, p0, Lcom/roblox/client/components/a;->c:I

    if-eqz p6, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    iput-object p4, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    if-eqz p7, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    :cond_1
    move-object p4, v0

    :goto_1
    iput-object p4, p0, Lcom/roblox/client/components/a;->e:Ljava/lang/Integer;

    if-eqz p8, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_2

    :cond_2
    move-object p4, v0

    :goto_2
    iput-object p4, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    if-eqz p9, :cond_3

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p9}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/roblox/client/components/a;->g:Ljava/lang/Integer;

    .line 54
    iput p3, p0, Lcom/roblox/client/components/a;->k:I

    .line 56
    sget p1, Lcom/roblox/client/o$f;->loading_squares_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/a;->h:Landroid/view/View;

    .line 57
    sget p1, Lcom/roblox/client/o$f;->loading_squares_2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/a;->i:Landroid/view/View;

    .line 58
    sget p1, Lcom/roblox/client/o$f;->loading_squares_3:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/a;->j:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/roblox/client/components/a;->c()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/components/a;->a:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;
    .locals 7

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, p3, :cond_0

    .line 137
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput p2, v6, v2

    aput p3, v6, v3

    .line 138
    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 139
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v4, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 140
    new-instance p2, Lcom/roblox/client/components/a$2;

    invoke-direct {p2, p0, p1}, Lcom/roblox/client/components/a$2;-><init>(Lcom/roblox/client/components/a;Landroid/view/View;)V

    invoke-virtual {v4, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 147
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 153
    new-instance p2, Lcom/roblox/client/components/a$3;

    invoke-direct {p2, p0, p1}, Lcom/roblox/client/components/a$3;-><init>(Lcom/roblox/client/components/a;Landroid/view/View;)V

    invoke-direct {p0, p4, p5, p2}, Lcom/roblox/client/components/a;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 159
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    .line 164
    new-instance p2, Lcom/roblox/client/components/a$4;

    invoke-direct {p2, p0, p1}, Lcom/roblox/client/components/a$4;-><init>(Lcom/roblox/client/components/a;Landroid/view/View;)V

    invoke-direct {p0, p6, p7, p2}, Lcom/roblox/client/components/a;->a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 170
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 174
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 175
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_3

    .line 176
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_3
    iget p1, p0, Lcom/roblox/client/components/a;->k:I

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v1
.end method

.method private a(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 184
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    aput p1, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 187
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/components/a;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/roblox/client/components/a;->h:Landroid/view/View;

    return-object p0
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 193
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/a;Landroid/view/View;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/a;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 199
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/a;Landroid/view/View;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method private c()Landroid/animation/AnimatorSet;
    .locals 11

    .line 97
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 99
    iget-object v2, p0, Lcom/roblox/client/components/a;->h:Landroid/view/View;

    iget v3, p0, Lcom/roblox/client/components/a;->b:I

    iget v4, p0, Lcom/roblox/client/components/a;->c:I

    iget-object v5, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/roblox/client/components/a;->e:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/roblox/client/components/a;->g:Ljava/lang/Integer;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/roblox/client/components/a;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;

    move-result-object v1

    .line 100
    iget-object v3, p0, Lcom/roblox/client/components/a;->i:Landroid/view/View;

    iget v4, p0, Lcom/roblox/client/components/a;->b:I

    iget v5, p0, Lcom/roblox/client/components/a;->c:I

    iget-object v6, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/roblox/client/components/a;->e:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/roblox/client/components/a;->g:Ljava/lang/Integer;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/roblox/client/components/a;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;

    move-result-object v2

    .line 101
    iget-object v4, p0, Lcom/roblox/client/components/a;->j:Landroid/view/View;

    iget v5, p0, Lcom/roblox/client/components/a;->b:I

    iget v6, p0, Lcom/roblox/client/components/a;->c:I

    iget-object v7, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/roblox/client/components/a;->e:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/roblox/client/components/a;->g:Ljava/lang/Integer;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/roblox/client/components/a;->a(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/animation/Animator;

    move-result-object v3

    .line 103
    new-instance v4, Lcom/roblox/client/components/a$1;

    invoke-direct {v4, p0}, Lcom/roblox/client/components/a$1;-><init>(Lcom/roblox/client/components/a;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    .line 126
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lcom/roblox/client/components/a;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/a;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/roblox/client/components/a;->a:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/roblox/client/components/a;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 66
    iget-object v0, p0, Lcom/roblox/client/components/a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/roblox/client/components/a;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 75
    iget-object v0, p0, Lcom/roblox/client/components/a;->h:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/roblox/client/components/a;->i:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/roblox/client/components/a;->j:Landroid/view/View;

    iget v1, p0, Lcom/roblox/client/components/a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/roblox/client/components/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/components/a;->a(Landroid/view/View;I)V

    .line 80
    iget-object v0, p0, Lcom/roblox/client/components/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/a;->a(Landroid/view/View;I)V

    .line 81
    iget-object v0, p0, Lcom/roblox/client/components/a;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/a;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/a;->a(Landroid/view/View;I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/roblox/client/components/a;->h:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/components/a;->b(Landroid/view/View;I)V

    .line 85
    iget-object v0, p0, Lcom/roblox/client/components/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/a;->b(Landroid/view/View;I)V

    .line 86
    iget-object v0, p0, Lcom/roblox/client/components/a;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/a;->b(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
