.class final Lcom/roblox/engine/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/engine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/roblox/engine/b;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method private constructor <init>(Lcom/roblox/engine/b;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 923
    iput p1, p0, Lcom/roblox/engine/b$b;->a:I

    .line 924
    iput p1, p0, Lcom/roblox/engine/b$b;->b:I

    const/4 p1, 0x0

    .line 927
    iput p1, p0, Lcom/roblox/engine/b$b;->d:I

    .line 928
    iput p1, p0, Lcom/roblox/engine/b$b;->e:I

    .line 929
    iput p1, p0, Lcom/roblox/engine/b$b;->f:I

    .line 930
    iput p1, p0, Lcom/roblox/engine/b$b;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/engine/b;Lcom/roblox/engine/b$1;)V
    .locals 0

    .line 918
    invoke-direct {p0, p1}, Lcom/roblox/engine/b$b;-><init>(Lcom/roblox/engine/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, -0x1

    .line 1030
    iput v0, p0, Lcom/roblox/engine/b$b;->b:I

    .line 1031
    iget v0, p0, Lcom/roblox/engine/b$b;->d:I

    int-to-float v2, v0

    iget v0, p0, Lcom/roblox/engine/b$b;->e:I

    int-to-float v3, v0

    iget v0, p0, Lcom/roblox/engine/b$b;->f:I

    int-to-float v4, v0

    iget v0, p0, Lcom/roblox/engine/b$b;->g:I

    int-to-float v5, v0

    const/4 v1, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPanGesture(IFFFFF)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v0

    .line 942
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 943
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    sub-int v0, p2, p1

    int-to-float v0, v0

    sub-int v3, v1, v2

    int-to-float v3, v3

    .line 951
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/roblox/client/m/e;->cT()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 952
    :cond_0
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/m/e;->cT()Z

    move-result v2

    if-eqz v2, :cond_1

    move p2, p1

    .line 954
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 955
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_5

    .line 956
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_5

    cmpl-float p1, v3, v4

    if-lez p1, :cond_2

    .line 958
    iget-object p1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {p1, v1, p2}, Lcom/roblox/engine/b;->a(II)V

    goto :goto_0

    .line 960
    :cond_2
    iget-object p1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {p1, v1, p2}, Lcom/roblox/engine/b;->c(II)V

    goto :goto_0

    .line 964
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_5

    .line 965
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_5

    cmpl-float p1, v0, v4

    if-lez p1, :cond_4

    .line 967
    iget-object p1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {p1, v1, p2}, Lcom/roblox/engine/b;->b(II)V

    goto :goto_0

    .line 969
    :cond_4
    iget-object p1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {p1, v1, p2}, Lcom/roblox/engine/b;->d(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 974
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1040
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/engine/b$b;->a:I

    .line 1041
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v0

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    .line 1044
    invoke-static {v0, v1, p1}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassLongPressGesture(IFF)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 19

    move-object/from16 v0, p0

    .line 999
    iget v1, v0, Lcom/roblox/engine/b$b;->b:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1004
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    move-object/from16 v4, p2

    .line 1006
    invoke-virtual {v4, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/roblox/engine/b$b;->b:I

    .line 1008
    iget-object v3, v0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v3}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v3

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v0, Lcom/roblox/engine/b$b;->d:I

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v0, Lcom/roblox/engine/b$b;->e:I

    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    .line 1014
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    div-float/2addr v5, v3

    float-to-int v3, v5

    .line 1016
    iget v5, v0, Lcom/roblox/engine/b$b;->d:I

    sub-int v4, v5, v4

    iput v4, v0, Lcom/roblox/engine/b$b;->f:I

    .line 1017
    iget v6, v0, Lcom/roblox/engine/b$b;->e:I

    sub-int v3, v6, v3

    iput v3, v0, Lcom/roblox/engine/b$b;->g:I

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    int-to-float v8, v5

    int-to-float v9, v6

    int-to-float v10, v4

    int-to-float v11, v3

    const/4 v12, 0x0

    .line 1020
    invoke-static/range {v7 .. v12}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPanGesture(IFFFFF)V

    goto :goto_1

    :cond_1
    const/4 v13, 0x1

    int-to-float v14, v5

    int-to-float v15, v6

    int-to-float v1, v4

    int-to-float v3, v3

    const/16 v18, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    .line 1023
    invoke-static/range {v13 .. v18}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPanGesture(IFFFFF)V

    :goto_1
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v0

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float v0, v1

    int-to-float p1, p1

    .line 990
    invoke-static {v0, p1}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassTapGesture(FF)V

    const/4 p1, 0x0

    return p1
.end method
