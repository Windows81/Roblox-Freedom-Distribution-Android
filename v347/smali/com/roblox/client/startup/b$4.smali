.class Lcom/roblox/client/startup/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/startup/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/b;->e()V
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
    .line 280
    iput-object p1, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/o$c;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-static {v1}, Lcom/roblox/client/startup/b;->e(Lcom/roblox/client/startup/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PostDeviceInitHandler: complete. upgradeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", settingsSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-static {v1, p2}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Z)Z

    .line 287
    iget-object v1, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-static {v1, p1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Lcom/roblox/client/o$c;)Lcom/roblox/client/o$c;

    .line 289
    sget-object v1, Lcom/roblox/client/o$c;->b:Lcom/roblox/client/o$c;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    if-ne p1, v1, :cond_2

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    sget-object v2, Lcom/roblox/client/startup/b$b;->i:Lcom/roblox/client/startup/b$b;

    invoke-static {v1, v2}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Lcom/roblox/client/startup/b$b;)Lcom/roblox/client/startup/b$b;

    .line 292
    invoke-static {}, Lcom/roblox/client/b/d;->a()Lcom/roblox/client/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/b/d;->a(Z)V

    .line 293
    sget-object v1, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-static {v1}, Lcom/roblox/client/startup/b;->f(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/startup/c;->c(Z)V

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_2
    if-eqz p2, :cond_3

    .line 299
    iget-object v0, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->g(Lcom/roblox/client/startup/b;)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/startup/b$4;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->h(Lcom/roblox/client/startup/b;)V

    goto :goto_0
.end method
