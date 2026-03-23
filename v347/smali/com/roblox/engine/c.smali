.class public Lcom/roblox/engine/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Point;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:I

.field private f:F

.field private g:I

.field private h:Lcom/roblox/engine/c$a;


# direct methods
.method public constructor <init>(Lcom/roblox/engine/c$a;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    .line 10
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    .line 11
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/engine/c;->f:F

    .line 45
    iput-object p1, p0, Lcom/roblox/engine/c;->h:Lcom/roblox/engine/c$a;

    .line 46
    iput v1, p0, Lcom/roblox/engine/c;->g:I

    .line 47
    iput v1, p0, Lcom/roblox/engine/c;->d:I

    .line 48
    iput v1, p0, Lcom/roblox/engine/c;->e:I

    .line 49
    return-void
.end method

.method private a(FFFF)V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 136
    sub-float v1, p1, p3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 137
    sub-float v1, p2, p4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 139
    iget-object v1, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 140
    iget-object v1, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 142
    iget-object v1, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 144
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    int-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    float-to-int v3, p1

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 148
    iget-object v2, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    float-to-int v3, p2

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 150
    iget-object v2, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    float-to-int v3, p3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 151
    iget-object v2, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    float-to-int v3, p4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 153
    iget v2, p0, Lcom/roblox/engine/c;->f:F

    double-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/roblox/engine/c;->f:F

    .line 154
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/roblox/engine/c;->f:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v6, -0x1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    return v7

    .line 54
    :pswitch_1
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    if-ne v0, v6, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/engine/c;->d:I

    .line 57
    iput v6, p0, Lcom/roblox/engine/c;->e:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/engine/c;->g:I

    .line 59
    iput v2, p0, Lcom/roblox/engine/c;->f:F

    goto :goto_0

    .line 63
    :pswitch_2
    iget v0, p0, Lcom/roblox/engine/c;->e:I

    if-ne v0, v6, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/engine/c;->e:I

    .line 67
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 68
    iget v1, p0, Lcom/roblox/engine/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 70
    if-eq v0, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 71
    iget-object v0, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    iget v2, p0, Lcom/roblox/engine/c;->d:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 72
    iget-object v0, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    iget v2, p0, Lcom/roblox/engine/c;->d:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 75
    :cond_1
    if-eq v1, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/engine/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 77
    iget-object v0, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/engine/c;->e:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 81
    iget-object v0, p0, Lcom/roblox/engine/c;->c:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 83
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    if-eq v0, v6, :cond_0

    .line 84
    iget-object v0, p0, Lcom/roblox/engine/c;->h:Lcom/roblox/engine/c$a;

    invoke-interface {v0, p0}, Lcom/roblox/engine/c$a;->a(Lcom/roblox/engine/c;)V

    goto/16 :goto_0

    .line 88
    :pswitch_3
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/roblox/engine/c;->e:I

    if-eq v0, v6, :cond_0

    .line 89
    iput v7, p0, Lcom/roblox/engine/c;->g:I

    .line 91
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 92
    iget v2, p0, Lcom/roblox/engine/c;->e:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 95
    if-eq v0, v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 96
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 97
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    move v3, v0

    move v4, v2

    .line 100
    :goto_1
    if-eq v5, v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 101
    iget v0, p0, Lcom/roblox/engine/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 102
    iget v0, p0, Lcom/roblox/engine/c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 105
    :goto_2
    cmpl-float v5, v2, v1

    if-eqz v5, :cond_3

    cmpl-float v5, v0, v1

    if-eqz v5, :cond_3

    cmpl-float v5, v4, v1

    if-eqz v5, :cond_3

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_3

    .line 106
    invoke-direct {p0, v2, v0, v4, v3}, Lcom/roblox/engine/c;->a(FFFF)V

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/roblox/engine/c;->h:Lcom/roblox/engine/c$a;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/roblox/engine/c;->h:Lcom/roblox/engine/c$a;

    invoke-interface {v0, p0}, Lcom/roblox/engine/c$a;->a(Lcom/roblox/engine/c;)V

    goto/16 :goto_0

    .line 114
    :pswitch_4
    iput v3, p0, Lcom/roblox/engine/c;->g:I

    .line 115
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    if-eq v0, v6, :cond_4

    iget v0, p0, Lcom/roblox/engine/c;->e:I

    if-eq v0, v6, :cond_4

    .line 116
    iget-object v0, p0, Lcom/roblox/engine/c;->h:Lcom/roblox/engine/c$a;

    invoke-interface {v0, p0}, Lcom/roblox/engine/c$a;->a(Lcom/roblox/engine/c;)V

    .line 118
    :cond_4
    iput v2, p0, Lcom/roblox/engine/c;->f:F

    .line 119
    iput v6, p0, Lcom/roblox/engine/c;->d:I

    goto/16 :goto_0

    .line 122
    :pswitch_5
    iput v3, p0, Lcom/roblox/engine/c;->g:I

    .line 123
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    if-eq v0, v6, :cond_5

    iget v0, p0, Lcom/roblox/engine/c;->e:I

    if-eq v0, v6, :cond_5

    .line 124
    iget-object v0, p0, Lcom/roblox/engine/c;->h:Lcom/roblox/engine/c$a;

    invoke-interface {v0, p0}, Lcom/roblox/engine/c$a;->a(Lcom/roblox/engine/c;)V

    .line 126
    :cond_5
    iput v2, p0, Lcom/roblox/engine/c;->f:F

    .line 127
    iput v6, p0, Lcom/roblox/engine/c;->e:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    move v2, v1

    goto :goto_2

    :cond_7
    move v3, v1

    move v4, v1

    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/roblox/engine/c;->g:I

    return v0
.end method

.method public c()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/engine/c;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/roblox/engine/c;->a:Landroid/graphics/Point;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public d()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/roblox/engine/c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/roblox/engine/c;->b:Landroid/graphics/Point;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method
