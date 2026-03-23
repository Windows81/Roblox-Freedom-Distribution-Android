.class Landroidx/j/a/c$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/a/c;->a(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroidx/j/a/c;


# direct methods
.method constructor <init>(Landroidx/j/a/c;II)V
    .locals 0

    .line 499
    iput-object p1, p0, Landroidx/j/a/c$4;->c:Landroidx/j/a/c;

    iput p2, p0, Landroidx/j/a/c$4;->a:I

    iput p3, p0, Landroidx/j/a/c$4;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 502
    iget-object p2, p0, Landroidx/j/a/c$4;->c:Landroidx/j/a/c;

    iget-object p2, p2, Landroidx/j/a/c;->k:Landroidx/j/a/b;

    iget v0, p0, Landroidx/j/a/c$4;->a:I

    int-to-float v1, v0

    iget v2, p0, Landroidx/j/a/c$4;->b:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Landroidx/j/a/b;->setAlpha(I)V

    return-void
.end method
