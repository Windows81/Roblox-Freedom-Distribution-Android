.class Lcom/roblox/client/friends/nearby/b/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/nearby/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/b/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "NearbyUserViewModel"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validating users. In cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v3}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/friends/c/c;

    .line 80
    invoke-virtual {v2}, Lcom/roblox/client/friends/c/c;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v5}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/ae/v$a;

    move-result-object v5

    invoke-interface {v5}, Lcom/roblox/client/ae/v$a;->b()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    const-string v3, "NearbyUserViewModel"

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expired user. Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/roblox/client/friends/c/c;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    invoke-static {v3}, Lcom/roblox/client/friends/nearby/b/f;->c(Lcom/roblox/client/friends/nearby/b/f;)Lcom/roblox/client/friends/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/roblox/client/friends/nearby/b/f$1$1;

    invoke-direct {v4, p0, v2}, Lcom/roblox/client/friends/nearby/b/f$1$1;-><init>(Lcom/roblox/client/friends/nearby/b/f$1;Lcom/roblox/client/friends/c/c;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
