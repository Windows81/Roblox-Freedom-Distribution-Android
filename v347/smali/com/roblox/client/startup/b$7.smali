.class Lcom/roblox/client/startup/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/i/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->e(Lcom/roblox/client/startup/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionCheck SUCCESS."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->b(Z)V

    .line 383
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->e(Lcom/roblox/client/startup/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionCheck... Unauthorized. Still considered Done."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->e:Lcom/roblox/client/startup/b$b;

    invoke-static {v0, v1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Lcom/roblox/client/startup/b$b;)Lcom/roblox/client/startup/b$b;

    .line 389
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;J)J

    .line 390
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->b(Z)V

    .line 391
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->f(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->v()V

    .line 392
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->e(Lcom/roblox/client/startup/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionCheck... Post login completed."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->c:Lcom/roblox/client/startup/b$b;

    invoke-static {v0, v1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Lcom/roblox/client/startup/b$b;)Lcom/roblox/client/startup/b$b;

    .line 398
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;J)J

    .line 399
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/b/d;->c()V

    .line 400
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->f(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->v()V

    .line 402
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->j(Lcom/roblox/client/startup/b;)V

    .line 403
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->e(Lcom/roblox/client/startup/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionCheck... Service unavailable."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->f:Lcom/roblox/client/startup/b$b;

    invoke-static {v0, v1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Lcom/roblox/client/startup/b$b;)Lcom/roblox/client/startup/b$b;

    .line 409
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/b/d;->b(Z)V

    .line 410
    iget-object v0, p0, Lcom/roblox/client/startup/b$7;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->f(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/c;->n()V

    .line 411
    return-void
.end method
