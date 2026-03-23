.class Lorg/apmem/tools/layouts/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:F

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lorg/apmem/tools/layouts/a;->a:I

    .line 10
    iput-boolean v1, p0, Lorg/apmem/tools/layouts/a;->b:Z

    .line 11
    iput v0, p0, Lorg/apmem/tools/layouts/a;->c:F

    .line 12
    const/16 v0, 0x33

    iput v0, p0, Lorg/apmem/tools/layouts/a;->d:I

    .line 13
    iput v1, p0, Lorg/apmem/tools/layouts/a;->e:I

    .line 16
    sget-object v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 18
    :try_start_0
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_android_orientation:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apmem/tools/layouts/a;->a(I)V

    .line 19
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_debugDraw:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apmem/tools/layouts/a;->a(Z)V

    .line 20
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_weightDefault:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apmem/tools/layouts/a;->a(F)V

    .line 21
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_android_gravity:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apmem/tools/layouts/a;->b(I)V

    .line 22
    sget v0, Lorg/apmem/tools/layouts/c$a;->FlowLayout_layoutDirection:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apmem/tools/layouts/a;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void

    .line 24
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/apmem/tools/layouts/a;->a:I

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/apmem/tools/layouts/a;->c:F

    .line 54
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 34
    iput p1, p0, Lorg/apmem/tools/layouts/a;->a:I

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apmem/tools/layouts/a;->a:I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/apmem/tools/layouts/a;->b:Z

    .line 46
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lorg/apmem/tools/layouts/a;->d:I

    .line 62
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/apmem/tools/layouts/a;->b:Z

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/apmem/tools/layouts/a;->c:F

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 70
    iput p1, p0, Lorg/apmem/tools/layouts/a;->e:I

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apmem/tools/layouts/a;->e:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/apmem/tools/layouts/a;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/apmem/tools/layouts/a;->e:I

    return v0
.end method
