.class public Lcom/roblox/client/pushnotification/b/e;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/pushnotification/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/roblox/client/pushnotification/b/m;",
        ">",
        "Ljava/util/Vector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/roblox/client/pushnotification/b/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/roblox/client/pushnotification/b/e$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 39
    invoke-virtual {p0, v0}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/pushnotification/b/m;

    invoke-interface {v1}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 41
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 44
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized a(J)V
    .locals 6

    monitor-enter p0

    .line 57
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 59
    invoke-virtual {p0, v2}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/roblox/client/pushnotification/b/m;

    invoke-interface {v3}, Lcom/roblox/client/pushnotification/b/m;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/b/e;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Lcom/roblox/client/pushnotification/b/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/pushnotification/b/e$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/e;->a:Lcom/roblox/client/pushnotification/b/e$a;

    return-void
.end method

.method public declared-synchronized a(Lcom/roblox/client/pushnotification/b/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/pushnotification/b/m;

    invoke-virtual {p0, p1, v2}, Lcom/roblox/client/pushnotification/b/e;->a(Lcom/roblox/client/pushnotification/b/m;Lcom/roblox/client/pushnotification/b/m;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/m;

    invoke-interface {v0, p1}, Lcom/roblox/client/pushnotification/b/m;->a(Lcom/roblox/client/pushnotification/b/m;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/b/e;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Lcom/roblox/client/pushnotification/b/m;Lcom/roblox/client/pushnotification/b/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/e;->a:Lcom/roblox/client/pushnotification/b/e$a;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/roblox/client/pushnotification/b/e$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/b/e;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/b/e;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
