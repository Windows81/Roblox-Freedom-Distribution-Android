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

    .line 441
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/s/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-virtual {v1}, Lcom/roblox/client/purchase/google/b;->a()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/s/f;->a(ZZ)V

    return-void
.end method

.method public a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->c(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/s/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPurchaseFinished. Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->k(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->a()I

    move-result p1

    const/16 p2, -0x3ed

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 459
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    sget-object p2, Lcom/roblox/client/purchase/google/a$a;->i:Lcom/roblox/client/purchase/google/a$a;

    const-string v0, "User cancelled"

    invoke-static {p1, p2, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    sget-object p2, Lcom/roblox/client/purchase/google/a$a;->q:Lcom/roblox/client/purchase/google/a$a;

    const-string v0, "onIabPurchaseFinished failed"

    invoke-static {p1, p2, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a$a;Ljava/lang/String;)V

    .line 464
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {p1}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;)V

    return-void

    .line 467
    :cond_3
    iget-object p1, p0, Lcom/roblox/client/purchase/google/b$6;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {p1}, Lcom/roblox/client/purchase/google/b;->o(Lcom/roblox/client/purchase/google/b;)Lcom/roblox/client/purchase/google/a/e$a;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/h;ZLcom/roblox/client/purchase/google/a/e$a;)V

    return-void
.end method
