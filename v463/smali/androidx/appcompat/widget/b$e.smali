.class Landroidx/appcompat/widget/b$e;
.super Landroidx/appcompat/view/menu/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;Z)V
    .locals 6

    .line 729
    iput-object p1, p0, Landroidx/appcompat/widget/b$e;->a:Landroidx/appcompat/widget/b;

    .line 730
    sget v5, Landroidx/appcompat/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/n;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/h;Landroid/view/View;ZI)V

    const p2, 0x800005

    .line 731
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/b$e;->a(I)V

    .line 732
    iget-object p1, p1, Landroidx/appcompat/widget/b;->k:Landroidx/appcompat/widget/b$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/b$e;->a(Landroidx/appcompat/view/menu/o$a;)V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    .line 737
    iget-object v0, p0, Landroidx/appcompat/widget/b$e;->a:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->a(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroidx/appcompat/widget/b$e;->a:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->b(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->close()V

    .line 740
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b$e;->a:Landroidx/appcompat/widget/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/b;->h:Landroidx/appcompat/widget/b$e;

    .line 742
    invoke-super {p0}, Landroidx/appcompat/view/menu/n;->f()V

    return-void
.end method
