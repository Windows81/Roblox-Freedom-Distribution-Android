.class public final Lb/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lb/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/x;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/t;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lb/m;

.field i:Lb/c;

.field j:Lb/a/a/e;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lb/a/g/b;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lb/g;

.field p:Lb/b;

.field q:Lb/b;

.field r:Lb/j;

.field s:Lb/o;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/w$a;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/w$a;->f:Ljava/util/List;

    .line 422
    new-instance v0, Lb/n;

    invoke-direct {v0}, Lb/n;-><init>()V

    iput-object v0, p0, Lb/w$a;->a:Lb/n;

    .line 423
    invoke-static {}, Lb/w;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->c:Ljava/util/List;

    .line 424
    invoke-static {}, Lb/w;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->d:Ljava/util/List;

    .line 425
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->g:Ljava/net/ProxySelector;

    .line 426
    sget-object v0, Lb/m;->a:Lb/m;

    iput-object v0, p0, Lb/w$a;->h:Lb/m;

    .line 427
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->k:Ljavax/net/SocketFactory;

    .line 428
    sget-object v0, Lb/a/g/d;->a:Lb/a/g/d;

    iput-object v0, p0, Lb/w$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 429
    sget-object v0, Lb/g;->a:Lb/g;

    iput-object v0, p0, Lb/w$a;->o:Lb/g;

    .line 430
    sget-object v0, Lb/b;->a:Lb/b;

    iput-object v0, p0, Lb/w$a;->p:Lb/b;

    .line 431
    sget-object v0, Lb/b;->a:Lb/b;

    iput-object v0, p0, Lb/w$a;->q:Lb/b;

    .line 432
    new-instance v0, Lb/j;

    invoke-direct {v0}, Lb/j;-><init>()V

    iput-object v0, p0, Lb/w$a;->r:Lb/j;

    .line 433
    sget-object v0, Lb/o;->a:Lb/o;

    iput-object v0, p0, Lb/w$a;->s:Lb/o;

    .line 434
    iput-boolean v1, p0, Lb/w$a;->t:Z

    .line 435
    iput-boolean v1, p0, Lb/w$a;->u:Z

    .line 436
    iput-boolean v1, p0, Lb/w$a;->v:Z

    .line 437
    iput v2, p0, Lb/w$a;->w:I

    .line 438
    iput v2, p0, Lb/w$a;->x:I

    .line 439
    iput v2, p0, Lb/w$a;->y:I

    .line 440
    return-void
.end method

.method constructor <init>(Lb/w;)V
    .locals 2

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/w$a;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/w$a;->f:Ljava/util/List;

    .line 443
    iget-object v0, p1, Lb/w;->a:Lb/n;

    iput-object v0, p0, Lb/w$a;->a:Lb/n;

    .line 444
    iget-object v0, p1, Lb/w;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lb/w$a;->b:Ljava/net/Proxy;

    .line 445
    iget-object v0, p1, Lb/w;->c:Ljava/util/List;

    iput-object v0, p0, Lb/w$a;->c:Ljava/util/List;

    .line 446
    iget-object v0, p1, Lb/w;->d:Ljava/util/List;

    iput-object v0, p0, Lb/w$a;->d:Ljava/util/List;

    .line 447
    iget-object v0, p0, Lb/w$a;->e:Ljava/util/List;

    iget-object v1, p1, Lb/w;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    iget-object v0, p0, Lb/w$a;->f:Ljava/util/List;

    iget-object v1, p1, Lb/w;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v0, p1, Lb/w;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lb/w$a;->g:Ljava/net/ProxySelector;

    .line 450
    iget-object v0, p1, Lb/w;->h:Lb/m;

    iput-object v0, p0, Lb/w$a;->h:Lb/m;

    .line 451
    iget-object v0, p1, Lb/w;->j:Lb/a/a/e;

    iput-object v0, p0, Lb/w$a;->j:Lb/a/a/e;

    .line 452
    iget-object v0, p1, Lb/w;->i:Lb/c;

    iput-object v0, p0, Lb/w$a;->i:Lb/c;

    .line 453
    iget-object v0, p1, Lb/w;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lb/w$a;->k:Ljavax/net/SocketFactory;

    .line 454
    iget-object v0, p1, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lb/w$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 455
    iget-object v0, p1, Lb/w;->m:Lb/a/g/b;

    iput-object v0, p0, Lb/w$a;->m:Lb/a/g/b;

    .line 456
    iget-object v0, p1, Lb/w;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lb/w$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 457
    iget-object v0, p1, Lb/w;->o:Lb/g;

    iput-object v0, p0, Lb/w$a;->o:Lb/g;

    .line 458
    iget-object v0, p1, Lb/w;->p:Lb/b;

    iput-object v0, p0, Lb/w$a;->p:Lb/b;

    .line 459
    iget-object v0, p1, Lb/w;->q:Lb/b;

    iput-object v0, p0, Lb/w$a;->q:Lb/b;

    .line 460
    iget-object v0, p1, Lb/w;->r:Lb/j;

    iput-object v0, p0, Lb/w$a;->r:Lb/j;

    .line 461
    iget-object v0, p1, Lb/w;->s:Lb/o;

    iput-object v0, p0, Lb/w$a;->s:Lb/o;

    .line 462
    iget-boolean v0, p1, Lb/w;->t:Z

    iput-boolean v0, p0, Lb/w$a;->t:Z

    .line 463
    iget-boolean v0, p1, Lb/w;->u:Z

    iput-boolean v0, p0, Lb/w$a;->u:Z

    .line 464
    iget-boolean v0, p1, Lb/w;->v:Z

    iput-boolean v0, p0, Lb/w$a;->v:Z

    .line 465
    iget v0, p1, Lb/w;->w:I

    iput v0, p0, Lb/w$a;->w:I

    .line 466
    iget v0, p1, Lb/w;->x:I

    iput v0, p0, Lb/w$a;->x:I

    .line 467
    iget v0, p1, Lb/w;->y:I

    iput v0, p0, Lb/w$a;->y:I

    .line 468
    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lb/w$a;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 476
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 479
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lb/w$a;->w:I

    .line 482
    return-object p0
.end method

.method public a(Lb/m;)Lb/w$a;
    .locals 2

    .prologue
    .line 543
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iput-object p1, p0, Lb/w$a;->h:Lb/m;

    .line 545
    return-object p0
.end method

.method public a(Lb/t;)Lb/w$a;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lb/w$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    return-object p0
.end method

.method public a(Z)Lb/w$a;
    .locals 0

    .prologue
    .line 716
    iput-boolean p1, p0, Lb/w$a;->u:Z

    .line 717
    return-object p0
.end method

.method public a()Lb/w;
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lb/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/w;-><init>(Lb/w$a;Lb/w$1;)V

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lb/w$a;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 490
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 493
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lb/w$a;->x:I

    .line 496
    return-object p0
.end method

.method public b(Lb/t;)Lb/w$a;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lb/w$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0
.end method
