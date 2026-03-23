.class public abstract Lcom/roblox/client/chat/a/g;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/chat/a/g;-><init>(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    .line 19
    return-void

    :cond_0
    move-object p1, p0

    .line 18
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/g;->b(Ljava/lang/Object;)I

    move-result v0

    .line 117
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/g;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    monitor-exit v1

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/g;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/g;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    monitor-exit v1

    .line 58
    :cond_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, p2}, Lcom/roblox/client/chat/a/g;->remove(I)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/chat/a/g;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/g;->b(Ljava/lang/Object;)I

    move-result v0

    .line 97
    if-gez v0, :cond_2

    .line 99
    if-eqz p2, :cond_1

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/chat/a/g;->add(ILjava/lang/Object;)V

    .line 109
    :goto_0
    monitor-exit v1

    .line 111
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/roblox/client/chat/a/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 106
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/roblox/client/chat/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/roblox/client/chat/a/g;->a(Ljava/lang/Object;I)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v1

    .line 40
    :cond_1
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/chat/a/g;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Lcom/roblox/client/chat/a/g;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/roblox/client/chat/a/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    monitor-exit v1

    .line 136
    :goto_1
    return v0

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    monitor-exit v1

    .line 136
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/roblox/client/chat/a/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
