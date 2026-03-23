.class public final Lb/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb/a;

.field private b:Lb/ad;

.field private final c:Lb/j;

.field private final d:Lb/a/b/f;

.field private e:I

.field private f:Lb/a/b/c;

.field private g:Z

.field private h:Z

.field private i:Lb/a/d/h;


# direct methods
.method public constructor <init>(Lb/j;Lb/a;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lb/a/b/g;->c:Lb/j;

    .line 87
    iput-object p2, p0, Lb/a/b/g;->a:Lb/a;

    .line 88
    new-instance v0, Lb/a/b/f;

    invoke-direct {p0}, Lb/a/b/g;->g()Lb/a/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lb/a/b/f;-><init>(Lb/a;Lb/a/b/d;)V

    iput-object v0, p0, Lb/a/b/g;->d:Lb/a/b/f;

    .line 89
    return-void
.end method

.method private a(IIIZ)Lb/a/b/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lb/a/b/g;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/b/g;->i:Lb/a/d/h;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "stream != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-boolean v0, p0, Lb/a/b/g;->h:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    .line 163
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lb/a/b/c;->h:Z

    if-nez v2, :cond_3

    .line 164
    monitor-exit v1

    .line 197
    :goto_0
    return-object v0

    .line 168
    :cond_3
    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v2, p0, Lb/a/b/g;->c:Lb/j;

    iget-object v3, p0, Lb/a/b/g;->a:Lb/a;

    invoke-virtual {v0, v2, v3, p0}, Lb/a/a;->a(Lb/j;Lb/a;Lb/a/b/g;)Lb/a/b/c;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    iput-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    .line 171
    monitor-exit v1

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lb/a/b/g;->b:Lb/ad;

    .line 175
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-nez v0, :cond_6

    .line 178
    iget-object v0, p0, Lb/a/b/g;->d:Lb/a/b/f;

    invoke-virtual {v0}, Lb/a/b/f;->b()Lb/ad;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 180
    :try_start_2
    iput-object v0, p0, Lb/a/b/g;->b:Lb/ad;

    .line 181
    const/4 v2, 0x0

    iput v2, p0, Lb/a/b/g;->e:I

    .line 182
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    .line 184
    :goto_1
    new-instance v0, Lb/a/b/c;

    invoke-direct {v0, v1}, Lb/a/b/c;-><init>(Lb/ad;)V

    .line 185
    invoke-virtual {p0, v0}, Lb/a/b/g;->a(Lb/a/b/c;)V

    .line 187
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 188
    :try_start_3
    sget-object v2, Lb/a/a;->a:Lb/a/a;

    iget-object v3, p0, Lb/a/b/g;->c:Lb/j;

    invoke-virtual {v2, v3, v0}, Lb/a/a;->b(Lb/j;Lb/a/b/c;)V

    .line 189
    iput-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    .line 190
    iget-boolean v2, p0, Lb/a/b/g;->h:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 182
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 191
    :cond_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    iget-object v1, p0, Lb/a/b/g;->a:Lb/a;

    invoke-virtual {v1}, Lb/a;->f()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lb/a/b/c;->a(IIILjava/util/List;Z)V

    .line 195
    invoke-direct {p0}, Lb/a/b/g;->g()Lb/a/b/d;

    move-result-object v1

    invoke-virtual {v0}, Lb/a/b/c;->a()Lb/ad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/b/d;->b(Lb/ad;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private a(IIIZZ)Lb/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/b/g;->a(IIIZ)Lb/a/b/c;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 134
    :try_start_0
    iget v2, v0, Lb/a/b/c;->c:I

    if-nez v2, :cond_1

    .line 135
    monitor-exit v1

    .line 146
    :cond_0
    return-object v0

    .line 137
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0, p5}, Lb/a/b/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lb/a/b/g;->d()V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ZZZ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 240
    .line 241
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 242
    if-eqz p3, :cond_0

    .line 243
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lb/a/b/g;->i:Lb/a/d/h;

    .line 245
    :cond_0
    if-eqz p2, :cond_1

    .line 246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lb/a/b/g;->g:Z

    .line 248
    :cond_1
    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    if-eqz v2, :cond_5

    .line 249
    if-eqz p1, :cond_2

    .line 250
    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lb/a/b/c;->h:Z

    .line 252
    :cond_2
    iget-object v2, p0, Lb/a/b/g;->i:Lb/a/d/h;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lb/a/b/g;->g:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    iget-boolean v2, v2, Lb/a/b/c;->h:Z

    if-eqz v2, :cond_5

    .line 253
    :cond_3
    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    invoke-direct {p0, v2}, Lb/a/b/g;->b(Lb/a/b/c;)V

    .line 254
    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    iget-object v2, v2, Lb/a/b/c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v2, Lb/a/b/c;->i:J

    .line 256
    sget-object v2, Lb/a/a;->a:Lb/a/a;

    iget-object v3, p0, Lb/a/b/g;->c:Lb/j;

    iget-object v4, p0, Lb/a/b/g;->f:Lb/a/b/c;

    invoke-virtual {v2, v3, v4}, Lb/a/a;->a(Lb/j;Lb/a/b/c;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    .line 260
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    .line 263
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    invoke-virtual {v0}, Lb/a/b/c;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lb/a/c;->a(Ljava/net/Socket;)V

    .line 267
    :cond_6
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lb/a/b/c;)V
    .locals 3

    .prologue
    .line 325
    const/4 v0, 0x0

    iget-object v1, p1, Lb/a/b/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 326
    iget-object v0, p1, Lb/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 327
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 328
    iget-object v0, p1, Lb/a/b/c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    return-void

    .line 325
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private g()Lb/a/b/d;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lb/a/a;->a:Lb/a/a;

    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    invoke-virtual {v0, v1}, Lb/a/a;->a(Lb/j;)Lb/a/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lb/a/d/h;
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lb/a/b/g;->i:Lb/a/d/h;

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lb/w;Z)Lb/a/d/h;
    .locals 6

    .prologue
    .line 92
    invoke-virtual {p1}, Lb/w;->a()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lb/w;->b()I

    move-result v2

    .line 94
    invoke-virtual {p1}, Lb/w;->c()I

    move-result v3

    .line 95
    invoke-virtual {p1}, Lb/w;->r()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    .line 98
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lb/a/b/g;->a(IIIZZ)Lb/a/b/c;

    move-result-object v1

    .line 102
    iget-object v0, v1, Lb/a/b/c;->b:Lb/a/c/d;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lb/a/d/d;

    iget-object v1, v1, Lb/a/b/c;->b:Lb/a/c/d;

    invoke-direct {v0, p1, p0, v1}, Lb/a/d/d;-><init>(Lb/w;Lb/a/b/g;Lb/a/c/d;)V

    .line 112
    :goto_0
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iput-object v0, p0, Lb/a/b/g;->i:Lb/a/d/h;

    .line 114
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 105
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lb/a/b/c;->d()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 106
    iget-object v0, v1, Lb/a/b/c;->d:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/t;

    move-result-object v0

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lc/t;->a(JLjava/util/concurrent/TimeUnit;)Lc/t;

    .line 107
    iget-object v0, v1, Lb/a/b/c;->e:Lc/d;

    invoke-interface {v0}, Lc/d;->a()Lc/t;

    move-result-object v0

    int-to-long v2, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lc/t;->a(JLjava/util/concurrent/TimeUnit;)Lc/t;

    .line 108
    new-instance v0, Lb/a/d/c;

    iget-object v2, v1, Lb/a/b/c;->d:Lc/e;

    iget-object v1, v1, Lb/a/b/c;->e:Lc/d;

    invoke-direct {v0, p1, p0, v2, v1}, Lb/a/d/c;-><init>(Lb/w;Lb/a/b/g;Lc/e;Lc/d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lb/a/b/e;

    invoke-direct {v1, v0}, Lb/a/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public a(Lb/a/b/c;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p1, Lb/a/b/c;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public a(Ljava/io/IOException;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    .line 287
    iget-object v3, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v3

    .line 288
    :try_start_0
    instance-of v0, p1, Lb/a/c/p;

    if-eqz v0, :cond_3

    .line 289
    check-cast p1, Lb/a/c/p;

    .line 290
    iget-object v0, p1, Lb/a/c/p;->a:Lb/a/c/a;

    sget-object v4, Lb/a/c/a;->k:Lb/a/c/a;

    if-ne v0, v4, :cond_0

    .line 291
    iget v0, p0, Lb/a/b/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b/g;->e:I

    .line 295
    :cond_0
    iget-object v0, p1, Lb/a/c/p;->a:Lb/a/c/a;

    sget-object v4, Lb/a/c/a;->k:Lb/a/c/a;

    if-ne v0, v4, :cond_1

    iget v0, p0, Lb/a/b/g;->e:I

    if-le v0, v2, :cond_5

    .line 297
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/b/g;->b:Lb/ad;

    :cond_2
    :goto_0
    move v0, v2

    .line 310
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-direct {p0, v0, v1, v2}, Lb/a/b/g;->a(ZZZ)V

    .line 313
    return-void

    .line 299
    :cond_3
    :try_start_1
    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    invoke-virtual {v0}, Lb/a/b/c;->f()Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    iget v0, v0, Lb/a/b/c;->c:I

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lb/a/b/g;->b:Lb/ad;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 305
    iget-object v0, p0, Lb/a/b/g;->d:Lb/a/b/f;

    iget-object v4, p0, Lb/a/b/g;->b:Lb/ad;

    invoke-virtual {v0, v4, p1}, Lb/a/b/f;->a(Lb/ad;Ljava/io/IOException;)V

    .line 307
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/b/g;->b:Lb/ad;

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a(ZLb/a/d/h;)V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 202
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/b/g;->i:Lb/a/d/h;

    if-eq p2, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lb/a/b/g;->i:Lb/a/d/h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    :try_start_1
    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;

    iget v2, v0, Lb/a/b/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lb/a/b/c;->c:I

    .line 208
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lb/a/b/g;->a(ZZZ)V

    .line 210
    return-void
.end method

.method public declared-synchronized b()Lb/a/b/c;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/b/g;->f:Lb/a/b/c;
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

    .prologue
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lb/a/b/g;->a(ZZZ)V

    .line 228
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lb/a/b/g;->a(ZZZ)V

    .line 233
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lb/a/b/g;->c:Lb/j;

    monitor-enter v1

    .line 273
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lb/a/b/g;->h:Z

    .line 274
    iget-object v0, p0, Lb/a/b/g;->i:Lb/a/d/h;

    .line 275
    iget-object v2, p0, Lb/a/b/g;->f:Lb/a/b/c;

    .line 276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v0}, Lb/a/d/h;->a()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 279
    :cond_1
    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v2}, Lb/a/b/c;->c()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lb/a/b/g;->b:Lb/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/b/g;->d:Lb/a/b/f;

    invoke-virtual {v0}, Lb/a/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lb/a/b/g;->a:Lb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
