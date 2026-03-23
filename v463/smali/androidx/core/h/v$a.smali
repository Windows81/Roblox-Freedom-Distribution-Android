.class Landroidx/core/h/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/h/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/core/h/v;

.field b:Z


# direct methods
.method constructor <init>(Landroidx/core/h/v;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x7e000000

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    instance-of v1, v0, Landroidx/core/h/w;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroidx/core/h/w;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0, p1}, Landroidx/core/h/w;->onAnimationCancel(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .line 74
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget v0, v0, Landroidx/core/h/v;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget v0, v0, Landroidx/core/h/v;->c:I

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iput v1, v0, Landroidx/core/h/v;->c:I

    .line 78
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/core/h/v$a;->b:Z

    if-nez v0, :cond_5

    .line 81
    :cond_1
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget-object v0, v0, Landroidx/core/h/v;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget-object v0, v0, Landroidx/core/h/v;->b:Ljava/lang/Runnable;

    .line 83
    iget-object v1, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iput-object v2, v1, Landroidx/core/h/v;->b:Ljava/lang/Runnable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/high16 v0, 0x7e000000

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    instance-of v1, v0, Landroidx/core/h/w;

    if-eqz v1, :cond_3

    .line 89
    move-object v2, v0

    check-cast v2, Landroidx/core/h/w;

    :cond_3
    if-eqz v2, :cond_4

    .line 92
    invoke-interface {v2, p1}, Landroidx/core/h/w;->onAnimationEnd(Landroid/view/View;)V

    :cond_4
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Landroidx/core/h/v$a;->b:Z

    :cond_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroidx/core/h/v$a;->b:Z

    .line 54
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget v0, v0, Landroidx/core/h/v;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_0
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget-object v0, v0, Landroidx/core/h/v;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iget-object v0, v0, Landroidx/core/h/v;->a:Ljava/lang/Runnable;

    .line 59
    iget-object v2, p0, Landroidx/core/h/v$a;->a:Landroidx/core/h/v;

    iput-object v1, v2, Landroidx/core/h/v;->a:Ljava/lang/Runnable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    instance-of v2, v0, Landroidx/core/h/w;

    if-eqz v2, :cond_2

    .line 65
    move-object v1, v0

    check-cast v1, Landroidx/core/h/w;

    :cond_2
    if-eqz v1, :cond_3

    .line 68
    invoke-interface {v1, p1}, Landroidx/core/h/w;->onAnimationStart(Landroid/view/View;)V

    :cond_3
    return-void
.end method
