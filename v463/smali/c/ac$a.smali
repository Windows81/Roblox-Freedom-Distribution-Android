.class public Lc/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lc/aa;

.field private b:Lc/y;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lc/r;

.field private f:Lc/s$a;

.field private g:Lc/ad;

.field private h:Lc/ac;

.field private i:Lc/ac;

.field private j:Lc/ac;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 287
    iput v0, p0, Lc/ac$a;->c:I

    .line 299
    new-instance v0, Lc/s$a;

    invoke-direct {v0}, Lc/s$a;-><init>()V

    iput-object v0, p0, Lc/ac$a;->f:Lc/s$a;

    return-void
.end method

.method private constructor <init>(Lc/ac;)V
    .locals 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 287
    iput v0, p0, Lc/ac$a;->c:I

    .line 303
    invoke-static {p1}, Lc/ac;->a(Lc/ac;)Lc/aa;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->a:Lc/aa;

    .line 304
    invoke-static {p1}, Lc/ac;->b(Lc/ac;)Lc/y;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->b:Lc/y;

    .line 305
    invoke-static {p1}, Lc/ac;->c(Lc/ac;)I

    move-result v0

    iput v0, p0, Lc/ac$a;->c:I

    .line 306
    invoke-static {p1}, Lc/ac;->d(Lc/ac;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->d:Ljava/lang/String;

    .line 307
    invoke-static {p1}, Lc/ac;->e(Lc/ac;)Lc/r;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->e:Lc/r;

    .line 308
    invoke-static {p1}, Lc/ac;->f(Lc/ac;)Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->b()Lc/s$a;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->f:Lc/s$a;

    .line 309
    invoke-static {p1}, Lc/ac;->g(Lc/ac;)Lc/ad;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->g:Lc/ad;

    .line 310
    invoke-static {p1}, Lc/ac;->h(Lc/ac;)Lc/ac;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->h:Lc/ac;

    .line 311
    invoke-static {p1}, Lc/ac;->i(Lc/ac;)Lc/ac;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->i:Lc/ac;

    .line 312
    invoke-static {p1}, Lc/ac;->j(Lc/ac;)Lc/ac;

    move-result-object v0

    iput-object v0, p0, Lc/ac$a;->j:Lc/ac;

    .line 313
    invoke-static {p1}, Lc/ac;->k(Lc/ac;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/ac$a;->k:J

    .line 314
    invoke-static {p1}, Lc/ac;->l(Lc/ac;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/ac$a;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lc/ac;Lc/ac$1;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lc/ac$a;-><init>(Lc/ac;)V

    return-void
.end method

.method static synthetic a(Lc/ac$a;)Lc/aa;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->a:Lc/aa;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lc/ac;)V
    .locals 1

    .line 389
    invoke-static {p2}, Lc/ac;->g(Lc/ac;)Lc/ad;

    move-result-object v0

    if-nez v0, :cond_3

    .line 391
    invoke-static {p2}, Lc/ac;->h(Lc/ac;)Lc/ac;

    move-result-object v0

    if-nez v0, :cond_2

    .line 393
    invoke-static {p2}, Lc/ac;->i(Lc/ac;)Lc/ac;

    move-result-object v0

    if-nez v0, :cond_1

    .line 395
    invoke-static {p2}, Lc/ac;->j(Lc/ac;)Lc/ac;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 394
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 392
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 390
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic b(Lc/ac$a;)Lc/y;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->b:Lc/y;

    return-object p0
.end method

.method static synthetic c(Lc/ac$a;)I
    .locals 0

    .line 284
    iget p0, p0, Lc/ac$a;->c:I

    return p0
.end method

.method static synthetic d(Lc/ac$a;)Ljava/lang/String;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method private d(Lc/ac;)V
    .locals 1

    .line 407
    invoke-static {p1}, Lc/ac;->g(Lc/ac;)Lc/ad;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 408
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic e(Lc/ac$a;)Lc/r;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->e:Lc/r;

    return-object p0
.end method

.method static synthetic f(Lc/ac$a;)Lc/s$a;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->f:Lc/s$a;

    return-object p0
.end method

.method static synthetic g(Lc/ac$a;)Lc/ad;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->g:Lc/ad;

    return-object p0
.end method

.method static synthetic h(Lc/ac$a;)Lc/ac;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->h:Lc/ac;

    return-object p0
.end method

.method static synthetic i(Lc/ac$a;)Lc/ac;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->i:Lc/ac;

    return-object p0
.end method

.method static synthetic j(Lc/ac$a;)Lc/ac;
    .locals 0

    .line 284
    iget-object p0, p0, Lc/ac$a;->j:Lc/ac;

    return-object p0
.end method

.method static synthetic k(Lc/ac$a;)J
    .locals 2

    .line 284
    iget-wide v0, p0, Lc/ac$a;->k:J

    return-wide v0
.end method

.method static synthetic l(Lc/ac$a;)J
    .locals 2

    .line 284
    iget-wide v0, p0, Lc/ac$a;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lc/ac$a;
    .locals 0

    .line 328
    iput p1, p0, Lc/ac$a;->c:I

    return-object p0
.end method

.method public a(J)Lc/ac$a;
    .locals 0

    .line 413
    iput-wide p1, p0, Lc/ac$a;->k:J

    return-object p0
.end method

.method public a(Lc/aa;)Lc/ac$a;
    .locals 0

    .line 318
    iput-object p1, p0, Lc/ac$a;->a:Lc/aa;

    return-object p0
.end method

.method public a(Lc/ac;)Lc/ac$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 377
    invoke-direct {p0, v0, p1}, Lc/ac$a;->a(Ljava/lang/String;Lc/ac;)V

    .line 378
    :cond_0
    iput-object p1, p0, Lc/ac$a;->h:Lc/ac;

    return-object p0
.end method

.method public a(Lc/ad;)Lc/ac$a;
    .locals 0

    .line 372
    iput-object p1, p0, Lc/ac$a;->g:Lc/ad;

    return-object p0
.end method

.method public a(Lc/r;)Lc/ac$a;
    .locals 0

    .line 338
    iput-object p1, p0, Lc/ac$a;->e:Lc/r;

    return-object p0
.end method

.method public a(Lc/s;)Lc/ac$a;
    .locals 0

    .line 367
    invoke-virtual {p1}, Lc/s;->b()Lc/s$a;

    move-result-object p1

    iput-object p1, p0, Lc/ac$a;->f:Lc/s$a;

    return-object p0
.end method

.method public a(Lc/y;)Lc/ac$a;
    .locals 0

    .line 323
    iput-object p1, p0, Lc/ac$a;->b:Lc/y;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/ac$a;
    .locals 0

    .line 333
    iput-object p1, p0, Lc/ac$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lc/ac$a;
    .locals 1

    .line 356
    iget-object v0, p0, Lc/ac$a;->f:Lc/s$a;

    invoke-virtual {v0, p1, p2}, Lc/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/s$a;

    return-object p0
.end method

.method public a()Lc/ac;
    .locals 3

    .line 423
    iget-object v0, p0, Lc/ac$a;->a:Lc/aa;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lc/ac$a;->b:Lc/y;

    if-eqz v0, :cond_1

    .line 425
    iget v0, p0, Lc/ac$a;->c:I

    if-ltz v0, :cond_0

    .line 426
    new-instance v0, Lc/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/ac;-><init>(Lc/ac$a;Lc/ac$1;)V

    return-object v0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc/ac$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Lc/ac$a;
    .locals 0

    .line 418
    iput-wide p1, p0, Lc/ac$a;->l:J

    return-object p0
.end method

.method public b(Lc/ac;)Lc/ac$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 383
    invoke-direct {p0, v0, p1}, Lc/ac$a;->a(Ljava/lang/String;Lc/ac;)V

    .line 384
    :cond_0
    iput-object p1, p0, Lc/ac$a;->i:Lc/ac;

    return-object p0
.end method

.method public c(Lc/ac;)Lc/ac$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 401
    invoke-direct {p0, p1}, Lc/ac$a;->d(Lc/ac;)V

    .line 402
    :cond_0
    iput-object p1, p0, Lc/ac$a;->j:Lc/ac;

    return-object p0
.end method
