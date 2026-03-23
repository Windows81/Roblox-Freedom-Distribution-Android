.class Lcom/roblox/client/startup/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/s/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "InitHelper"

    const-string v1, "SessionCheck SUCCESS."

    .line 410
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinishSessionCheckSuccess"

    .line 411
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "InitHelper"

    const-string v1, "SessionCheck... Unauthorized. Still considered Done."

    .line 417
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinishSessionCheckUnauthorized"

    .line 418
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    sget-object v1, Lcom/roblox/client/startup/c$a;->f:Lcom/roblox/client/startup/c$a;

    invoke-static {v0, v1}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;Lcom/roblox/client/startup/c$a;)Lcom/roblox/client/startup/c$a;

    .line 420
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;J)J

    .line 421
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->b(Z)V

    .line 422
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-static {v0}, Lcom/roblox/client/startup/c;->i(Lcom/roblox/client/startup/c;)Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->u()V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "InitHelper"

    const-string v1, "SessionCheck... Post login completed."

    .line 427
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinishSessionCheckPostLoginCompleted"

    .line 428
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    sget-object v1, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    invoke-static {v0, v1}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;Lcom/roblox/client/startup/c$a;)Lcom/roblox/client/startup/c$a;

    .line 430
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;J)J

    .line 431
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/analytics/g;->c()V

    .line 432
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-static {v0}, Lcom/roblox/client/startup/c;->i(Lcom/roblox/client/startup/c;)Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->u()V

    .line 434
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-static {v0}, Lcom/roblox/client/startup/c;->j(Lcom/roblox/client/startup/c;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "InitHelper"

    const-string v1, "SessionCheck... Service unavailable."

    .line 439
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinishSessionCheckServiceUnavailable"

    .line 440
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    sget-object v1, Lcom/roblox/client/startup/c$a;->g:Lcom/roblox/client/startup/c$a;

    invoke-static {v0, v1}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;Lcom/roblox/client/startup/c$a;)Lcom/roblox/client/startup/c$a;

    .line 442
    invoke-static {}, Lcom/roblox/client/analytics/g;->a()Lcom/roblox/client/analytics/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/g;->b(Z)V

    .line 443
    iget-object v0, p0, Lcom/roblox/client/startup/c$8;->a:Lcom/roblox/client/startup/c;

    invoke-static {v0}, Lcom/roblox/client/startup/c;->i(Lcom/roblox/client/startup/c;)Lcom/roblox/client/startup/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/d;->t()V

    return-void
.end method
