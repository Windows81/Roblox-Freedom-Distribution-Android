.class public Lcom/roblox/engine/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Point;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:Lcom/roblox/engine/d$a;


# direct methods
.method public constructor <init>(Lcom/roblox/engine/d$a;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/d;->a:Landroid/graphics/Point;

    .line 11
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/d;->b:Landroid/graphics/Point;

    .line 12
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    .line 13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/roblox/engine/d;->g:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, p0, Lcom/roblox/engine/d;->h:F

    .line 49
    iput-object p1, p0, Lcom/roblox/engine/d;->i:Lcom/roblox/engine/d$a;

    .line 50
    iput v0, p0, Lcom/roblox/engine/d;->g:I

    .line 51
    iput v1, p0, Lcom/roblox/engine/d;->h:F

    .line 52
    iput v0, p0, Lcom/roblox/engine/d;->e:I

    .line 53
    iput v0, p0, Lcom/roblox/engine/d;->f:I

    return-void
.end method

.method private e()V
    .locals 8

    .line 137
    iget-object v0, p0, Lcom/roblox/engine/d;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/roblox/engine/d;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 138
    iget-object v1, p0, Lcom/roblox/engine/d;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/roblox/engine/d;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 140
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 143
    iget-object v3, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    float-to-double v6, v2

    .line 145
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v2, v3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 148
    iput v0, p0, Lcom/roblox/engine/d;->h:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    iput v0, p0, Lcom/roblox/engine/d;->h:F

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/roblox/engine/d;->g:I

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    .line 58
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-eq v1, v0, :cond_4

    if-eq v1, v5, :cond_3

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2

    const/4 p1, 0x6

    if-eq v1, p1, :cond_0

    goto/16 :goto_0

    .line 119
    :cond_0
    iput v5, p0, Lcom/roblox/engine/d;->g:I

    .line 120
    iget p1, p0, Lcom/roblox/engine/d;->e:I

    if-eq p1, v3, :cond_1

    iget p1, p0, Lcom/roblox/engine/d;->f:I

    if-eq p1, v3, :cond_1

    .line 121
    iget-object p1, p0, Lcom/roblox/engine/d;->i:Lcom/roblox/engine/d$a;

    invoke-interface {p1, p0}, Lcom/roblox/engine/d$a;->a(Lcom/roblox/engine/d;)V

    .line 123
    :cond_1
    iput v4, p0, Lcom/roblox/engine/d;->h:F

    .line 124
    iput v3, p0, Lcom/roblox/engine/d;->f:I

    goto/16 :goto_0

    .line 68
    :cond_2
    iget v1, p0, Lcom/roblox/engine/d;->f:I

    if-ne v1, v3, :cond_7

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/roblox/engine/d;->f:I

    .line 72
    iget-object v1, p0, Lcom/roblox/engine/d;->a:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->e:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 73
    iget-object v1, p0, Lcom/roblox/engine/d;->a:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->e:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 75
    iget-object v1, p0, Lcom/roblox/engine/d;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->f:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 76
    iget-object v1, p0, Lcom/roblox/engine/d;->b:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->f:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 80
    iget-object v1, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->e:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 81
    iget-object v1, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->e:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 83
    iget-object v1, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->f:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 84
    iget-object v1, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    iget v4, p0, Lcom/roblox/engine/d;->f:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 86
    iput v2, p0, Lcom/roblox/engine/d;->g:I

    .line 88
    iget p1, p0, Lcom/roblox/engine/d;->e:I

    if-eq p1, v3, :cond_7

    .line 89
    iget-object p1, p0, Lcom/roblox/engine/d;->i:Lcom/roblox/engine/d$a;

    invoke-interface {p1, p0}, Lcom/roblox/engine/d$a;->a(Lcom/roblox/engine/d;)V

    goto/16 :goto_0

    .line 94
    :cond_3
    iget v1, p0, Lcom/roblox/engine/d;->e:I

    if-eq v1, v3, :cond_7

    iget v1, p0, Lcom/roblox/engine/d;->f:I

    if-eq v1, v3, :cond_7

    .line 95
    iput v0, p0, Lcom/roblox/engine/d;->g:I

    .line 97
    iget-object v1, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    iget v2, p0, Lcom/roblox/engine/d;->e:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 98
    iget-object v1, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    iget v2, p0, Lcom/roblox/engine/d;->e:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 100
    iget-object v1, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    iget v2, p0, Lcom/roblox/engine/d;->f:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 101
    iget-object v1, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    iget v2, p0, Lcom/roblox/engine/d;->f:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 103
    invoke-direct {p0}, Lcom/roblox/engine/d;->e()V

    .line 105
    iget-object p1, p0, Lcom/roblox/engine/d;->i:Lcom/roblox/engine/d$a;

    if-eqz p1, :cond_7

    .line 106
    iget-object p1, p0, Lcom/roblox/engine/d;->i:Lcom/roblox/engine/d$a;

    invoke-interface {p1, p0}, Lcom/roblox/engine/d$a;->a(Lcom/roblox/engine/d;)V

    goto :goto_0

    .line 111
    :cond_4
    iput v5, p0, Lcom/roblox/engine/d;->g:I

    .line 112
    iget p1, p0, Lcom/roblox/engine/d;->e:I

    if-eq p1, v3, :cond_5

    iget p1, p0, Lcom/roblox/engine/d;->f:I

    if-eq p1, v3, :cond_5

    .line 113
    iget-object p1, p0, Lcom/roblox/engine/d;->i:Lcom/roblox/engine/d$a;

    invoke-interface {p1, p0}, Lcom/roblox/engine/d$a;->a(Lcom/roblox/engine/d;)V

    .line 115
    :cond_5
    iput v4, p0, Lcom/roblox/engine/d;->h:F

    .line 116
    iput v3, p0, Lcom/roblox/engine/d;->e:I

    goto :goto_0

    .line 60
    :cond_6
    iget v1, p0, Lcom/roblox/engine/d;->e:I

    if-ne v1, v3, :cond_7

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/roblox/engine/d;->e:I

    .line 63
    iput v3, p0, Lcom/roblox/engine/d;->f:I

    .line 64
    iput v2, p0, Lcom/roblox/engine/d;->g:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_0
    return v0
.end method

.method public b()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/roblox/engine/d;->h:F

    return v0
.end method

.method public c()Landroid/graphics/Point;
    .locals 2

    .line 31
    iget v0, p0, Lcom/roblox/engine/d;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/roblox/engine/d;->c:Landroid/graphics/Point;

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public d()Landroid/graphics/Point;
    .locals 2

    .line 40
    iget v0, p0, Lcom/roblox/engine/d;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/roblox/engine/d;->d:Landroid/graphics/Point;

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method
