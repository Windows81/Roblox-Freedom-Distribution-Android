.class Landroidx/appcompat/widget/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/b;

.field private b:Landroidx/appcompat/widget/b$e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;Landroidx/appcompat/widget/b$e;)V
    .locals 0

    .line 796
    iput-object p1, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p2, p0, Landroidx/appcompat/widget/b$c;->b:Landroidx/appcompat/widget/b$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 802
    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->d(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->e(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->g()V

    .line 805
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b;

    invoke-static {v0}, Landroidx/appcompat/widget/b;->f(Landroidx/appcompat/widget/b;)Landroidx/appcompat/view/menu/p;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->b:Landroidx/appcompat/widget/b$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b$e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b;

    iget-object v1, p0, Landroidx/appcompat/widget/b$c;->b:Landroidx/appcompat/widget/b$e;

    iput-object v1, v0, Landroidx/appcompat/widget/b;->h:Landroidx/appcompat/widget/b$e;

    .line 809
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/b$c;->a:Landroidx/appcompat/widget/b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/b;->j:Landroidx/appcompat/widget/b$c;

    return-void
.end method
