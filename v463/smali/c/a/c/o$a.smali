.class final Lc/a/c/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ld/e;

.field private final b:Z

.field private final c:Lc/a/c/k;


# direct methods
.method constructor <init>(Ld/e;Z)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lc/a/c/o$a;->a:Ld/e;

    .line 114
    new-instance v0, Lc/a/c/k;

    invoke-direct {v0, p1}, Lc/a/c/k;-><init>(Ld/e;)V

    iput-object v0, p0, Lc/a/c/o$a;->c:Lc/a/c/k;

    .line 115
    iput-boolean p2, p0, Lc/a/c/o$a;->b:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lc/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lc/a/c/b$a;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v0}, Ld/e;->k()I

    move-result v0

    .line 194
    iget-object v1, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v1}, Ld/e;->k()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    .line 197
    iget-object v0, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v0}, Ld/e;->j()S

    .line 198
    iget-object v0, p0, Lc/a/c/o$a;->c:Lc/a/c/k;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {v0, p3}, Lc/a/c/k;->a(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 202
    :goto_1
    sget-object v9, Lc/a/c/g;->a:Lc/a/c/g;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lc/a/c/b$a;->a(ZZIILjava/util/List;Lc/a/c/g;)V

    return-void
.end method

.method private b(Lc/a/c/b$a;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v0}, Ld/e;->k()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 209
    iget-object v0, p0, Lc/a/c/o$a;->c:Lc/a/c/k;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v0, p3}, Lc/a/c/k;->a(I)Ljava/util/List;

    move-result-object v7

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 211
    sget-object v8, Lc/a/c/g;->b:Lc/a/c/g;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lc/a/c/b$a;->a(ZZIILjava/util/List;Lc/a/c/g;)V

    return-void
.end method

.method private c(Lc/a/c/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 216
    iget-object p3, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {p3}, Ld/e;->k()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    .line 217
    iget-object v1, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v1}, Ld/e;->k()I

    move-result v1

    .line 218
    invoke-static {v1}, Lc/a/c/a;->a(I)Lc/a/c/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    invoke-interface {p1, p3, v2}, Lc/a/c/b$a;->a(ILc/a/c/a;)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 215
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private d(Lc/a/c/b$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object p2, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {p2}, Ld/e;->k()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    .line 228
    iget-object p2, p0, Lc/a/c/o$a;->c:Lc/a/c/k;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p2, p3}, Lc/a/c/k;->a(I)Ljava/util/List;

    move-result-object v6

    .line 229
    sget-object v7, Lc/a/c/g;->c:Lc/a/c/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lc/a/c/b$a;->a(ZZIILjava/util/List;Lc/a/c/g;)V

    return-void
.end method

.method private e(Lc/a/c/b$a;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 234
    iget-object p3, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {p3}, Ld/e;->k()I

    move-result p3

    .line 235
    iget-object v1, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v1}, Ld/e;->k()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr p3, v2

    and-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 239
    invoke-interface {p1, p3, v1, v2}, Lc/a/c/b$a;->a(IJ)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 233
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private f(Lc/a/c/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 244
    iget-object p3, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {p3}, Ld/e;->k()I

    move-result p3

    .line 245
    iget-boolean v1, p0, Lc/a/c/o$a;->b:Z

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 246
    :goto_1
    invoke-interface {p1, v0, p3, p2}, Lc/a/c/b$a;->a(ZII)V

    return-void

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    .line 243
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_PING length: %d != 4"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private g(Lc/a/c/b$a;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p3, v1, :cond_1

    .line 251
    iget-object p3, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {p3}, Ld/e;->k()I

    move-result p3

    const v1, 0x7fffffff

    and-int/2addr p3, v1

    .line 252
    iget-object v1, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v1}, Ld/e;->k()I

    move-result v1

    .line 253
    invoke-static {v1}, Lc/a/c/a;->c(I)Lc/a/c/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    sget-object p2, Ld/f;->b:Ld/f;

    invoke-interface {p1, p3, v2, p2}, Lc/a/c/b$a;->a(ILc/a/c/a;Ld/f;)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 250
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private h(Lc/a/c/b$a;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v0}, Ld/e;->k()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    .line 265
    new-instance p3, Lc/a/c/n;

    invoke-direct {p3}, Lc/a/c/n;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 267
    iget-object v4, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v4}, Ld/e;->k()I

    move-result v4

    .line 268
    iget-object v5, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v5}, Ld/e;->k()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 271
    invoke-virtual {p3, v4, v6, v5}, Lc/a/c/n;->a(III)Lc/a/c/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    .line 274
    :cond_1
    invoke-interface {p1, v2, p3}, Lc/a/c/b$a;->a(ZLc/a/c/n;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 263
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p2, p1}, Lc/a/c/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lc/a/c/b$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v1}, Ld/e;->k()I

    move-result v1

    .line 130
    iget-object v2, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {v2}, Ld/e;->k()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    if-eqz v3, :cond_2

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 181
    :pswitch_0
    iget-object p1, p0, Lc/a/c/o$a;->a:Ld/e;

    int-to-long v0, v2

    invoke-interface {p1, v0, v1}, Ld/e;->h(J)V

    return v4

    .line 177
    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->e(Lc/a/c/b$a;II)V

    return v4

    .line 173
    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->d(Lc/a/c/b$a;II)V

    return v4

    .line 169
    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->g(Lc/a/c/b$a;II)V

    return v4

    .line 165
    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->f(Lc/a/c/b$a;II)V

    return v4

    .line 161
    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->h(Lc/a/c/b$a;II)V

    return v4

    .line 157
    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->c(Lc/a/c/b$a;II)V

    return v4

    .line 153
    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->b(Lc/a/c/b$a;II)V

    return v4

    .line 149
    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lc/a/c/o$a;->a(Lc/a/c/b$a;II)V

    return v4

    .line 144
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version != 3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 187
    :cond_3
    iget-object v3, p0, Lc/a/c/o$a;->a:Ld/e;

    invoke-interface {p1, v0, v1, v3, v2}, Lc/a/c/b$a;->a(ZILd/e;I)V

    return v4

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lc/a/c/o$a;->c:Lc/a/c/k;

    invoke-virtual {v0}, Lc/a/c/k;->a()V

    return-void
.end method
