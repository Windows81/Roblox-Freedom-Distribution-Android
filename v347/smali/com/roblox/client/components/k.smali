.class public abstract Lcom/roblox/client/components/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:Ljava/lang/String;

.field protected b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "PageSyncScrollListener"

    iput-object v0, p0, Lcom/roblox/client/components/k;->a:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/components/k;->c:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/components/k;->d:I

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/roblox/client/components/k;->e:I

    .line 22
    iput p1, p0, Lcom/roblox/client/components/k;->b:I

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    .line 24
    return-void
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/k;->a(I)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roblox/client/components/k;->f:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 30
    add-int v1, p2, p3

    .line 31
    iget v0, p0, Lcom/roblox/client/components/k;->b:I

    div-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 32
    iget v2, p0, Lcom/roblox/client/components/k;->b:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 34
    :goto_0
    if-gt v0, v1, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/roblox/client/components/k;->c(I)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
