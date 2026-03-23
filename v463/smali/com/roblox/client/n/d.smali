.class public Lcom/roblox/client/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/roblox/client/n/d;


# instance fields
.field private a:J

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/n/d;->b:Ljava/util/HashMap;

    const-wide/32 v0, 0x2bf20

    .line 23
    iput-wide v0, p0, Lcom/roblox/client/n/d;->a:J

    return-void
.end method

.method public static a()Lcom/roblox/client/n/d;
    .locals 2

    .line 26
    sget-object v0, Lcom/roblox/client/n/d;->c:Lcom/roblox/client/n/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 30
    :cond_0
    const-class v0, Lcom/roblox/client/n/d;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/roblox/client/n/d;->c:Lcom/roblox/client/n/d;

    if-nez v1, :cond_1

    .line 32
    new-instance v1, Lcom/roblox/client/n/d;

    invoke-direct {v1}, Lcom/roblox/client/n/d;-><init>()V

    sput-object v1, Lcom/roblox/client/n/d;->c:Lcom/roblox/client/n/d;

    .line 34
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/roblox/client/n/d;->c:Lcom/roblox/client/n/d;

    return-object v0

    :catchall_0
    move-exception v1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/roblox/client/n/d;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/roblox/client/n/d;->b:Ljava/util/HashMap;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking is refresh is needed. url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebFragmentRefreshHelper"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/roblox/client/n/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/roblox/client/n/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 65
    iget-object v0, p0, Lcom/roblox/client/n/d;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-wide v3, p0, Lcom/roblox/client/n/d;->a:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Needs refresh="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method
