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
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 868
    iput-object p1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput v1, p0, Lcom/roblox/engine/b$b;->a:I

    .line 874
    iput v1, p0, Lcom/roblox/engine/b$b;->b:I

    .line 877
    iput v0, p0, Lcom/roblox/engine/b$b;->d:I

    .line 878
    iput v0, p0, Lcom/roblox/engine/b$b;->e:I

    .line 879
    iput v0, p0, Lcom/roblox/engine/b$b;->f:I

    .line 880
    iput v0, p0, Lcom/roblox/engine/b$b;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/engine/b;Lcom/roblox/engine/b$1;)V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/roblox/engine/b$b;-><init>(Lcom/roblox/engine/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 976
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/engine/b$b;->b:I

    .line 977
    const/4 v0, 0x2

    iget v1, p0, Lcom/roblox/engine/b$b;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/roblox/engine/b$b;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/roblox/engine/b$b;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/roblox/engine/b$b;->g:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPanGesture(IFFFFF)V

    .line 979
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v0

    .line 892
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 893
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    .line 895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 896
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    div-float v0, v4, v0

    float-to-int v0, v0

    .line 898
    sub-int v0, v2, v0

    int-to-float v0, v0

    .line 899
    sub-int v3, v1, v3

    int-to-float v3, v3

    .line 901
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 902
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 903
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 904
    cmpl-float v0, v3, v7

    if-lez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/engine/b;->a(II)V

    .line 923
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/engine/b;->c(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 911
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 912
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 913
    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    .line 914
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/engine/b;->b(II)V

    goto :goto_0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/engine/b;->d(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 986
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/engine/b$b;->a:I

    .line 987
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v0

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    .line 989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float v0, v2, v0

    .line 990
    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassLongPressGesture(IFF)V

    .line 991
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    .line 945
    const/4 v0, 0x0

    .line 946
    iget v1, p0, Lcom/roblox/engine/b$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 947
    const/4 v0, 0x1

    .line 950
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 952
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/roblox/engine/b$b;->b:I

    .line 954
    iget-object v1, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v1}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v1

    .line 956
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/roblox/engine/b$b;->d:I

    .line 957
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/roblox/engine/b$b;->e:I

    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    div-float v1, v3, v1

    float-to-int v1, v1

    .line 962
    iget v3, p0, Lcom/roblox/engine/b$b;->d:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/roblox/engine/b$b;->f:I

    .line 963
    iget v2, p0, Lcom/roblox/engine/b$b;->e:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/roblox/engine/b$b;->g:I

    .line 965
    if-eqz v0, :cond_1

    .line 966
    const/4 v0, 0x0

    iget v1, p0, Lcom/roblox/engine/b$b;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/roblox/engine/b$b;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/roblox/engine/b$b;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/roblox/engine/b$b;->g:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPanGesture(IFFFFF)V

    .line 972
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 969
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/roblox/engine/b$b;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/roblox/engine/b$b;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/roblox/engine/b$b;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/roblox/engine/b$b;->g:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassPanGesture(IFFFFF)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/roblox/engine/b$b;->c:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->b(Lcom/roblox/engine/b;)F

    move-result v0

    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 937
    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/NativeInputInterface;->nativePassTapGesture(FF)V

    .line 938
    const/4 v0, 0x0

    return v0
.end method
