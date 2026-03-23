.class public Lcom/roblox/client/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/h/o;


# instance fields
.field private a:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/p/a;->a:Landroidx/lifecycle/p;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/z;)Landroidx/core/h/z;
    .locals 1

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    invoke-virtual {p2}, Landroidx/core/h/z;->b()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 31
    invoke-virtual {p2}, Landroidx/core/h/z;->a()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 32
    invoke-virtual {p2}, Landroidx/core/h/z;->c()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 33
    invoke-virtual {p2}, Landroidx/core/h/z;->d()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    iget-object v0, p0, Lcom/roblox/client/p/a;->a:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    return-object p2
.end method

.method public a()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/roblox/client/p/a;->a:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1, p0}, Landroidx/core/h/r;->a(Landroid/view/View;Landroidx/core/h/o;)V

    :cond_0
    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/roblox/client/p/a;->a:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method
