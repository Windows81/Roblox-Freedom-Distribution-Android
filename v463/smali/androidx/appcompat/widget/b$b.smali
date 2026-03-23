.class Landroidx/appcompat/widget/b$b;
.super Landroidx/appcompat/view/menu/ActionMenuItemView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/b;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/b;)V
    .locals 0

    .line 814
    iput-object p1, p0, Landroidx/appcompat/widget/b$b;->a:Landroidx/appcompat/widget/b;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/s;
    .locals 1

    .line 819
    iget-object v0, p0, Landroidx/appcompat/widget/b$b;->a:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->i:Landroidx/appcompat/widget/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/b$b;->a:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->i:Landroidx/appcompat/widget/b$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b$a;->c()Landroidx/appcompat/view/menu/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
