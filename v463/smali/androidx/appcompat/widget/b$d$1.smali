.class Landroidx/appcompat/widget/b$d$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/b$d;-><init>(Landroidx/appcompat/widget/b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/b;

.field final synthetic b:Landroidx/appcompat/widget/b$d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/b$d;Landroid/view/View;Landroidx/appcompat/widget/b;)V
    .locals 0

    .line 652
    iput-object p1, p0, Landroidx/appcompat/widget/b$d$1;->b:Landroidx/appcompat/widget/b$d;

    iput-object p3, p0, Landroidx/appcompat/widget/b$d$1;->a:Landroidx/appcompat/widget/b;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/s;
    .locals 1

    .line 655
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$1;->b:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->a:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->h:Landroidx/appcompat/widget/b$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 659
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$1;->b:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->a:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->h:Landroidx/appcompat/widget/b$e;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b$e;->c()Landroidx/appcompat/view/menu/m;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$1;->b:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->a:Landroidx/appcompat/widget/b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b;->d()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$1;->b:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->a:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->j:Landroidx/appcompat/widget/b$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 677
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/b$d$1;->b:Landroidx/appcompat/widget/b$d;

    iget-object v0, v0, Landroidx/appcompat/widget/b$d;->a:Landroidx/appcompat/widget/b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/b;->e()Z

    const/4 v0, 0x1

    return v0
.end method
