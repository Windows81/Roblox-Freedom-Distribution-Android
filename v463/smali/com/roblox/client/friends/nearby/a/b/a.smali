.class public abstract Lcom/roblox/client/friends/nearby/a/b/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/roblox/client/friends/nearby/a/b/b<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/friends/nearby/a/b/a;->c(Landroid/view/ViewGroup;I)Lcom/roblox/client/friends/nearby/a/b/b;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;)V"
        }
    .end annotation
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/roblox/client/friends/nearby/a/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/friends/nearby/a/b/a;->a(Lcom/roblox/client/friends/nearby/a/b/b;I)V

    return-void
.end method

.method public final a(Lcom/roblox/client/friends/nearby/a/b/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/friends/nearby/a/b/b<",
            "TV;>;I)V"
        }
    .end annotation

    .line 39
    iget-object v0, p1, Lcom/roblox/client/friends/nearby/a/b/b;->q:Landroidx/databinding/ViewDataBinding;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/roblox/client/friends/nearby/a/b/a;->a(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V

    .line 40
    iget-object p1, p1, Lcom/roblox/client/friends/nearby/a/b/b;->q:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->a()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, v0}, Lcom/roblox/client/friends/nearby/a/b/a;->c(I)V

    :cond_1
    return-void
.end method

.method protected abstract b(Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TV;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/nearby/a/b/a;->d(I)V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;I)Lcom/roblox/client/friends/nearby/a/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/roblox/client/friends/nearby/a/b/b<",
            "TV;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/nearby/a/b/a;->b(Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/roblox/client/friends/nearby/a/b/b;

    invoke-direct {p2, p1}, Lcom/roblox/client/friends/nearby/a/b/b;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/a/b/a;->c()V

    :cond_1
    return-void
.end method
