.class Landroid/support/transition/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/transition/al;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/aj$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/support/transition/aj$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/support/transition/aj$a;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/transition/aj$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aj;)V

    iput-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/aj$a;

    .line 50
    return-void
.end method

.method static c(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .line 54
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    :goto_1
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static d(Landroid/view/View;)Landroid/support/transition/aj;
    .locals 5

    .prologue
    .line 66
    invoke-static {p0}, Landroid/support/transition/aj;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 70
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    instance-of v4, v0, Landroid/support/transition/aj$a;

    if-eqz v4, :cond_0

    .line 72
    check-cast v0, Landroid/support/transition/aj$a;

    iget-object v0, v0, Landroid/support/transition/aj$a;->e:Landroid/support/transition/aj;

    .line 77
    :goto_1
    return-object v0

    .line 69
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Landroid/support/transition/ac;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Landroid/support/transition/ac;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_1

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/aj$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/aj$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/transition/aj;->a:Landroid/support/transition/aj$a;

    invoke-virtual {v0, p1}, Landroid/support/transition/aj$a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method
