.class Landroid/support/v7/widget/c$e;
.super Landroid/support/v7/view/menu/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 728
    iput-object p1, p0, Landroid/support/v7/widget/c$e;->a:Landroid/support/v7/widget/c;

    .line 729
    sget v5, Landroid/support/v7/a/a$a;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/n;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/view/View;ZI)V

    .line 730
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$e;->a(I)V

    .line 731
    iget-object v0, p1, Landroid/support/v7/widget/c;->k:Landroid/support/v7/widget/c$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c$e;->a(Landroid/support/v7/view/menu/o$a;)V

    .line 732
    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v7/widget/c$e;->a:Landroid/support/v7/widget/c;

    invoke-static {v0}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Landroid/support/v7/widget/c$e;->a:Landroid/support/v7/widget/c;

    invoke-static {v0}, Landroid/support/v7/widget/c;->b(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/h;->close()V

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c$e;->a:Landroid/support/v7/widget/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$e;

    .line 741
    invoke-super {p0}, Landroid/support/v7/view/menu/n;->f()V

    .line 742
    return-void
.end method
