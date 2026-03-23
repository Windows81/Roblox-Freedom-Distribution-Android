.class public Lcom/roblox/client/chat/a/e;
.super Lcom/roblox/client/chat/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/chat/a/g",
        "<",
        "Lcom/roblox/client/chat/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/roblox/client/chat/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/e;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/roblox/client/chat/a/g;-><init>(Ljava/lang/Object;)V

    .line 16
    new-instance v0, Lcom/roblox/client/chat/a/d;

    invoke-direct {v0}, Lcom/roblox/client/chat/a/d;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/e;->b:Lcom/roblox/client/chat/a/d;

    .line 17
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/roblox/client/chat/a/e;->b:Lcom/roblox/client/chat/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/d;->b(J)V

    .line 36
    iget-object v1, p0, Lcom/roblox/client/chat/a/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/e;->b:Lcom/roblox/client/chat/a/d;

    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    .line 38
    if-lez v0, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/e;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/d;

    .line 40
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/roblox/client/chat/a/e;->add(ILjava/lang/Object;)V

    .line 42
    :cond_0
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    check-cast p1, Lcom/roblox/client/chat/a/d;

    check-cast p2, Lcom/roblox/client/chat/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/e;->b(Lcom/roblox/client/chat/a/d;Lcom/roblox/client/chat/a/d;)V

    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/d;Lcom/roblox/client/chat/a/d;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/roblox/client/chat/a/d;Lcom/roblox/client/chat/a/d;)V
    .locals 0

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1, p2}, Lcom/roblox/client/chat/a/d;->a(Lcom/roblox/client/chat/a/d;)V

    .line 32
    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/roblox/client/chat/a/d;

    check-cast p2, Lcom/roblox/client/chat/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/e;->a(Lcom/roblox/client/chat/a/d;Lcom/roblox/client/chat/a/d;)Z

    move-result v0

    return v0
.end method
