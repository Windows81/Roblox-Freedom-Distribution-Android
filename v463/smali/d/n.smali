.class final Ld/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/e;


# instance fields
.field public final a:Ld/c;

.field public final b:Ld/s;

.field c:Z


# direct methods
.method constructor <init>(Ld/s;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Ld/n;->a:Ld/c;

    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Ld/n;->b:Ld/s;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(B)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 314
    invoke-virtual {p0, p1, v0, v1}, Ld/n;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-boolean v0, p0, Ld/n;->c:Z

    if-nez v0, :cond_2

    .line 321
    :goto_0
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0, p1, p2, p3}, Ld/c;->a(BJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 324
    :cond_0
    iget-object v0, p0, Ld/n;->a:Ld/c;

    iget-wide v0, v0, Ld/c;->b:J

    .line 325
    iget-object v4, p0, Ld/n;->b:Ld/s;

    iget-object v5, p0, Ld/n;->a:Ld/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Ld/s;->a(Ld/c;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    return-wide v2

    .line 328
    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    .line 318
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Ld/c;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 42
    iget-boolean v2, p0, Ld/n;->c:Z

    if-nez v2, :cond_1

    .line 44
    iget-object v2, p0, Ld/n;->a:Ld/c;

    iget-wide v2, v2, Ld/c;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 45
    iget-object v0, p0, Ld/n;->b:Ld/s;

    iget-object v1, p0, Ld/n;->a:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 49
    :cond_0
    iget-object v0, p0, Ld/n;->a:Ld/c;

    iget-wide v0, v0, Ld/c;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 50
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0, p1, p2, p3}, Ld/c;->a(Ld/c;J)J

    move-result-wide p1

    return-wide p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ld/r;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 162
    :cond_0
    :goto_0
    iget-object v4, p0, Ld/n;->b:Ld/s;

    iget-object v5, p0, Ld/n;->a:Ld/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Ld/s;->a(Ld/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 163
    iget-object v4, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v4}, Ld/c;->h()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    .line 166
    iget-object v6, p0, Ld/n;->a:Ld/c;

    invoke-interface {p1, v6, v4, v5}, Ld/r;->a_(Ld/c;J)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v4, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v4}, Ld/c;->b()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 170
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 171
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Ld/r;->a_(Ld/c;J)V

    :cond_2
    return-wide v2

    .line 159
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a()Ld/t;
    .locals 1

    .line 439
    iget-object v0, p0, Ld/n;->b:Ld/s;

    invoke-interface {v0}, Ld/s;->a()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Ld/n;->b(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public b(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 64
    iget-boolean v0, p0, Ld/n;->c:Z

    if-nez v0, :cond_2

    .line 65
    :cond_0
    iget-object v0, p0, Ld/n;->a:Ld/c;

    iget-wide v0, v0, Ld/c;->b:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 66
    iget-object v0, p0, Ld/n;->b:Ld/s;

    iget-object v1, p0, Ld/n;->a:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public c()Ld/c;
    .locals 1

    .line 36
    iget-object v0, p0, Ld/n;->a:Ld/c;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-boolean v0, p0, Ld/n;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Ld/n;->c:Z

    .line 434
    iget-object v0, p0, Ld/n;->b:Ld/s;

    invoke-interface {v0}, Ld/s;->close()V

    .line 435
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->t()V

    return-void
.end method

.method public d(J)Ld/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Ld/n;->a(J)V

    .line 83
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->d(J)Ld/f;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-boolean v0, p0, Ld/n;->c:Z

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/n;->b:Ld/s;

    iget-object v1, p0, Ld/n;->a:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    .line 394
    new-instance v0, Ld/n$1;

    invoke-direct {v0, p0}, Ld/n$1;-><init>(Ld/n;)V

    return-object v0
.end method

.method public g(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Ld/n;->a(J)V

    .line 112
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->g(J)[B

    move-result-object p1

    return-object p1
.end method

.method public h(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-boolean v0, p0, Ld/n;->c:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 304
    iget-object v2, p0, Ld/n;->a:Ld/c;

    iget-wide v2, v2, Ld/c;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Ld/n;->b:Ld/s;

    iget-object v1, p0, Ld/n;->a:Ld/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 307
    :cond_1
    :goto_1
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v2, v0, v1}, Ld/c;->h(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    .line 302
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public i()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 72
    invoke-virtual {p0, v0, v1}, Ld/n;->a(J)V

    .line 73
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->i()B

    move-result v0

    return v0
.end method

.method public j()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 236
    invoke-virtual {p0, v0, v1}, Ld/n;->a(J)V

    .line 237
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->j()S

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 246
    invoke-virtual {p0, v0, v1}, Ld/n;->a(J)V

    .line 247
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->k()I

    move-result v0

    return v0
.end method

.method public l()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 241
    invoke-virtual {p0, v0, v1}, Ld/n;->a(J)V

    .line 242
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->l()S

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 251
    invoke-virtual {p0, v0, v1}, Ld/n;->a(J)V

    .line 252
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->m()I

    move-result v0

    return v0
.end method

.method public n()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 284
    invoke-virtual {p0, v0, v1}, Ld/n;->a(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 286
    invoke-virtual {p0, v3, v4}, Ld/n;->b(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    iget-object v3, p0, Ld/n;->a:Ld/c;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ld/c;->c(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 291
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 292
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    .line 291
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_5
    :goto_2
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 210
    invoke-virtual {p0, v0}, Ld/n;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 217
    iget-object v2, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v2, v0, v1}, Ld/c;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    .line 213
    iget-object v1, p0, Ld/n;->a:Ld/c;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x20

    invoke-virtual {v1}, Ld/c;->b()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ld/c;->a(Ld/c;JJ)Ld/c;

    .line 214
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v3}, Ld/c;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ld/c;->o()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public s()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ld/n;->a:Ld/c;

    iget-object v1, p0, Ld/n;->b:Ld/s;

    invoke-virtual {v0, v1}, Ld/c;->a(Ld/s;)J

    .line 107
    iget-object v0, p0, Ld/n;->a:Ld/c;

    invoke-virtual {v0}, Ld/c;->s()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/n;->b:Ld/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
