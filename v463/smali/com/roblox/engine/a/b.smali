.class public Lcom/roblox/engine/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Z = false


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IIIIII)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/roblox/engine/a/b;->a:Landroid/graphics/Rect;

    .line 35
    iput p2, p0, Lcom/roblox/engine/a/b;->b:I

    .line 36
    iput p3, p0, Lcom/roblox/engine/a/b;->c:I

    .line 37
    iput p4, p0, Lcom/roblox/engine/a/b;->d:I

    .line 38
    iput p5, p0, Lcom/roblox/engine/a/b;->e:I

    .line 39
    iput p6, p0, Lcom/roblox/engine/a/b;->f:I

    .line 40
    iput p7, p0, Lcom/roblox/engine/a/b;->g:I

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/graphics/Rect;)Lcom/roblox/engine/a/b;
    .locals 9

    const-string v0, "getScreenDimensionInfo() ------ start ------"

    .line 78
    invoke-static {v0}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenDimensionInfo() sr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 85
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenDimensionInfo() ss:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    .line 100
    invoke-static {}, Lcom/roblox/engine/a;->e()Z

    move-result v3

    const/16 v4, 0x15

    const/4 v5, 0x0

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_0

    .line 103
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 104
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 105
    iget p1, v3, Landroid/graphics/Point;->y:I

    .line 106
    iget v3, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 109
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenDimensionInfo() sh1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sh2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    if-le v1, p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move p0, v3

    move v3, p1

    .line 117
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenDimensionInfo() sh:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_2

    if-eqz p3, :cond_2

    .line 121
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 123
    :cond_2
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int p1, v3, p1

    .line 125
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenDimensionInfo() bm:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 127
    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int v1, v3, v1

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenDimensionInfo() sbh:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 131
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_3

    if-eqz p3, :cond_3

    .line 132
    iget p2, p3, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [I

    if-eqz p2, :cond_4

    .line 136
    invoke-virtual {p2, v6}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_4
    const/4 p2, 0x1

    .line 138
    aget p2, v6, p2

    :goto_3
    move v8, p2

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenDimensionInfo() top:"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 142
    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    .line 144
    invoke-static {}, Lcom/roblox/engine/a;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 153
    iget v6, v2, Landroid/graphics/Rect;->top:I

    if-ge v8, v6, :cond_5

    const-string v6, "getScreenDimensionInfo() adjusting top margin"

    .line 154
    invoke-static {v6}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 155
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v6

    .line 156
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v6

    :cond_5
    move v7, p2

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenDimensionInfo() kby:"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 162
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_6

    if-eqz p3, :cond_6

    .line 163
    iget p0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 165
    :cond_6
    iget p2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, p2

    .line 167
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getScreenDimensionInfo() rsbw:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/roblox/engine/a;->e()Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    .line 175
    :cond_7
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v4, p2

    .line 177
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getScreenDimensionInfo() rsbh:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    sub-int/2addr p1, v1

    .line 179
    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getScreenDimensionInfo() kbh:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/engine/a/b;->a(Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/roblox/engine/a/b;

    move-object v1, p1

    move v5, p0

    invoke-direct/range {v1 .. v8}, Lcom/roblox/engine/a/b;-><init>(Landroid/graphics/Rect;IIIIII)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 194
    sget-boolean v0, Lcom/roblox/engine/a/b;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "rbx.screen"

    .line 195
    invoke-static {v0, p0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/roblox/engine/a/b;

    if-eqz v1, :cond_1

    .line 49
    check-cast p1, Lcom/roblox/engine/a/b;

    .line 50
    iget-object v1, p1, Lcom/roblox/engine/a/b;->a:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/roblox/engine/a/b;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/roblox/engine/a/b;->b:I

    iget v2, p0, Lcom/roblox/engine/a/b;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/a/b;->c:I

    iget v2, p0, Lcom/roblox/engine/a/b;->c:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/a/b;->d:I

    iget v2, p0, Lcom/roblox/engine/a/b;->d:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/a/b;->e:I

    iget v2, p0, Lcom/roblox/engine/a/b;->e:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/roblox/engine/a/b;->f:I

    iget v2, p0, Lcom/roblox/engine/a/b;->f:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lcom/roblox/engine/a/b;->g:I

    iget v1, p0, Lcom/roblox/engine/a/b;->g:I

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
