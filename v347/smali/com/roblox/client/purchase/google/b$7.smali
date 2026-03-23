.class Lcom/roblox/client/purchase/google/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/google/a/h;

.field final synthetic b:Z

.field final synthetic c:Lcom/roblox/client/purchase/google/a/e$a;

.field final synthetic d:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/b$7;->a:Lcom/roblox/client/purchase/google/a/h;

    iput-boolean p3, p0, Lcom/roblox/client/purchase/google/b$7;->b:Z

    iput-object p4, p0, Lcom/roblox/client/purchase/google/b$7;->c:Lcom/roblox/client/purchase/google/a/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/purchase/f$a;)V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerifyPurchase. Response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ReceiptId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$7;->a:Lcom/roblox/client/purchase/google/a/h;

    .line 505
    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/roblox/client/purchase/google/b$7;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/roblox/client/purchase/google/b$2;->b:[I

    invoke-virtual {p1}, Lcom/roblox/client/purchase/f$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 521
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->r(Lcom/roblox/client/purchase/google/b;)V

    .line 522
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->r:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "launchVerifyPurchaseReceipt unknown error"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 508
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$7;->a:Lcom/roblox/client/purchase/google/a/h;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/b$7;->c:Lcom/roblox/client/purchase/google/a/e$a;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V

    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->p(Lcom/roblox/client/purchase/google/b;)V

    .line 512
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->m:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "launchVerifyPurchaseReceipt error"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->q(Lcom/roblox/client/purchase/google/b;)V

    .line 517
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$7;->d:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->n:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "launchVerifyPurchaseReceipt empty response"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
