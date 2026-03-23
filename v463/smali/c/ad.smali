.class public abstract Lc/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/v;JLd/e;)Lc/ad;
    .locals 1

    if-eqz p3, :cond_0

    .line 193
    new-instance v0, Lc/ad$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/ad$1;-><init>(Lc/v;JLd/e;)V

    return-object v0

    .line 192
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private h()Ljava/nio/charset/Charset;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lc/ad;->a()Lc/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v1, Lc/a/c;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lc/v;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lc/a/c;->c:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract a()Lc/v;
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lc/ad;->d()Ld/e;

    move-result-object v0

    invoke-interface {v0}, Ld/e;->g()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lc/ad;->d()Ld/e;

    move-result-object v0

    invoke-static {v0}, Lc/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()Ld/e;
.end method

.method public final e()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lc/ad;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 125
    invoke-virtual {p0}, Lc/ad;->d()Ld/e;

    move-result-object v2

    .line 128
    :try_start_0
    invoke-interface {v2}, Ld/e;->s()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {v2}, Lc/a/c;->a(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 132
    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    .line 130
    invoke-static {v2}, Lc/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    .line 122
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final f()Ljava/io/Reader;
    .locals 3

    .line 144
    iget-object v0, p0, Lc/ad;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lc/ad;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lc/ad;->h()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lc/ad;->a:Ljava/io/Reader;

    :goto_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lc/ad;->e()[B

    move-result-object v1

    invoke-direct {p0}, Lc/ad;->h()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
