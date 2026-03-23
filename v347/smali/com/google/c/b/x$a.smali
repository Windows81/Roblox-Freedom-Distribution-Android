.class Lcom/google/c/b/x$a;
.super Lcom/google/c/b/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/x",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/c/b/x;


# direct methods
.method constructor <init>(Lcom/google/c/b/x;II)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/c/b/x$a;->c:Lcom/google/c/b/x;

    invoke-direct {p0}, Lcom/google/c/b/x;-><init>()V

    .line 393
    iput p2, p0, Lcom/google/c/b/x$a;->a:I

    .line 394
    iput p3, p0, Lcom/google/c/b/x$a;->b:I

    .line 395
    return-void
.end method


# virtual methods
.method public b(II)Lcom/google/c/b/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 410
    iget v0, p0, Lcom/google/c/b/x$a;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/c/a/e;->a(III)V

    .line 411
    iget-object v0, p0, Lcom/google/c/b/x$a;->c:Lcom/google/c/b/x;

    iget v1, p0, Lcom/google/c/b/x$a;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/c/b/x$a;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/x;->b(II)Lcom/google/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 404
    iget v0, p0, Lcom/google/c/b/x$a;->b:I

    invoke-static {p1, v0}, Lcom/google/c/a/e;->a(II)I

    .line 405
    iget-object v0, p0, Lcom/google/c/b/x$a;->c:Lcom/google/c/b/x;

    iget v1, p0, Lcom/google/c/b/x$a;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/c/b/x;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Lcom/google/c/b/x;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Lcom/google/c/b/x;->d()Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/google/c/b/x;->a(I)Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/google/c/b/x$a;->b:I

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/x$a;->b(II)Lcom/google/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method t_()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    return v0
.end method
