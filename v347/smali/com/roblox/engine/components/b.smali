.class public Lcom/roblox/engine/components/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Z


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/engine/components/b;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IIIZI)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/roblox/engine/components/b;->a:Landroid/graphics/Rect;

    .line 31
    iput p2, p0, Lcom/roblox/engine/components/b;->b:I

    .line 32
    iput p3, p0, Lcom/roblox/engine/components/b;->c:I

    .line 33
    iput p4, p0, Lcom/roblox/engine/components/b;->d:I

    .line 34
    iput-boolean p5, p0, Lcom/roblox/engine/components/b;->e:Z

    .line 35
    iput p6, p0, Lcom/roblox/engine/components/b;->f:I

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/View;)Lcom/roblox/engine/components/b;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenDimensionInfo() sr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 75
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 76
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenDimensionInfo() ss:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenDimensionInfo() sh:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 82
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenDimensionInfo() bm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 86
    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v6, v2, v3

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenDimensionInfo() sbh:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 89
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScreenDimensionInfo() rsbh:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 92
    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenDimensionInfo() kbh:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/roblox/engine/components/b;->a(Ljava/lang/String;)V

    .line 95
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v5, v0

    .line 97
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 98
    if-eqz p3, :cond_1

    .line 99
    invoke-virtual {p3, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 101
    :cond_1
    aget v6, v6, v0

    .line 103
    new-instance v0, Lcom/roblox/engine/components/b;

    invoke-direct/range {v0 .. v6}, Lcom/roblox/engine/components/b;-><init>(Landroid/graphics/Rect;IIIZI)V

    .line 110
    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/roblox/engine/components/b;->g:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "rbx.screen"

    invoke-static {v0, p0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 40
    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v1, p1, Lcom/roblox/engine/components/b;

    if-eqz v1, :cond_2

    .line 44
    check-cast p1, Lcom/roblox/engine/components/b;

    .line 45
    iget-object v1, p1, Lcom/roblox/engine/components/b;->a:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/roblox/engine/components/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/b;->b:I

    iget v2, p0, Lcom/roblox/engine/components/b;->b:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/b;->c:I

    iget v2, p0, Lcom/roblox/engine/components/b;->c:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/b;->d:I

    iget v2, p0, Lcom/roblox/engine/components/b;->d:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/roblox/engine/components/b;->e:Z

    iget-boolean v2, p0, Lcom/roblox/engine/components/b;->e:Z

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/roblox/engine/components/b;->f:I

    iget v2, p0, Lcom/roblox/engine/components/b;->f:I

    if-eq v1, v2, :cond_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
