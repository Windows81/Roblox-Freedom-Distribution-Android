.class public Lcom/roblox/client/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/roblox/client/f/f;


# instance fields
.field private a:J

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/f/f;->b:Ljava/util/HashMap;

    .line 23
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/roblox/client/f/f;->a:J

    .line 24
    return-void
.end method

.method public static a()Lcom/roblox/client/f/f;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/roblox/client/f/f;->c:Lcom/roblox/client/f/f;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/roblox/client/f/f;->c:Lcom/roblox/client/f/f;

    .line 36
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-class v1, Lcom/roblox/client/f/f;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/roblox/client/f/f;->c:Lcom/roblox/client/f/f;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/roblox/client/f/f;

    invoke-direct {v0}, Lcom/roblox/client/f/f;-><init>()V

    sput-object v0, Lcom/roblox/client/f/f;->c:Lcom/roblox/client/f/f;

    .line 34
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/roblox/client/f/f;->c:Lcom/roblox/client/f/f;

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/roblox/client/f/f;->a:J

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/roblox/client/f/f;->b:Ljava/util/HashMap;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 61
    const-string v0, "WebFragmentRefreshHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking is refresh is needed. url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/roblox/client/f/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/roblox/client/f/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 65
    iget-object v0, p0, Lcom/roblox/client/f/f;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-wide v4, p0, Lcom/roblox/client/f/f;->a:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    const-string v1, "WebFragmentRefreshHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needs refresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_1
.end method
