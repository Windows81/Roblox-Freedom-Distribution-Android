.class Lcom/roblox/client/routing/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/routing/a$a;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/roblox/client/routing/a$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/routing/a$a;Ljava/util/List;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    iput-object p2, p0, Lcom/roblox/client/routing/a$a$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/roblox/client/routing/a$a$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/routing/d;

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to post event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppRouter"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/l/j;->c(Ljava/lang/String;)Lcom/roblox/client/l/j;

    move-result-object v2

    .line 351
    sget-object v3, Lcom/roblox/client/routing/a$1;->a:[I

    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/routing/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 372
    :cond_0
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/routing/c;->b()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 374
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 375
    iget-object v0, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v0}, Lcom/roblox/client/routing/a$a;->b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v2}, Lcom/roblox/client/routing/a$a;->a(Lcom/roblox/client/routing/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/routing/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 384
    :catch_0
    iget-object v0, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v0}, Lcom/roblox/client/routing/a$a;->b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v2}, Lcom/roblox/client/routing/a$a;->a(Lcom/roblox/client/routing/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/routing/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 353
    :cond_2
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/routing/c;->b()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 355
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 356
    iget-object v0, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v0}, Lcom/roblox/client/routing/a$a;->b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v2}, Lcom/roblox/client/routing/a$a;->a(Lcom/roblox/client/routing/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/routing/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    invoke-static {v3, v4}, Lcom/roblox/client/l/j;->a(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 397
    invoke-virtual {v2, v1}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v1}, Lcom/roblox/client/routing/a$a;->b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/routing/b;->c()V

    goto :goto_2

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v1}, Lcom/roblox/client/routing/a$a;->b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/routing/b;->d()V

    .line 403
    :goto_2
    iget-object v1, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v1}, Lcom/roblox/client/routing/a$a;->c(Lcom/roblox/client/routing/a$a;)Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 365
    :catch_1
    iget-object v0, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v0}, Lcom/roblox/client/routing/a$a;->b(Lcom/roblox/client/routing/a$a;)Lcom/roblox/client/routing/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/roblox/client/routing/d;->b()Lcom/roblox/client/routing/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/routing/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/routing/a$a$1;->b:Lcom/roblox/client/routing/a$a;

    invoke-static {v2}, Lcom/roblox/client/routing/a$a;->a(Lcom/roblox/client/routing/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/routing/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
