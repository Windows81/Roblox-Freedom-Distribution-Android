.class Lcom/roblox/client/purchase/google/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/a$b;


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
    .line 244
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/purchase/a$a;)V
    .locals 3

    .prologue
    .line 248
    sget-object v0, Lcom/roblox/client/purchase/a$a;->a:Lcom/roblox/client/purchase/a$a;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    .line 249
    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->d(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->d(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/purchase/c;->b()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidationCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/roblox/client/purchase/google/b$2;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/purchase/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->j(Lcom/roblox/client/purchase/google/b;)V

    .line 277
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->r:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "PrePurchaseValidation Unknown error."

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->e(Lcom/roblox/client/purchase/google/b;)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->f(Lcom/roblox/client/purchase/google/b;)V

    .line 261
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->c:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "PrePurchaseValidation error"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->g(Lcom/roblox/client/purchase/google/b;)V

    .line 265
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->d:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "PrePurchaseValidation retry"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->h(Lcom/roblox/client/purchase/google/b;)V

    .line 269
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->e:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "PrePurchaseValidation limit"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->i(Lcom/roblox/client/purchase/google/b;)V

    .line 273
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$4;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/a$a;->f:Lcom/roblox/client/purchase/google/a$a;

    const-string v2, "PrePurchaseValidation requestBalance failed."

    invoke-static {v0, v1, v2}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
