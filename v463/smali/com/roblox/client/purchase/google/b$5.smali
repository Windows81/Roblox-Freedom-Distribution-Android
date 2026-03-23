.class Lcom/roblox/client/purchase/google/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/os/HandlerThread;

.field final synthetic d:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;ZLjava/util/List;Landroid/os/HandlerThread;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    iput-boolean p2, p0, Lcom/roblox/client/purchase/google/b$5;->a:Z

    iput-object p3, p0, Lcom/roblox/client/purchase/google/b$5;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/roblox/client/purchase/google/b$5;->c:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "."

    .line 321
    new-instance v1, Lcom/roblox/client/purchase/google/a/g;

    invoke-direct {v1}, Lcom/roblox/client/purchase/google/a/g;-><init>()V

    .line 323
    :try_start_0
    iget-boolean v2, p0, Lcom/roblox/client/purchase/google/b$5;->a:Z

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;

    move-result-object v2

    const-string v3, "subs"

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b$5;->b:Ljava/util/List;

    invoke-interface {v2, v3, v1, v4}, Lcom/roblox/client/purchase/google/a/c;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I

    move-result v2

    goto :goto_0

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;

    move-result-object v2

    const-string v3, "inapp"

    iget-object v4, p0, Lcom/roblox/client/purchase/google/b$5;->b:Ljava/util/List;

    invoke-interface {v2, v3, v1, v4}, Lcom/roblox/client/purchase/google/a/c;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    iget-object v3, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v3}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/s/f;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnQuerySkuDetailsFinished. Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    if-nez v2, :cond_2

    .line 344
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/roblox/client/purchase/google/a/g;->a(Ljava/lang/String;)Lcom/roblox/client/purchase/google/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->l(Lcom/roblox/client/purchase/google/b;)V

    .line 353
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "OnQuerySkuDetailsFinished. productSku: null."

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->l(Lcom/roblox/client/purchase/google/b;)V

    .line 360
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->m(Lcom/roblox/client/purchase/google/b;)V

    .line 361
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catch_0
    move-exception v1

    const-string v2, "rbx.purchaseflow"

    const-string v3, "QuerySkuDetails failed."

    .line 329
    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->l(Lcom/roblox/client/purchase/google/b;)V

    .line 331
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/s/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnQuerySkuDetailsException. Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {v2, v0}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->m(Lcom/roblox/client/purchase/google/b;)V

    .line 336
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
