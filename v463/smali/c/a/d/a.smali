.class public final Lc/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# instance fields
.field private final a:Lc/m;


# direct methods
.method public constructor <init>(Lc/m;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc/a/d/a;->a:Lc/m;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/l;

    .line 123
    invoke-virtual {v3}, Lc/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lc/u$a;->a()Lc/aa;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lc/aa;->e()Lc/aa$a;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lc/aa;->d()Lc/ab;

    move-result-object v2

    const-string v3, "Content-Length"

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2}, Lc/ab;->a()Lc/v;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4}, Lc/v;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v1, v5, v4}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    .line 58
    :cond_0
    invoke-virtual {v2}, Lc/ab;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v2, "Transfer-Encoding"

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    .line 61
    invoke-virtual {v1, v2}, Lc/aa$a;->b(Ljava/lang/String;)Lc/aa$a;

    goto :goto_0

    :cond_1
    const-string v4, "chunked"

    .line 63
    invoke-virtual {v1, v2, v4}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    .line 64
    invoke-virtual {v1, v3}, Lc/aa$a;->b(Ljava/lang/String;)Lc/aa$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 68
    invoke-virtual {v0, v2}, Lc/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 69
    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v4

    invoke-static {v4, v5}, Lc/a/c;->a(Lc/t;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    :cond_3
    const-string v2, "Connection"

    .line 72
    invoke-virtual {v0, v2}, Lc/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Keep-Alive"

    .line 73
    invoke-virtual {v1, v2, v4}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 79
    invoke-virtual {v0, v2}, Lc/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gzip"

    if-nez v4, :cond_5

    const/4 v5, 0x1

    .line 81
    invoke-virtual {v1, v2, v6}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    .line 84
    :cond_5
    iget-object v2, p0, Lc/a/d/a;->a:Lc/m;

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v4

    invoke-interface {v2, v4}, Lc/m;->a(Lc/t;)Ljava/util/List;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 86
    invoke-direct {p0, v2}, Lc/a/d/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Cookie"

    invoke-virtual {v1, v4, v2}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    :cond_6
    const-string v2, "User-Agent"

    .line 89
    invoke-virtual {v0, v2}, Lc/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 90
    invoke-static {}, Lc/a/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    .line 93
    :cond_7
    invoke-virtual {v1}, Lc/aa$a;->a()Lc/aa;

    move-result-object v1

    invoke-interface {p1, v1}, Lc/u$a;->a(Lc/aa;)Lc/ac;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lc/a/d/a;->a:Lc/m;

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {p1}, Lc/ac;->f()Lc/s;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lc/a/d/f;->a(Lc/m;Lc/t;Lc/s;)V

    .line 97
    invoke-virtual {p1}, Lc/ac;->h()Lc/ac$a;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lc/ac$a;->a(Lc/aa;)Lc/ac$a;

    move-result-object v0

    if-eqz v5, :cond_8

    const-string v1, "Content-Encoding"

    .line 101
    invoke-virtual {p1, v1}, Lc/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    invoke-static {p1}, Lc/a/d/f;->b(Lc/ac;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 103
    new-instance v2, Ld/j;

    invoke-virtual {p1}, Lc/ac;->g()Lc/ad;

    move-result-object v4

    invoke-virtual {v4}, Lc/ad;->d()Ld/e;

    move-result-object v4

    invoke-direct {v2, v4}, Ld/j;-><init>(Ld/s;)V

    .line 104
    invoke-virtual {p1}, Lc/ac;->f()Lc/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/s;->b()Lc/s$a;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v1}, Lc/s$a;->b(Ljava/lang/String;)Lc/s$a;

    move-result-object p1

    .line 106
    invoke-virtual {p1, v3}, Lc/s$a;->b(Ljava/lang/String;)Lc/s$a;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lc/s$a;->a()Lc/s;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lc/ac$a;->a(Lc/s;)Lc/ac$a;

    .line 109
    new-instance v1, Lc/a/d/j;

    invoke-static {v2}, Ld/l;->a(Ld/s;)Ld/e;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc/a/d/j;-><init>(Lc/s;Ld/e;)V

    invoke-virtual {v0, v1}, Lc/ac$a;->a(Lc/ad;)Lc/ac$a;

    .line 112
    :cond_8
    invoke-virtual {v0}, Lc/ac$a;->a()Lc/ac;

    move-result-object p1

    return-object p1
.end method
