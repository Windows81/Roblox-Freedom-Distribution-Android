.class public final Lc/a/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# instance fields
.field private final a:Lc/x;

.field private b:Lc/a/b/g;

.field private c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>(Lc/x;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lc/a/d/l;->a:Lc/x;

    return-void
.end method

.method private a(Lc/t;)Lc/a;
    .locals 17

    move-object/from16 v0, p0

    .line 191
    invoke-virtual/range {p1 .. p1}, Lc/t;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v1}, Lc/x;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 193
    iget-object v1, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v1}, Lc/x;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 194
    iget-object v3, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v3}, Lc/x;->l()Lc/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 197
    :goto_0
    new-instance v1, Lc/a;

    invoke-virtual/range {p1 .. p1}, Lc/t;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lc/t;->g()I

    move-result v6

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->h()Lc/p;

    move-result-object v7

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->i()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    .line 198
    invoke-virtual {v2}, Lc/x;->n()Lc/b;

    move-result-object v12

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    .line 199
    invoke-virtual {v2}, Lc/x;->d()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->t()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->u()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->e()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lc/a;-><init>(Ljava/lang/String;ILc/p;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lc/g;Lc/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private a(Lc/ac;)Lc/aa;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 265
    iget-object v0, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v0}, Lc/a/b/g;->b()Lc/a/b/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lc/i;->a()Lc/ae;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 269
    :goto_0
    invoke-virtual {p1}, Lc/ac;->b()I

    move-result v2

    .line 271
    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object v3

    invoke-virtual {v3}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_7

    const/16 v4, 0x134

    if-eq v2, v4, :cond_7

    const/16 v4, 0x191

    if-eq v2, v4, :cond_6

    const/16 v4, 0x197

    if-eq v2, v4, :cond_3

    const/16 v0, 0x198

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 337
    :cond_1
    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/aa;->d()Lc/ab;

    move-result-object v0

    instance-of v0, v0, Lc/a/d/n;

    if-eqz v0, :cond_2

    return-object v1

    .line 341
    :cond_2
    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 275
    invoke-virtual {v0}, Lc/ae;->b()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lc/a/d/l;->a:Lc/x;

    .line 276
    invoke-virtual {v1}, Lc/x;->d()Ljava/net/Proxy;

    move-result-object v1

    .line 277
    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_5

    .line 280
    iget-object v1, p0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v1}, Lc/x;->n()Lc/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lc/b;->a(Lc/ae;Lc/ac;)Lc/aa;

    move-result-object p1

    return-object p1

    .line 278
    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_6
    iget-object v1, p0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v1}, Lc/x;->m()Lc/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lc/b;->a(Lc/ae;Lc/ac;)Lc/aa;

    move-result-object p1

    return-object p1

    .line 289
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-object v1

    .line 298
    :cond_8
    :pswitch_0
    iget-object v0, p0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v0}, Lc/x;->q()Z

    move-result v0

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const-string v0, "Location"

    .line 300
    invoke-virtual {p1, v0}, Lc/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    .line 302
    :cond_a
    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->a()Lc/t;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc/t;->c(Ljava/lang/String;)Lc/t;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v1

    .line 308
    :cond_b
    invoke-virtual {v0}, Lc/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object v4

    invoke-virtual {v4}, Lc/aa;->a()Lc/t;

    move-result-object v4

    invoke-virtual {v4}, Lc/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 309
    iget-object v2, p0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v2}, Lc/x;->p()Z

    move-result v2

    if-nez v2, :cond_c

    return-object v1

    .line 312
    :cond_c
    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object v2

    invoke-virtual {v2}, Lc/aa;->e()Lc/aa$a;

    move-result-object v2

    .line 313
    invoke-static {v3}, Lc/a/d/g;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 314
    invoke-static {v3}, Lc/a/d/g;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 315
    invoke-virtual {v2, v5, v1}, Lc/aa$a;->a(Ljava/lang/String;Lc/ab;)Lc/aa$a;

    goto :goto_2

    .line 317
    :cond_d
    invoke-virtual {v2, v3, v1}, Lc/aa$a;->a(Ljava/lang/String;Lc/ab;)Lc/aa$a;

    :goto_2
    const-string v1, "Transfer-Encoding"

    .line 319
    invoke-virtual {v2, v1}, Lc/aa$a;->b(Ljava/lang/String;)Lc/aa$a;

    const-string v1, "Content-Length"

    .line 320
    invoke-virtual {v2, v1}, Lc/aa$a;->b(Ljava/lang/String;)Lc/aa$a;

    const-string v1, "Content-Type"

    .line 321
    invoke-virtual {v2, v1}, Lc/aa$a;->b(Ljava/lang/String;)Lc/aa$a;

    .line 327
    :cond_e
    invoke-direct {p0, p1, v0}, Lc/a/d/l;->a(Lc/ac;Lc/t;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "Authorization"

    .line 328
    invoke-virtual {v2, p1}, Lc/aa$a;->b(Ljava/lang/String;)Lc/aa$a;

    .line 331
    :cond_f
    invoke-virtual {v2, v0}, Lc/aa$a;->a(Lc/t;)Lc/aa$a;

    move-result-object p1

    invoke-virtual {p1}, Lc/aa$a;->a()Lc/aa;

    move-result-object p1

    return-object p1

    .line 264
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lc/ac;Lc/t;)Z
    .locals 2

    .line 353
    invoke-virtual {p1}, Lc/ac;->a()Lc/aa;

    move-result-object p1

    invoke-virtual {p1}, Lc/aa;->a()Lc/t;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lc/t;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc/t;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p1}, Lc/t;->g()I

    move-result v0

    invoke-virtual {p2}, Lc/t;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 356
    invoke-virtual {p1}, Lc/t;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lc/t;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/io/IOException;Z)Z
    .locals 3

    .line 228
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 234
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 235
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 240
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 243
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 247
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private a(Ljava/io/IOException;ZLc/aa;)Z
    .locals 2

    .line 208
    iget-object v0, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v0, p1}, Lc/a/b/g;->a(Ljava/io/IOException;)V

    .line 211
    iget-object v0, p0, Lc/a/d/l;->a:Lc/x;

    invoke-virtual {v0}, Lc/x;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 214
    invoke-virtual {p3}, Lc/aa;->d()Lc/ab;

    move-result-object p3

    instance-of p3, p3, Lc/a/d/n;

    if-eqz p3, :cond_1

    return v1

    .line 217
    :cond_1
    invoke-direct {p0, p1, p2}, Lc/a/d/l;->a(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 220
    :cond_2
    iget-object p1, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {p1}, Lc/a/b/g;->f()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Lc/u$a;->a()Lc/aa;

    move-result-object v0

    .line 110
    new-instance v1, Lc/a/b/g;

    iget-object v2, p0, Lc/a/d/l;->a:Lc/x;

    .line 111
    invoke-virtual {v2}, Lc/x;->o()Lc/j;

    move-result-object v2

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/a/d/l;->a(Lc/t;)Lc/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc/a/b/g;-><init>(Lc/j;Lc/a;)V

    iput-object v1, p0, Lc/a/d/l;->b:Lc/a/b/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    .line 116
    :goto_0
    iget-boolean v5, p0, Lc/a/d/l;->d:Z

    if-nez v5, :cond_9

    .line 124
    :try_start_0
    move-object v5, p1

    check-cast v5, Lc/a/d/i;

    iget-object v6, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v5, v0, v6, v2, v2}, Lc/a/d/i;->a(Lc/aa;Lc/a/b/g;Lc/a/d/h;Lc/i;)Lc/ac;

    move-result-object v0
    :try_end_0
    .catch Lc/a/b/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v0}, Lc/ac;->h()Lc/ac$a;

    move-result-object v0

    .line 147
    invoke-virtual {v3}, Lc/ac;->h()Lc/ac$a;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v2}, Lc/ac$a;->a(Lc/ad;)Lc/ac$a;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lc/ac$a;->a()Lc/ac;

    move-result-object v3

    .line 147
    invoke-virtual {v0, v3}, Lc/ac$a;->c(Lc/ac;)Lc/ac$a;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lc/ac$a;->a()Lc/ac;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 153
    invoke-direct {p0, v3}, Lc/a/d/l;->a(Lc/ac;)Lc/aa;

    move-result-object v0

    if-nez v0, :cond_2

    .line 156
    iget-boolean p1, p0, Lc/a/d/l;->c:Z

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {p1}, Lc/a/b/g;->c()V

    :cond_1
    return-object v3

    .line 162
    :cond_2
    invoke-virtual {v3}, Lc/ac;->g()Lc/ad;

    move-result-object v5

    invoke-static {v5}, Lc/a/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_6

    .line 169
    invoke-virtual {v0}, Lc/aa;->d()Lc/ab;

    move-result-object v5

    instance-of v5, v5, Lc/a/d/n;

    if-nez v5, :cond_5

    .line 173
    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lc/a/d/l;->a(Lc/ac;Lc/t;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 174
    iget-object v5, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v5}, Lc/a/b/g;->c()V

    .line 175
    new-instance v5, Lc/a/b/g;

    iget-object v6, p0, Lc/a/d/l;->a:Lc/x;

    .line 176
    invoke-virtual {v6}, Lc/x;->o()Lc/j;

    move-result-object v6

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v7

    invoke-direct {p0, v7}, Lc/a/d/l;->a(Lc/t;)Lc/a;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc/a/b/g;-><init>(Lc/j;Lc/a;)V

    iput-object v5, p0, Lc/a/d/l;->b:Lc/a/b/g;

    goto :goto_0

    .line 177
    :cond_3
    iget-object v5, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v5}, Lc/a/b/g;->a()Lc/a/d/h;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 178
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the body of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_5
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v3}, Lc/ac;->b()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 165
    :cond_6
    iget-object p1, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {p1}, Lc/a/b/g;->c()V

    .line 166
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 133
    :try_start_1
    invoke-direct {p0, v5, v1, v0}, Lc/a/d/l;->a(Ljava/io/IOException;ZLc/aa;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    :cond_7
    throw v5

    :catch_1
    move-exception v5

    .line 128
    invoke-virtual {v5}, Lc/a/b/e;->a()Ljava/io/IOException;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v0}, Lc/a/d/l;->a(Ljava/io/IOException;ZLc/aa;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5}, Lc/a/b/e;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_1
    iget-object v0, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v0, v2}, Lc/a/b/g;->a(Ljava/io/IOException;)V

    .line 140
    iget-object v0, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {v0}, Lc/a/b/g;->c()V

    throw p1

    .line 117
    :cond_9
    iget-object p1, p0, Lc/a/d/l;->b:Lc/a/b/g;

    invoke-virtual {p1}, Lc/a/b/g;->c()V

    .line 118
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lc/a/d/l;->d:Z

    .line 83
    iget-object v0, p0, Lc/a/d/l;->b:Lc/a/b/g;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lc/a/b/g;->e()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lc/a/d/l;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lc/a/d/l;->c:Z

    return v0
.end method
