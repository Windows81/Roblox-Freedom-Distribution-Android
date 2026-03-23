.class Landroidx/k/u;
.super Landroidx/k/aa;
.source "SourceFile"

# interfaces
.implements Landroidx/k/w;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/k/aa;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/k/u;
    .locals 0

    .line 32
    invoke-static {p0}, Landroidx/k/aa;->d(Landroid/view/View;)Landroidx/k/aa;

    move-result-object p0

    check-cast p0, Landroidx/k/u;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/k/u;->a:Landroidx/k/aa$a;

    invoke-virtual {v0, p1}, Landroidx/k/aa$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/k/u;->a:Landroidx/k/aa$a;

    invoke-virtual {v0, p1}, Landroidx/k/aa$a;->b(Landroid/view/View;)V

    return-void
.end method
