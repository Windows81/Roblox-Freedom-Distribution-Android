.class public Lcom/roblox/client/chat/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/chat/a/a;


# instance fields
.field private b:Z

.field private c:I

.field private d:Lcom/roblox/client/chat/a/e;

.field private e:Landroid/support/v4/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/f",
            "<",
            "Lcom/roblox/client/chat/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/f",
            "<",
            "Lcom/roblox/client/chat/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v4/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/f",
            "<",
            "Lcom/roblox/client/chat/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/chat/a/a;->b:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/roblox/client/chat/a/e;

    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/roblox/client/chat/a/e;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    .line 37
    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/a;->e:Landroid/support/v4/g/f;

    .line 38
    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    .line 39
    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    .line 40
    return-void
.end method

.method public static a()Lcom/roblox/client/chat/a/a;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/roblox/client/chat/a/a;->a:Lcom/roblox/client/chat/a/a;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/roblox/client/chat/a/a;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/roblox/client/chat/a/a;->a:Lcom/roblox/client/chat/a/a;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/roblox/client/chat/a/a;

    invoke-direct {v0}, Lcom/roblox/client/chat/a/a;-><init>()V

    sput-object v0, Lcom/roblox/client/chat/a/a;->a:Lcom/roblox/client/chat/a/a;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/roblox/client/chat/a/a;->a:Lcom/roblox/client/chat/a/a;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h(J)I
    .locals 7

    .prologue
    .line 73
    iget-object v2, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 74
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/e;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/d;

    .line 76
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 77
    monitor-exit v2

    move v0, v1

    .line 80
    :goto_1
    return v0

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)Lcom/roblox/client/chat/a/c;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->e:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/c;

    .line 44
    if-nez v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    if-nez v0, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Lcom/roblox/client/chat/a/c;

    iget-object v2, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/roblox/client/chat/a/c;-><init>(Ljava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcom/roblox/client/chat/a/a;->e:Landroid/support/v4/g/f;

    invoke-virtual {v2, p1, p2, v0}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    .line 50
    :cond_0
    monitor-exit v1

    .line 52
    :cond_1
    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 112
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/e;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v1}, Lcom/roblox/client/chat/a/e;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/e;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public a(JLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p3}, Lcom/roblox/client/chat/a/c;->a(Ljava/util/ArrayList;)V

    .line 104
    return-void
.end method

.method public a(Lcom/roblox/client/chat/a/d;Z)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/e;->a(Ljava/lang/Object;Z)V

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/roblox/client/chat/a/d;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/chat/a/a;->e(J)V

    .line 126
    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/chat/a/d;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/e;->a(Ljava/util/List;I)V

    .line 108
    return-void
.end method

.method public a(JJZ)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/l;

    .line 207
    if-eqz p5, :cond_1

    .line 209
    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/roblox/client/chat/a/l;

    invoke-direct {v0}, Lcom/roblox/client/chat/a/l;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    .line 213
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p3, p4, v1}, Lcom/roblox/client/chat/a/l;->a(JZ)Z

    move-result v0

    .line 222
    :goto_0
    monitor-exit v2

    return v0

    .line 215
    :cond_1
    if-eqz v0, :cond_3

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Lcom/roblox/client/chat/a/l;->a(JZ)Z

    move-result v1

    .line 218
    invoke-virtual {v0}, Lcom/roblox/client/chat/a/l;->a()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 219
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->c(J)V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(JLcom/roblox/client/chat/a/h;)Z
    .locals 7

    .prologue
    .line 85
    if-eqz p3, :cond_2

    .line 86
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    .line 88
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/roblox/client/chat/a/h;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    .line 90
    const/4 v0, 0x1

    monitor-exit v1

    .line 94
    :goto_0
    return v0

    .line 92
    :cond_1
    monitor-exit v1

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/a;->b:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcom/roblox/client/chat/a/a;->b:Z

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/roblox/client/chat/a/e;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/roblox/client/chat/a/a;->c:I

    .line 157
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->e:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->c(J)V

    .line 58
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    new-instance v2, Lcom/roblox/client/chat/a/d;

    invoke-direct {v2, p1, p2}, Lcom/roblox/client/chat/a/d;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->c(J)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(J)Lcom/roblox/client/chat/a/d;
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/chat/a/a;->h(J)I

    move-result v0

    .line 69
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/d;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/e;->clear()V

    .line 139
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->e:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()V

    .line 140
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()V

    .line 141
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/roblox/client/chat/a/a;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/roblox/client/chat/a/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/roblox/client/chat/a/a;->c:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(J)Lcom/roblox/client/chat/a/h;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/roblox/client/chat/a/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/roblox/client/chat/a/a;->c:I

    return v0
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->d:Lcom/roblox/client/chat/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/chat/a/e;->a(J)V

    .line 119
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/roblox/client/chat/a/a;->c:I

    return v0
.end method

.method public f(J)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v2, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/l;

    .line 229
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/l;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v3, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v3

    move v2, v0

    move v1, v0

    .line 162
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->b()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->f:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/chat/a/h;

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    add-int/lit8 v0, v1, 0x1

    .line 162
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 167
    :cond_0
    monitor-exit v3

    return v1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public g(J)V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/f;->c(J)V

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/roblox/client/chat/a/a;->b:Z

    return v0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/roblox/client/chat/a/a;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->b()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 251
    :goto_0
    if-eqz v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/roblox/client/chat/a/a;->g:Landroid/support/v4/g/f;

    invoke-virtual {v2}, Landroid/support/v4/g/f;->c()V

    .line 254
    :cond_0
    monitor-exit v1

    return v0

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
