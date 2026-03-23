.class Lcom/roblox/client/purchase/google/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/os/HandlerThread;

.field final synthetic c:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;Ljava/util/List;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/b$5;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/roblox/client/purchase/google/b$5;->b:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 300
    new-instance v0, Lcom/roblox/client/purchase/google/a/g;

    invoke-direct {v0}, Lcom/roblox/client/purchase/google/a/g;-><init>()V

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;

    move-result-object v1

    const-string v2, "inapp"

    iget-object v3, p0, Lcom/roblox/client/purchase/google/b$5;->a:Ljava/util/List;

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/purchase/google/a/c;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v2}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnQuerySkuDetailsFinished. Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 318
    if-nez v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->n(Lcom/roblox/client/purchase/google/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/purchase/google/a/g;->a(Ljava/lang/String;)Lcom/roblox/client/purchase/google/a/j;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v0}, Lcom/roblox/client/purchase/google/a/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->m(Lcom/roblox/client/purchase/google/b;)V

    .line 336
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 337
    :goto_1
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v1, "rbx.purchaseflow"

    const-string v2, "QuerySkuDetails failed."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->l(Lcom/roblox/client/purchase/google/b;)V

    .line 306
    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v1}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnQuerySkuDetailsException. Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {v1, v0}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->m(Lcom/roblox/client/purchase/google/b;)V

    .line 311
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->l(Lcom/roblox/client/purchase/google/b;)V

    .line 328
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "OnQuerySkuDetailsFinished. productSku: null."

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$5;->c:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->l(Lcom/roblox/client/purchase/google/b;)V

    goto :goto_0
.end method
