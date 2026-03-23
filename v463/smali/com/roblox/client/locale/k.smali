.class public Lcom/roblox/client/locale/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/locale/k;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/roblox/client/locale/f;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/locale/k;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/roblox/client/locale/k;
    .locals 2

    .line 21
    sget-object v0, Lcom/roblox/client/locale/k;->a:Lcom/roblox/client/locale/k;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/roblox/client/locale/k;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/roblox/client/locale/k;->a:Lcom/roblox/client/locale/k;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/roblox/client/locale/k;

    invoke-direct {v1}, Lcom/roblox/client/locale/k;-><init>()V

    sput-object v1, Lcom/roblox/client/locale/k;->a:Lcom/roblox/client/locale/k;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/locale/k;->a:Lcom/roblox/client/locale/k;

    return-object v0
.end method

.method private a(Lcom/roblox/client/locale/f;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/locale/f;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/roblox/client/locale/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/roblox/client/locale/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/roblox/client/locale/f;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/k;->a(Lcom/roblox/client/locale/f;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/HashMap;Lcom/roblox/client/locale/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/f;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/k;->a(Lcom/roblox/client/locale/f;)Ljava/util/HashMap;

    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
