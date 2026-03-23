.class public final Lc/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lc/o;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/y;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/u;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lc/m;

.field i:Lc/c;

.field j:Lc/a/a/e;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lc/a/g/b;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lc/g;

.field p:Lc/b;

.field q:Lc/b;

.field r:Lc/j;

.field s:Lc/p;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/x$a;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/x$a;->f:Ljava/util/List;

    .line 422
    new-instance v0, Lc/o;

    invoke-direct {v0}, Lc/o;-><init>()V

    iput-object v0, p0, Lc/x$a;->a:Lc/o;

    .line 423
    invoke-static {}, Lc/x;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/x$a;->c:Ljava/util/List;

    .line 424
    invoke-static {}, Lc/x;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/x$a;->d:Ljava/util/List;

    .line 425
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lc/x$a;->g:Ljava/net/ProxySelector;

    .line 426
    sget-object v0, Lc/m;->a:Lc/m;

    iput-object v0, p0, Lc/x$a;->h:Lc/m;

    .line 427
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lc/x$a;->k:Ljavax/net/SocketFactory;

    .line 428
    sget-object v0, Lc/a/g/d;->a:Lc/a/g/d;

    iput-object v0, p0, Lc/x$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 429
    sget-object v0, Lc/g;->a:Lc/g;

    iput-object v0, p0, Lc/x$a;->o:Lc/g;

    .line 430
    sget-object v0, Lc/b;->a:Lc/b;

    iput-object v0, p0, Lc/x$a;->p:Lc/b;

    .line 431
    sget-object v0, Lc/b;->a:Lc/b;

    iput-object v0, p0, Lc/x$a;->q:Lc/b;

    .line 432
    new-instance v0, Lc/j;

    invoke-direct {v0}, Lc/j;-><init>()V

    iput-object v0, p0, Lc/x$a;->r:Lc/j;

    .line 433
    sget-object v0, Lc/p;->a:Lc/p;

    iput-object v0, p0, Lc/x$a;->s:Lc/p;

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lc/x$a;->t:Z

    .line 435
    iput-boolean v0, p0, Lc/x$a;->u:Z

    .line 436
    iput-boolean v0, p0, Lc/x$a;->v:Z

    const/16 v0, 0x2710

    .line 437
    iput v0, p0, Lc/x$a;->w:I

    .line 438
    iput v0, p0, Lc/x$a;->x:I

    .line 439
    iput v0, p0, Lc/x$a;->y:I

    return-void
.end method

.method constructor <init>(Lc/x;)V
    .locals 2

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/x$a;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/x$a;->f:Ljava/util/List;

    .line 443
    iget-object v0, p1, Lc/x;->a:Lc/o;

    iput-object v0, p0, Lc/x$a;->a:Lc/o;

    .line 444
    iget-object v0, p1, Lc/x;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lc/x$a;->b:Ljava/net/Proxy;

    .line 445
    iget-object v0, p1, Lc/x;->c:Ljava/util/List;

    iput-object v0, p0, Lc/x$a;->c:Ljava/util/List;

    .line 446
    iget-object v0, p1, Lc/x;->d:Ljava/util/List;

    iput-object v0, p0, Lc/x$a;->d:Ljava/util/List;

    .line 447
    iget-object v0, p0, Lc/x$a;->e:Ljava/util/List;

    iget-object v1, p1, Lc/x;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    iget-object v0, p0, Lc/x$a;->f:Ljava/util/List;

    iget-object v1, p1, Lc/x;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v0, p1, Lc/x;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lc/x$a;->g:Ljava/net/ProxySelector;

    .line 450
    iget-object v0, p1, Lc/x;->h:Lc/m;

    iput-object v0, p0, Lc/x$a;->h:Lc/m;

    .line 451
    iget-object v0, p1, Lc/x;->j:Lc/a/a/e;

    iput-object v0, p0, Lc/x$a;->j:Lc/a/a/e;

    .line 452
    iget-object v0, p1, Lc/x;->i:Lc/c;

    iput-object v0, p0, Lc/x$a;->i:Lc/c;

    .line 453
    iget-object v0, p1, Lc/x;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lc/x$a;->k:Ljavax/net/SocketFactory;

    .line 454
    iget-object v0, p1, Lc/x;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lc/x$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 455
    iget-object v0, p1, Lc/x;->m:Lc/a/g/b;

    iput-object v0, p0, Lc/x$a;->m:Lc/a/g/b;

    .line 456
    iget-object v0, p1, Lc/x;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lc/x$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 457
    iget-object v0, p1, Lc/x;->o:Lc/g;

    iput-object v0, p0, Lc/x$a;->o:Lc/g;

    .line 458
    iget-object v0, p1, Lc/x;->p:Lc/b;

    iput-object v0, p0, Lc/x$a;->p:Lc/b;

    .line 459
    iget-object v0, p1, Lc/x;->q:Lc/b;

    iput-object v0, p0, Lc/x$a;->q:Lc/b;

    .line 460
    iget-object v0, p1, Lc/x;->r:Lc/j;

    iput-object v0, p0, Lc/x$a;->r:Lc/j;

    .line 461
    iget-object v0, p1, Lc/x;->s:Lc/p;

    iput-object v0, p0, Lc/x$a;->s:Lc/p;

    .line 462
    iget-boolean v0, p1, Lc/x;->t:Z

    iput-boolean v0, p0, Lc/x$a;->t:Z

    .line 463
    iget-boolean v0, p1, Lc/x;->u:Z

    iput-boolean v0, p0, Lc/x$a;->u:Z

    .line 464
    iget-boolean v0, p1, Lc/x;->v:Z

    iput-boolean v0, p0, Lc/x$a;->v:Z

    .line 465
    iget v0, p1, Lc/x;->w:I

    iput v0, p0, Lc/x$a;->w:I

    .line 466
    iget v0, p1, Lc/x;->x:I

    iput v0, p0, Lc/x$a;->x:I

    .line 467
    iget p1, p1, Lc/x;->y:I

    iput p1, p0, Lc/x$a;->y:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lc/x$a;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 478
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-gtz p3, :cond_2

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, v2

    .line 481
    iput p1, p0, Lc/x$a;->w:I

    return-object p0

    .line 479
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/m;)Lc/x$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 544
    iput-object p1, p0, Lc/x$a;->h:Lc/m;

    return-object p0

    .line 543
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cookieJar == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/u;)Lc/x$a;
    .locals 1

    .line 811
    iget-object v0, p0, Lc/x$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Lc/x$a;
    .locals 0

    .line 716
    iput-boolean p1, p0, Lc/x$a;->u:Z

    return-object p0
.end method

.method public a()Lc/x;
    .locals 2

    .line 830
    new-instance v0, Lc/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/x;-><init>(Lc/x$a;Lc/x$1;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lc/x$a;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 492
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-gtz p3, :cond_2

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, v2

    .line 495
    iput p1, p0, Lc/x$a;->x:I

    return-object p0

    .line 493
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lc/u;)Lc/x$a;
    .locals 1

    .line 825
    iget-object v0, p0, Lc/x$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
