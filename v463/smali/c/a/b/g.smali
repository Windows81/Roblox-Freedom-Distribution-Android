.class public final Lc/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc/a;

.field private b:Lc/ae;

.field private final c:Lc/j;

.field private final d:Lc/a/b/f;

.field private e:I

.field private f:Lc/a/b/c;

.field private g:Z

.field private h:Z

.field private i:Lc/a/d/h;


# direct methods
.method public constructor <init>(Lc/j;Lc/a;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lc/a/b/g;->c:Lc/j;

    .line 87
    iput-object p2, p0, Lc/a/b/g;->a:Lc/a;

    .line 88
    new-instance p1, Lc/a/b/f;

    invoke-direct {p0}, Lc/a/b/g;->g()Lc/a/b/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lc/a/b/f;-><init>(Lc/a;Lc/a/b/d;)V

    iput-object p1, p0, Lc/a/b/g;->d:Lc/a/b/f;

    return-void
.end method

.method private a(IIIZ)Lc/a/b/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lc/a/b/g;->g:Z

    if-nez v1, :cond_6

    .line 159
    iget-object v1, p0, Lc/a/b/g;->i:Lc/a/d/h;

    if-nez v1, :cond_5

    .line 160
    iget-boolean v1, p0, Lc/a/b/g;->h:Z

    if-nez v1, :cond_4

    .line 162
    iget-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    if-eqz v1, :cond_0

    .line 163
    iget-boolean v2, v1, Lc/a/b/c;->h:Z

    if-nez v2, :cond_0

    .line 164
    monitor-exit v0

    return-object v1

    .line 168
    :cond_0
    sget-object v1, Lc/a/a;->a:Lc/a/a;

    iget-object v2, p0, Lc/a/b/g;->c:Lc/j;

    iget-object v3, p0, Lc/a/b/g;->a:Lc/a;

    invoke-virtual {v1, v2, v3, p0}, Lc/a/a;->a(Lc/j;Lc/a;Lc/a/b/g;)Lc/a/b/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    iput-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    .line 171
    monitor-exit v0

    return-object v1

    .line 174
    :cond_1
    iget-object v1, p0, Lc/a/b/g;->b:Lc/ae;

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    .line 178
    iget-object v0, p0, Lc/a/b/g;->d:Lc/a/b/f;

    invoke-virtual {v0}, Lc/a/b/f;->b()Lc/ae;

    move-result-object v1

    .line 179
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    .line 180
    :try_start_1
    iput-object v1, p0, Lc/a/b/g;->b:Lc/ae;

    const/4 v2, 0x0

    .line 181
    iput v2, p0, Lc/a/b/g;->e:I

    .line 182
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 184
    :cond_2
    :goto_0
    new-instance v0, Lc/a/b/c;

    invoke-direct {v0, v1}, Lc/a/b/c;-><init>(Lc/ae;)V

    .line 185
    invoke-virtual {p0, v0}, Lc/a/b/g;->a(Lc/a/b/c;)V

    .line 187
    iget-object v1, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v1

    .line 188
    :try_start_2
    sget-object v2, Lc/a/a;->a:Lc/a/a;

    iget-object v3, p0, Lc/a/b/g;->c:Lc/j;

    invoke-virtual {v2, v3, v0}, Lc/a/a;->b(Lc/j;Lc/a/b/c;)V

    .line 189
    iput-object v0, p0, Lc/a/b/g;->f:Lc/a/b/c;

    .line 190
    iget-boolean v2, p0, Lc/a/b/g;->h:Z

    if-nez v2, :cond_3

    .line 191
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    iget-object v1, p0, Lc/a/b/g;->a:Lc/a;

    invoke-virtual {v1}, Lc/a;->f()Ljava/util/List;

    move-result-object v6

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lc/a/b/c;->a(IIILjava/util/List;Z)V

    .line 195
    invoke-direct {p0}, Lc/a/b/g;->g()Lc/a/b/d;

    move-result-object p1

    invoke-virtual {v0}, Lc/a/b/c;->a()Lc/ae;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/a/b/d;->b(Lc/ae;)V

    return-object v0

    .line 190
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 191
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 160
    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 175
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method private a(IIIZZ)Lc/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/b/g;->a(IIIZ)Lc/a/b/c;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v1

    .line 134
    :try_start_0
    iget v2, v0, Lc/a/b/c;->c:I

    if-nez v2, :cond_0

    .line 135
    monitor-exit v1

    return-object v0

    .line 137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0, p5}, Lc/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lc/a/b/g;->d()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(ZZZ)V
    .locals 2

    .line 241
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 243
    :try_start_0
    iput-object v1, p0, Lc/a/b/g;->i:Lc/a/d/h;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 246
    iput-boolean p3, p0, Lc/a/b/g;->g:Z

    .line 248
    :cond_1
    iget-object p2, p0, Lc/a/b/g;->f:Lc/a/b/c;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    .line 250
    iget-object p1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    iput-boolean p3, p1, Lc/a/b/c;->h:Z

    .line 252
    :cond_2
    iget-object p1, p0, Lc/a/b/g;->i:Lc/a/d/h;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lc/a/b/g;->g:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    iget-boolean p1, p1, Lc/a/b/c;->h:Z

    if-eqz p1, :cond_5

    .line 253
    :cond_3
    iget-object p1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    invoke-direct {p0, p1}, Lc/a/b/g;->b(Lc/a/b/c;)V

    .line 254
    iget-object p1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    iget-object p1, p1, Lc/a/b/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 255
    iget-object p1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lc/a/b/c;->i:J

    .line 256
    sget-object p1, Lc/a/a;->a:Lc/a/a;

    iget-object p2, p0, Lc/a/b/g;->c:Lc/j;

    iget-object p3, p0, Lc/a/b/g;->f:Lc/a/b/c;

    invoke-virtual {p1, p2, p3}, Lc/a/a;->a(Lc/j;Lc/a/b/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 257
    iget-object p1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 260
    :goto_1
    iput-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    move-object v1, p1

    .line 263
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 265
    invoke-virtual {v1}, Lc/a/b/c;->d()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lc/a/c;->a(Ljava/net/Socket;)V

    :cond_6
    return-void

    .line 263
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Lc/a/b/c;)V
    .locals 3

    .line 325
    iget-object v0, p1, Lc/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 326
    iget-object v2, p1, Lc/a/b/c;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 327
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 328
    iget-object p1, p1, Lc/a/b/c;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private g()Lc/a/b/d;
    .locals 2

    .line 219
    sget-object v0, Lc/a/a;->a:Lc/a/a;

    iget-object v1, p0, Lc/a/b/g;->c:Lc/j;

    invoke-virtual {v0, v1}, Lc/a/a;->a(Lc/j;)Lc/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lc/a/d/h;
    .locals 2

    .line 213
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lc/a/b/g;->i:Lc/a/d/h;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lc/x;Z)Lc/a/d/h;
    .locals 8

    .line 92
    invoke-virtual {p1}, Lc/x;->a()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lc/x;->b()I

    move-result v6

    .line 94
    invoke-virtual {p1}, Lc/x;->c()I

    move-result v7

    .line 95
    invoke-virtual {p1}, Lc/x;->r()Z

    move-result v4

    move-object v0, p0

    move v2, v6

    move v3, v7

    move v5, p2

    .line 98
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lc/a/b/g;->a(IIIZZ)Lc/a/b/c;

    move-result-object p2

    .line 102
    iget-object v0, p2, Lc/a/b/c;->b:Lc/a/c/d;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lc/a/d/d;

    iget-object p2, p2, Lc/a/b/c;->b:Lc/a/c/d;

    invoke-direct {v0, p1, p0, p2}, Lc/a/d/d;-><init>(Lc/x;Lc/a/b/g;Lc/a/c/d;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2}, Lc/a/b/c;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 106
    iget-object v0, p2, Lc/a/b/c;->d:Ld/e;

    invoke-interface {v0}, Ld/e;->a()Ld/t;

    move-result-object v0

    int-to-long v1, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ld/t;->a(JLjava/util/concurrent/TimeUnit;)Ld/t;

    .line 107
    iget-object v0, p2, Lc/a/b/c;->e:Ld/d;

    invoke-interface {v0}, Ld/d;->a()Ld/t;

    move-result-object v0

    int-to-long v1, v7

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ld/t;->a(JLjava/util/concurrent/TimeUnit;)Ld/t;

    .line 108
    new-instance v0, Lc/a/d/c;

    iget-object v1, p2, Lc/a/b/c;->d:Ld/e;

    iget-object p2, p2, Lc/a/b/c;->e:Ld/d;

    invoke-direct {v0, p1, p0, v1, p2}, Lc/a/d/c;-><init>(Lc/x;Lc/a/b/g;Ld/e;Ld/d;)V

    .line 112
    :goto_0
    iget-object p1, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iput-object v0, p0, Lc/a/b/g;->i:Lc/a/d/h;

    .line 114
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 115
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lc/a/b/e;

    invoke-direct {p2, p1}, Lc/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lc/a/b/c;)V
    .locals 1

    .line 320
    iget-object p1, p1, Lc/a/b/c;->g:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .locals 6

    .line 287
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    .line 288
    :try_start_0
    instance-of v1, p1, Lc/a/c/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 289
    check-cast p1, Lc/a/c/p;

    .line 290
    iget-object v1, p1, Lc/a/c/p;->a:Lc/a/c/a;

    sget-object v5, Lc/a/c/a;->k:Lc/a/c/a;

    if-ne v1, v5, :cond_0

    .line 291
    iget v1, p0, Lc/a/b/g;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lc/a/b/g;->e:I

    .line 295
    :cond_0
    iget-object p1, p1, Lc/a/c/p;->a:Lc/a/c/a;

    sget-object v1, Lc/a/c/a;->k:Lc/a/c/a;

    if-ne p1, v1, :cond_1

    iget p1, p0, Lc/a/b/g;->e:I

    if-le p1, v4, :cond_5

    .line 297
    :cond_1
    iput-object v2, p0, Lc/a/b/g;->b:Lc/ae;

    goto :goto_0

    .line 299
    :cond_2
    iget-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    invoke-virtual {v1}, Lc/a/b/c;->f()Z

    move-result v1

    if-nez v1, :cond_5

    .line 303
    iget-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    iget v1, v1, Lc/a/b/c;->c:I

    if-nez v1, :cond_4

    .line 304
    iget-object v1, p0, Lc/a/b/g;->b:Lc/ae;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 305
    iget-object v1, p0, Lc/a/b/g;->d:Lc/a/b/f;

    iget-object v5, p0, Lc/a/b/g;->b:Lc/ae;

    invoke-virtual {v1, v5, p1}, Lc/a/b/f;->a(Lc/ae;Ljava/io/IOException;)V

    .line 307
    :cond_3
    iput-object v2, p0, Lc/a/b/g;->b:Lc/ae;

    :cond_4
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 310
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-direct {p0, p1, v3, v4}, Lc/a/b/g;->a(ZZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 310
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZLc/a/d/h;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 202
    :try_start_0
    iget-object v1, p0, Lc/a/b/g;->i:Lc/a/d/h;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 206
    iget-object v1, p0, Lc/a/b/g;->f:Lc/a/b/c;

    iget v2, v1, Lc/a/b/c;->c:I

    add-int/2addr v2, p2

    iput v2, v1, Lc/a/b/c;->c:I

    .line 208
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, v0, p2}, Lc/a/b/g;->a(ZZZ)V

    return-void

    .line 203
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/b/g;->i:Lc/a/d/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()Lc/a/b/c;
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lc/a/b/g;->f:Lc/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 227
    invoke-direct {p0, v0, v1, v0}, Lc/a/b/g;->a(ZZZ)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, v0, v1, v1}, Lc/a/b/g;->a(ZZZ)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 272
    iget-object v0, p0, Lc/a/b/g;->c:Lc/j;

    monitor-enter v0

    const/4 v1, 0x1

    .line 273
    :try_start_0
    iput-boolean v1, p0, Lc/a/b/g;->h:Z

    .line 274
    iget-object v1, p0, Lc/a/b/g;->i:Lc/a/d/h;

    .line 275
    iget-object v2, p0, Lc/a/b/g;->f:Lc/a/b/c;

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1}, Lc/a/d/h;->a()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {v2}, Lc/a/b/c;->c()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 276
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lc/a/b/g;->b:Lc/ae;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/b/g;->d:Lc/a/b/f;

    invoke-virtual {v0}, Lc/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lc/a/b/g;->a:Lc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
