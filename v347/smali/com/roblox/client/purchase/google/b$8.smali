.class Lcom/roblox/client/purchase/google/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/e$a;


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
    .line 543
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/f;)V
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnConsumeFinished. Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    invoke-virtual {p2}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/roblox/client/purchase/google/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    .line 550
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/q/d;->j()I

    move-result v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    .line 551
    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/purchase/d;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 549
    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->d(I)V

    .line 552
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;ZZ)V

    .line 553
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->d(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->d(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/purchase/google/a;

    sget-object v2, Lcom/roblox/client/purchase/google/a$a;->a:Lcom/roblox/client/purchase/google/a$a;

    invoke-direct {v1, v2}, Lcom/roblox/client/purchase/google/a;-><init>(Lcom/roblox/client/purchase/google/a$a;)V

    invoke-interface {v0, v1}, Lcom/roblox/client/purchase/c;->a(Lcom/roblox/client/purchase/d;)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->s(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v3}, Lcom/roblox/client/purchase/google/b;->t(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->v(Lcom/roblox/client/purchase/google/b;)V

    .line 564
    const-string v0, "rbx.purchaseflow"

    const-string v1, "End consumption flow."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->u(Lcom/roblox/client/purchase/google/b;)V

    .line 560
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$8;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->g:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "onConsumeFinishedListener failure"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0
.end method
