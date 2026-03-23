.class Landroidx/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/b/a/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j(Landroidx/b/a/e;)Landroidx/b/a/g;
    .locals 0

    .line 122
    invoke-interface {p1}, Landroidx/b/a/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/b/a/g;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/b/a/e;)F
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroidx/b/a/c;->j(Landroidx/b/a/e;)Landroidx/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/b/a/g;->a()F

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroidx/b/a/e;F)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroidx/b/a/c;->j(Landroidx/b/a/e;)Landroidx/b/a/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/b/a/g;->a(F)V

    return-void
.end method

.method public a(Landroidx/b/a/e;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Landroidx/b/a/c;->j(Landroidx/b/a/e;)Landroidx/b/a/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/b/a/g;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public b(Landroidx/b/a/e;)F
    .locals 1

    .line 63
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->d(Landroidx/b/a/e;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public b(Landroidx/b/a/e;F)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Landroidx/b/a/c;->j(Landroidx/b/a/e;)Landroidx/b/a/g;

    move-result-object v0

    .line 52
    invoke-interface {p1}, Landroidx/b/a/e;->b()Z

    move-result v1

    invoke-interface {p1}, Landroidx/b/a/e;->c()Z

    move-result v2

    .line 51
    invoke-virtual {v0, p2, v1, v2}, Landroidx/b/a/g;->a(FZZ)V

    .line 53
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->f(Landroidx/b/a/e;)V

    return-void
.end method

.method public c(Landroidx/b/a/e;)F
    .locals 1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->d(Landroidx/b/a/e;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public c(Landroidx/b/a/e;F)V
    .locals 0

    .line 78
    invoke-interface {p1}, Landroidx/b/a/e;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public d(Landroidx/b/a/e;)F
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroidx/b/a/c;->j(Landroidx/b/a/e;)Landroidx/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/b/a/g;->b()F

    move-result p1

    return p1
.end method

.method public e(Landroidx/b/a/e;)F
    .locals 0

    .line 83
    invoke-interface {p1}, Landroidx/b/a/e;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public f(Landroidx/b/a/e;)V
    .locals 4

    .line 88
    invoke-interface {p1}, Landroidx/b/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0, v0, v0, v0}, Landroidx/b/a/e;->a(IIII)V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->a(Landroidx/b/a/e;)F

    move-result v0

    .line 93
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->d(Landroidx/b/a/e;)F

    move-result v1

    .line 95
    invoke-interface {p1}, Landroidx/b/a/e;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/b/a/h;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 97
    invoke-interface {p1}, Landroidx/b/a/e;->c()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroidx/b/a/h;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 98
    invoke-interface {p1, v2, v0, v2, v0}, Landroidx/b/a/e;->a(IIII)V

    return-void
.end method

.method public g(Landroidx/b/a/e;)V
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->a(Landroidx/b/a/e;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/b/a/c;->b(Landroidx/b/a/e;F)V

    return-void
.end method

.method public h(Landroidx/b/a/e;)V
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Landroidx/b/a/c;->a(Landroidx/b/a/e;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/b/a/c;->b(Landroidx/b/a/e;F)V

    return-void
.end method

.method public i(Landroidx/b/a/e;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroidx/b/a/c;->j(Landroidx/b/a/e;)Landroidx/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/b/a/g;->c()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
