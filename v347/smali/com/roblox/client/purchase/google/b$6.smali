.class Lcom/roblox/client/purchase/google/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/e$c;


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
    .line 410
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v1}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/i/f;->a(ZZ)V

    .line 414
    return-void
.end method

.method public a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPurchaseFinished. Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 418
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {v1, v2}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 437
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->a()I

    move-result v1

    const/16 v2, -0x3ed

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 427
    :cond_1
    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->h:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "User cancelled"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->p:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "onIabPurchaseFinished failed"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->o(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/e$a;

    move-result-object v2

    invoke-static {v1, p2, v0, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    goto :goto_0
.end method
