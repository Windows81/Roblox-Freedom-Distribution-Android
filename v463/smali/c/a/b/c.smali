.class public final Lc/a/b/c;
.super Lc/a/c/d$b;
.source "SourceFile"

# interfaces
.implements Lc/i;


# instance fields
.field public a:Ljava/net/Socket;

.field public volatile b:Lc/a/c/d;

.field public c:I

.field public d:Ld/e;

.field public e:Ld/d;

.field public f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lc/a/b/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:J

.field private final k:Lc/ae;

.field private l:Ljava/net/Socket;

.field private m:Lc/r;

.field private n:Lc/y;


# direct methods
.method public constructor <init>(Lc/ae;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Lc/a/c/d$b;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/b/c;->g:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 83
    iput-wide v0, p0, Lc/a/b/c;->i:J

    .line 86
    iput-object p1, p0, Lc/a/b/c;->k:Lc/ae;

    return-void
.end method

.method private a(IILc/aa;Lc/t;)Lc/aa;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lc/a/c;->a(Lc/t;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 291
    :goto_0
    new-instance v0, Lc/a/d/c;

    iget-object v1, p0, Lc/a/b/c;->d:Ld/e;

    iget-object v2, p0, Lc/a/b/c;->e:Ld/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lc/a/d/c;-><init>(Lc/x;Lc/a/b/g;Ld/e;Ld/d;)V

    .line 292
    iget-object v1, p0, Lc/a/b/c;->d:Ld/e;

    invoke-interface {v1}, Ld/e;->a()Ld/t;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ld/t;->a(JLjava/util/concurrent/TimeUnit;)Ld/t;

    .line 293
    iget-object v1, p0, Lc/a/b/c;->e:Ld/d;

    invoke-interface {v1}, Ld/d;->a()Ld/t;

    move-result-object v1

    int-to-long v4, p2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Ld/t;->a(JLjava/util/concurrent/TimeUnit;)Ld/t;

    .line 294
    invoke-virtual {p3}, Lc/aa;->c()Lc/s;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lc/a/d/c;->a(Lc/s;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lc/a/d/c;->c()V

    .line 296
    invoke-virtual {v0}, Lc/a/d/c;->d()Lc/ac$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lc/ac$a;->a(Lc/aa;)Lc/ac$a;

    move-result-object p3

    invoke-virtual {p3}, Lc/ac$a;->a()Lc/ac;

    move-result-object p3

    .line 299
    invoke-static {p3}, Lc/a/d/f;->a(Lc/ac;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    const-wide/16 v1, 0x0

    .line 303
    :cond_0
    invoke-virtual {v0, v1, v2}, Lc/a/d/c;->b(J)Ld/s;

    move-result-object v0

    const v1, 0x7fffffff

    .line 304
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lc/a/c;->b(Ld/s;ILjava/util/concurrent/TimeUnit;)Z

    .line 305
    invoke-interface {v0}, Ld/s;->close()V

    .line 307
    invoke-virtual {p3}, Lc/ac;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 319
    iget-object v0, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->a()Lc/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a;->d()Lc/b;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-interface {v0, v1, p3}, Lc/b;->a(Lc/ae;Lc/ac;)Lc/aa;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 322
    invoke-virtual {p3, v1}, Lc/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto/16 :goto_0

    .line 320
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p3}, Lc/ac;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_4
    iget-object p1, p0, Lc/a/b/c;->d:Ld/e;

    invoke-interface {p1}, Ld/e;->c()Ld/c;

    move-result-object p1

    invoke-virtual {p1}, Ld/c;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/a/b/c;->e:Ld/d;

    invoke-interface {p1}, Ld/d;->c()Ld/c;

    move-result-object p1

    invoke-virtual {p1}, Ld/c;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 314
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lc/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    .line 185
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_0
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object p2

    iget-object v0, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v1}, Lc/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lc/a/f/e;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget-object p1, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    invoke-static {p1}, Ld/l;->b(Ljava/net/Socket;)Ld/s;

    move-result-object p1

    invoke-static {p1}, Ld/l;->a(Ld/s;)Ld/e;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/c;->d:Ld/e;

    .line 192
    iget-object p1, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    invoke-static {p1}, Ld/l;->a(Ljava/net/Socket;)Ld/r;

    move-result-object p1

    invoke-static {p1}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/c;->e:Ld/d;

    return-void

    .line 189
    :catch_0
    new-instance p1, Ljava/net/ConnectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to connect to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(IIILc/a/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lc/a/b/c;->g()Lc/aa;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 154
    invoke-direct {p0, p1, p2}, Lc/a/b/c;->a(II)V

    .line 155
    invoke-direct {p0, p2, p3, v0, v1}, Lc/a/b/c;->a(IILc/aa;Lc/t;)Lc/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0, p2, p3, p4}, Lc/a/b/c;->a(IILc/a/b/b;)V

    return-void

    .line 161
    :cond_0
    iget-object v3, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v3}, Lc/a/c;->a(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 162
    iput-object v3, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    .line 163
    iput-object v3, p0, Lc/a/b/c;->e:Ld/d;

    .line 164
    iput-object v3, p0, Lc/a/b/c;->d:Ld/e;

    goto :goto_0

    .line 151
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many tunnel connections attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private a(IILc/a/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v0}, Lc/ae;->a()Lc/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lc/a/b/c;->b(IILc/a/b/b;)V

    goto :goto_0

    .line 200
    :cond_0
    sget-object p1, Lc/y;->b:Lc/y;

    iput-object p1, p0, Lc/a/b/c;->n:Lc/y;

    .line 201
    iget-object p1, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    iput-object p1, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    .line 204
    :goto_0
    iget-object p1, p0, Lc/a/b/c;->n:Lc/y;

    sget-object p2, Lc/y;->c:Lc/y;

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lc/a/b/c;->n:Lc/y;

    sget-object p2, Lc/y;->d:Lc/y;

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 218
    :cond_1
    iput p3, p0, Lc/a/b/c;->f:I

    goto :goto_2

    .line 205
    :cond_2
    :goto_1
    iget-object p1, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 207
    new-instance p1, Lc/a/c/d$a;

    invoke-direct {p1, p3}, Lc/a/c/d$a;-><init>(Z)V

    iget-object p2, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    iget-object p3, p0, Lc/a/b/c;->k:Lc/ae;

    .line 208
    invoke-virtual {p3}, Lc/ae;->a()Lc/a;

    move-result-object p3

    invoke-virtual {p3}, Lc/a;->a()Lc/t;

    move-result-object p3

    invoke-virtual {p3}, Lc/t;->f()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lc/a/b/c;->d:Ld/e;

    iget-object v1, p0, Lc/a/b/c;->e:Ld/d;

    invoke-virtual {p1, p2, p3, v0, v1}, Lc/a/c/d$a;->a(Ljava/net/Socket;Ljava/lang/String;Ld/e;Ld/d;)Lc/a/c/d$a;

    move-result-object p1

    iget-object p2, p0, Lc/a/b/c;->n:Lc/y;

    .line 209
    invoke-virtual {p1, p2}, Lc/a/c/d$a;->a(Lc/y;)Lc/a/c/d$a;

    move-result-object p1

    .line 210
    invoke-virtual {p1, p0}, Lc/a/c/d$a;->a(Lc/a/c/d$b;)Lc/a/c/d$a;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lc/a/c/d$a;->a()Lc/a/c/d;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lc/a/c/d;->d()V

    .line 215
    invoke-virtual {p1}, Lc/a/c/d;->b()I

    move-result p2

    iput p2, p0, Lc/a/b/c;->f:I

    .line 216
    iput-object p1, p0, Lc/a/b/c;->b:Lc/a/c/d;

    :goto_2
    return-void
.end method

.method private b(IIILc/a/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Lc/a/b/c;->a(II)V

    .line 174
    invoke-direct {p0, p2, p3, p4}, Lc/a/b/c;->a(IILc/a/b/b;)V

    return-void
.end method

.method private b(IILc/a/b/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object p1, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {p1}, Lc/ae;->a()Lc/a;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lc/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iget-object v1, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    .line 231
    invoke-virtual {p1}, Lc/a;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/a;->a()Lc/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/t;->g()I

    move-result v3

    const/4 v4, 0x1

    .line 230
    invoke-virtual {p2, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :try_start_1
    invoke-virtual {p3, p2}, Lc/a/b/b;->a(Ljavax/net/ssl/SSLSocket;)Lc/k;

    move-result-object p3

    .line 235
    invoke-virtual {p3}, Lc/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Lc/a;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/a;->e()Ljava/util/List;

    move-result-object v3

    .line 236
    invoke-virtual {v1, p2, v2, v3}, Lc/a/f/e;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 241
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lc/r;->a(Ljavax/net/ssl/SSLSession;)Lc/r;

    move-result-object v1

    .line 245
    invoke-virtual {p1}, Lc/a;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {p1}, Lc/a;->a()Lc/t;

    move-result-object v3

    invoke-virtual {v3}, Lc/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    invoke-virtual {p1}, Lc/a;->k()Lc/g;

    move-result-object v2

    invoke-virtual {p1}, Lc/a;->a()Lc/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/t;->f()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {v1}, Lc/r;->b()Ljava/util/List;

    move-result-object v3

    .line 254
    invoke-virtual {v2, p1, v3}, Lc/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 258
    invoke-virtual {p3}, Lc/k;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 259
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc/a/f/e;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_1
    iput-object p2, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    .line 262
    invoke-static {p2}, Ld/l;->b(Ljava/net/Socket;)Ld/s;

    move-result-object p1

    invoke-static {p1}, Ld/l;->a(Ld/s;)Ld/e;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/c;->d:Ld/e;

    .line 263
    iget-object p1, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-static {p1}, Ld/l;->a(Ljava/net/Socket;)Ld/r;

    move-result-object p1

    invoke-static {p1}, Ld/l;->a(Ld/r;)Ld/d;

    move-result-object p1

    iput-object p1, p0, Lc/a/b/c;->e:Ld/d;

    .line 264
    iput-object v1, p0, Lc/a/b/c;->m:Lc/r;

    if-eqz v0, :cond_2

    .line 266
    invoke-static {v0}, Lc/y;->a(Ljava/lang/String;)Lc/y;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lc/y;->b:Lc/y;

    :goto_0
    iput-object p1, p0, Lc/a/b/c;->n:Lc/y;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 274
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc/a/f/e;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_3
    return-void

    .line 246
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lc/r;->b()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 247
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/a;->a()Lc/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/t;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not verified:\n    certificate: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p3}, Lc/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    DN: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    subjectAltNames: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {p3}, Lc/a/g/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 270
    :goto_1
    :try_start_3
    invoke-static {p1}, Lc/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 271
    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_6

    .line 274
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object p2

    invoke-virtual {p2, v0}, Lc/a/f/e;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 277
    :cond_6
    invoke-static {v0}, Lc/a/c;->a(Ljava/net/Socket;)V

    throw p1
.end method

.method private g()Lc/aa;
    .locals 3

    .line 340
    new-instance v0, Lc/aa$a;

    invoke-direct {v0}, Lc/aa$a;-><init>()V

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    .line 341
    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/aa$a;->a(Lc/t;)Lc/aa$a;

    move-result-object v0

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    .line 342
    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->a()Lc/t;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc/a/c;->a(Lc/t;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 343
    invoke-virtual {v0, v1, v2}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    move-result-object v0

    .line 344
    invoke-static {}, Lc/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lc/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lc/aa$a;->a()Lc/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lc/ae;
    .locals 1

    .line 349
    iget-object v0, p0, Lc/a/b/c;->k:Lc/ae;

    return-object v0
.end method

.method public a(IIILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lc/k;",
            ">;Z)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lc/a/b/c;->n:Lc/y;

    if-nez v0, :cond_7

    .line 94
    new-instance v0, Lc/a/b/b;

    invoke-direct {v0, p4}, Lc/a/b/b;-><init>(Ljava/util/List;)V

    .line 96
    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 97
    sget-object v1, Lc/k;->c:Lc/k;

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 101
    iget-object p4, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {p4}, Lc/ae;->a()Lc/a;

    move-result-object p4

    invoke-virtual {p4}, Lc/a;->a()Lc/t;

    move-result-object p4

    invoke-virtual {p4}, Lc/t;->f()Ljava/lang/String;

    move-result-object p4

    .line 102
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object v1

    invoke-virtual {v1, p4}, Lc/a/f/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lc/a/b/e;

    new-instance p2, Ljava/net/UnknownServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "CLEARTEXT communication to "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not permitted by network security policy"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lc/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 98
    :cond_1
    new-instance p1, Lc/a/b/e;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lc/a/b/e;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p4, 0x0

    move-object v1, p4

    .line 108
    :goto_1
    iget-object v2, p0, Lc/a/b/c;->n:Lc/y;

    if-nez v2, :cond_6

    .line 110
    :try_start_0
    iget-object v2, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v2}, Lc/ae;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-direct {p0, p1, p2, p3, v0}, Lc/a/b/c;->a(IIILc/a/b/b;)V

    goto :goto_1

    .line 114
    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lc/a/b/c;->b(IIILc/a/b/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 117
    iget-object v3, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-static {v3}, Lc/a/c;->a(Ljava/net/Socket;)V

    .line 118
    iget-object v3, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v3}, Lc/a/c;->a(Ljava/net/Socket;)V

    .line 119
    iput-object p4, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    .line 120
    iput-object p4, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    .line 121
    iput-object p4, p0, Lc/a/b/c;->d:Ld/e;

    .line 122
    iput-object p4, p0, Lc/a/b/c;->e:Ld/d;

    .line 123
    iput-object p4, p0, Lc/a/b/c;->m:Lc/r;

    .line 124
    iput-object p4, p0, Lc/a/b/c;->n:Lc/y;

    if-nez v1, :cond_4

    .line 127
    new-instance v1, Lc/a/b/e;

    invoke-direct {v1, v2}, Lc/a/b/e;-><init>(Ljava/io/IOException;)V

    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v1, v2}, Lc/a/b/e;->a(Ljava/io/IOException;)V

    :goto_2
    if-eqz p5, :cond_5

    .line 132
    invoke-virtual {v0, v2}, Lc/a/b/b;->a(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 133
    :cond_5
    throw v1

    :cond_6
    return-void

    .line 91
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public a(Lc/a/c/d;)V
    .locals 0

    .line 400
    invoke-virtual {p1}, Lc/a/c/d;->b()I

    move-result p1

    iput p1, p0, Lc/a/b/c;->f:I

    return-void
.end method

.method public a(Lc/a/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lc/a/c/a;->k:Lc/a/c/a;

    invoke-virtual {p1, v0}, Lc/a/c/e;->a(Lc/a/c/a;)V

    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 363
    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lc/a/b/c;->b:Lc/a/c/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 373
    :try_start_0
    iget-object p1, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :try_start_1
    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 376
    iget-object v0, p0, Lc/a/b/c;->d:Ld/e;

    invoke-interface {v0}, Ld/e;->f()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 381
    :try_start_2
    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public b()Lc/y;
    .locals 1

    .line 416
    iget-object v0, p0, Lc/a/b/c;->b:Lc/a/c/d;

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lc/a/b/c;->n:Lc/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lc/y;->b:Lc/y;

    :goto_0
    return-object v0

    .line 419
    :cond_1
    iget-object v0, p0, Lc/a/b/c;->b:Lc/a/c/d;

    invoke-virtual {v0}, Lc/a/c/d;->a()Lc/y;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 354
    iget-object v0, p0, Lc/a/b/c;->l:Ljava/net/Socket;

    invoke-static {v0}, Lc/a/c;->a(Ljava/net/Socket;)V

    return-void
.end method

.method public d()Ljava/net/Socket;
    .locals 1

    .line 358
    iget-object v0, p0, Lc/a/b/c;->a:Ljava/net/Socket;

    return-object v0
.end method

.method public e()Lc/r;
    .locals 1

    .line 404
    iget-object v0, p0, Lc/a/b/c;->m:Lc/r;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lc/a/b/c;->b:Lc/a/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    .line 425
    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    invoke-virtual {v1}, Lc/ae;->a()Lc/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/a;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v1}, Lc/t;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    .line 427
    invoke-virtual {v1}, Lc/ae;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/c;->k:Lc/ae;

    .line 429
    invoke-virtual {v1}, Lc/ae;->c()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/c;->m:Lc/r;

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v1}, Lc/r;->a()Lc/h;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/b/c;->n:Lc/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
