.class Landroidx/j/a/c$6;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/a/c;


# direct methods
.method constructor <init>(Landroidx/j/a/c;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1122
    iget-object p2, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget-boolean p2, p2, Landroidx/j/a/c;->m:Z

    if-nez p2, :cond_0

    .line 1123
    iget-object p2, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget p2, p2, Landroidx/j/a/c;->i:I

    iget-object v0, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget v0, v0, Landroidx/j/a/c;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    .line 1125
    :cond_0
    iget-object p2, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget p2, p2, Landroidx/j/a/c;->i:I

    .line 1127
    :goto_0
    iget-object v0, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget v0, v0, Landroidx/j/a/c;->f:I

    iget-object v1, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget v1, v1, Landroidx/j/a/c;->f:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 1128
    iget-object p2, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget-object p2, p2, Landroidx/j/a/c;->e:Landroidx/j/a/a;

    invoke-virtual {p2}, Landroidx/j/a/a;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    .line 1129
    iget-object p2, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    invoke-virtual {p2, v0}, Landroidx/j/a/c;->setTargetOffsetTopAndBottom(I)V

    .line 1130
    iget-object p2, p0, Landroidx/j/a/c$6;->a:Landroidx/j/a/c;

    iget-object p2, p2, Landroidx/j/a/c;->k:Landroidx/j/a/b;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroidx/j/a/b;->b(F)V

    return-void
.end method
