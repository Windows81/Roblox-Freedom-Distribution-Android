.class Landroidx/appcompat/widget/b$a;
.super Landroidx/appcompat/view/menu/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;Landroid/content/Context;Landroidx/appcompat/view/menu/u;Landroid/view/View;)V
    .locals 6

    .line 747
    iput-object p1, p0, Landroidx/appcompat/widget/b$a;->a:Landroidx/appcompat/widget/b;

    .line 748
    sget v5, Landroidx/appcompat/a$a;->actionOverflowMenuStyle:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/n;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;ZI)V

    .line 750
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/j;

    .line 751
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/j;->j()Z

    move-result p2

    if-nez p2, :cond_1

    .line 753
    iget-object p2, p1, Landroidx/appcompat/widget/b;->g:Landroidx/appcompat/widget/b$d;

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/b;->c(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/p;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/appcompat/widget/b;->g:Landroidx/appcompat/widget/b$d;

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/b$a;->a(Landroid/view/View;)V

    .line 756
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/b;->k:Landroidx/appcompat/widget/b$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b$a;->a(Landroidx/appcompat/view/menu/o$a;)V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    .line 761
    iget-object v0, p0, Landroidx/appcompat/widget/b$a;->a:Landroidx/appcompat/widget/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/b;->i:Landroidx/appcompat/widget/b$a;

    .line 762
    iget-object v0, p0, Landroidx/appcompat/widget/b$a;->a:Landroidx/appcompat/widget/b;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/b;->l:I

    .line 764
    invoke-super {p0}, Landroidx/appcompat/view/menu/n;->f()V

    return-void
.end method
