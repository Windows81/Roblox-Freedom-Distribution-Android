.class Lcom/roblox/client/purchase/google/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/purchase/google/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/g;)V
    .locals 5

    .prologue
    .line 640
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGotInventoryWithSkuDetailsFinished. Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    const-string v0, "rbx.purchaseflow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {p2}, Lcom/roblox/client/purchase/google/a/g;->a()Ljava/util/List;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnGotInventoryWithSkuDetailsFinished. ItemsCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 656
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Items: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v3, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-virtual {v1, v2}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/purchase/google/a/h;

    .line 659
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->w(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/roblox/client/purchase/google/a/g;->a(Ljava/lang/String;)Lcom/roblox/client/purchase/google/a/j;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_4

    .line 664
    iget-object v3, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    iget-object v3, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    .line 672
    :goto_2
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    goto :goto_1

    .line 668
    :cond_4
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$10;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v2

    const-string v3, "OnGotInventoryWithSkuDetailsFinished. productSku: null."

    invoke-virtual {v2, v3}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
