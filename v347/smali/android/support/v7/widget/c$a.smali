.class Landroid/support/v7/widget/c$a;
.super Landroid/support/v7/view/menu/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/u;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 746
    iput-object p1, p0, Landroid/support/v7/widget/c$a;->a:Landroid/support/v7/widget/c;

    .line 747
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/a/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZI)V

    .line 749
    invoke-virtual {p3}, Landroid/support/v7/view/menu/u;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/j;

    .line 750
    invoke-virtual {v0}, Landroid/support/v7/view/menu/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p1, Landroid/support/v7/widget/c;->g:Landroid/support/v7/widget/c$d;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/c;->c(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/p;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$a;->a(Landroid/view/View;)V

    .line 755
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/c;->k:Landroid/support/v7/widget/c$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$a;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 756
    return-void

    .line 752
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/c;->g:Landroid/support/v7/widget/c$d;

    goto :goto_0
.end method


# virtual methods
.method protected f()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/c$a;->a:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/c;->i:Landroid/support/v7/widget/c$a;

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/c$a;->a:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/c;->l:I

    .line 763
    invoke-super {p0}, Landroid/support/v7/view/menu/n;->f()V

    .line 764
    return-void
.end method
