.class public Landroid/support/v4/view/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/s$i;,
        Landroid/support/v4/view/s$h;,
        Landroid/support/v4/view/s$g;,
        Landroid/support/v4/view/s$f;,
        Landroid/support/v4/view/s$e;,
        Landroid/support/v4/view/s$d;,
        Landroid/support/v4/view/s$c;,
        Landroid/support/v4/view/s$b;,
        Landroid/support/v4/view/s$a;,
        Landroid/support/v4/view/s$j;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/s$j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1637
    new-instance v0, Landroid/support/v4/view/s$i;

    invoke-direct {v0}, Landroid/support/v4/view/s$i;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    .line 1657
    :goto_0
    return-void

    .line 1638
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1639
    new-instance v0, Landroid/support/v4/view/s$h;

    invoke-direct {v0}, Landroid/support/v4/view/s$h;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1640
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1641
    new-instance v0, Landroid/support/v4/view/s$g;

    invoke-direct {v0}, Landroid/support/v4/view/s$g;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1642
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1643
    new-instance v0, Landroid/support/v4/view/s$f;

    invoke-direct {v0}, Landroid/support/v4/view/s$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1644
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 1645
    new-instance v0, Landroid/support/v4/view/s$e;

    invoke-direct {v0}, Landroid/support/v4/view/s$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1646
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 1647
    new-instance v0, Landroid/support/v4/view/s$d;

    invoke-direct {v0}, Landroid/support/v4/view/s$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1648
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 1649
    new-instance v0, Landroid/support/v4/view/s$c;

    invoke-direct {v0}, Landroid/support/v4/view/s$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1650
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 1651
    new-instance v0, Landroid/support/v4/view/s$b;

    invoke-direct {v0}, Landroid/support/v4/view/s$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1652
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    .line 1653
    new-instance v0, Landroid/support/v4/view/s$a;

    invoke-direct {v0}, Landroid/support/v4/view/s$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0

    .line 1655
    :cond_8
    new-instance v0, Landroid/support/v4/view/s$j;

    invoke-direct {v0}, Landroid/support/v4/view/s$j;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    goto :goto_0
.end method

.method public static A(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 3766
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->o(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 1

    .prologue
    .line 3097
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2956
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;F)V

    .line 2957
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 2145
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;I)V

    .line 2146
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 3728
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;II)V

    .line 3729
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 2595
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;IIII)V

    .line 2596
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 3203
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 3204
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 3227
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 3228
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 3653
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3654
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 3182
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 3183
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1848
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1849
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/o;)V
    .locals 1

    .prologue
    .line 3081
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/support/v4/view/o;)V

    .line 3082
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/q;)V
    .locals 1

    .prologue
    .line 3752
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Landroid/support/v4/view/q;)V

    .line 3753
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 2085
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2086
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 2102
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 2103
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2992
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 2993
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2040
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;Z)V

    .line 2041
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2017
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->A(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 1

    .prologue
    .line 3114
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 2554
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->b(Landroid/view/View;I)V

    .line 2555
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3058
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3059
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2029
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2053
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->c(Landroid/view/View;)V

    .line 2054
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 3629
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->d(Landroid/view/View;I)V

    .line 3630
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2121
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 3638
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/s$j;->c(Landroid/view/View;I)V

    .line 3639
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2380
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2566
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2578
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2670
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2681
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;)Landroid/support/v4/view/w;
    .locals 1

    .prologue
    .line 2691
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->B(Landroid/view/View;)Landroid/support/v4/view/w;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2965
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->t(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3006
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->s(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3013
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->m(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3021
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->g(Landroid/view/View;)V

    .line 3022
    return-void
.end method

.method public static o(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3045
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->h(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3162
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3172
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->n(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3192
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->x(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 3214
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->y(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static t(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3262
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->v(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3289
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->w(Landroid/view/View;)V

    .line 3290
    return-void
.end method

.method public static v(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3579
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->q(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static w(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 3604
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->z(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static x(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3665
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->p(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static y(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3672
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->r(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3681
    sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/s$j;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/s$j;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
