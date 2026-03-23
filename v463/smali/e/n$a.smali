.class final Le/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Le/m;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Ljava/lang/reflect/Type;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Lc/s;

.field s:Lc/v;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:[Le/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Le/i<",
            "*>;"
        }
    .end annotation
.end field

.field v:Le/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/e<",
            "Lc/ad;",
            "TT;>;"
        }
    .end annotation
.end field

.field w:Le/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Le/n$a;->a:Le/m;

    .line 153
    iput-object p2, p0, Le/n$a;->b:Ljava/lang/reflect/Method;

    .line 154
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 155
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Le/n$a;->e:[Ljava/lang/reflect/Type;

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Le/n$a;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private a([Ljava/lang/String;)Lc/s;
    .locals 8

    .line 307
    new-instance v0, Lc/s$a;

    invoke-direct {v0}, Lc/s$a;-><init>()V

    .line 308
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    if-eqz v5, :cond_2

    .line 310
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_2

    .line 314
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 316
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    invoke-static {v4}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 321
    iput-object v5, p0, Le/n$a;->s:Lc/v;

    goto :goto_1

    :cond_0
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "Malformed content type: %s"

    .line 319
    invoke-direct {p0, v0, p1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 323
    :cond_1
    invoke-virtual {v0, v6, v4}, Lc/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/s$a;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    .line 311
    invoke-direct {p0, v0, p1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 326
    :cond_3
    invoke-virtual {v0}, Lc/s$a;->a()Lc/s;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Le/i<",
            "*>;"
        }
    .end annotation

    .line 332
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p3, v3

    .line 333
    invoke-direct {p0, p1, p2, p3, v4}, Le/n$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Le/i;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    .line 341
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No Retrofit annotation found."

    .line 348
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Le/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Le/i<",
            "*>;"
        }
    .end annotation

    .line 356
    instance-of v0, p4, Le/b/w;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 357
    iget-boolean p3, p0, Le/n$a;->l:Z

    if-nez p3, :cond_5

    .line 360
    iget-boolean p3, p0, Le/n$a;->j:Z

    if-nez p3, :cond_4

    .line 363
    iget-boolean p3, p0, Le/n$a;->k:Z

    if-nez p3, :cond_3

    .line 366
    iget-object p3, p0, Le/n$a;->q:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 370
    iput-boolean v2, p0, Le/n$a;->l:Z

    .line 372
    const-class p3, Lc/t;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/lang/String;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Class;

    .line 375
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    .line 378
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 376
    :cond_1
    :goto_0
    new-instance p1, Le/i$l;

    invoke-direct {p1}, Le/i$l;-><init>()V

    return-object p1

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    .line 367
    iget-object p3, p0, Le/n$a;->m:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @Query"

    .line 364
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p2, v3, [Ljava/lang/Object;

    .line 361
    invoke-direct {p0, p1, v1, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Multiple @Url method annotations found."

    .line 358
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 382
    :cond_6
    instance-of v0, p4, Le/b/s;

    if-eqz v0, :cond_a

    .line 383
    iget-boolean v0, p0, Le/n$a;->k:Z

    if-nez v0, :cond_9

    .line 386
    iget-boolean v0, p0, Le/n$a;->l:Z

    if-nez v0, :cond_8

    .line 389
    iget-object v0, p0, Le/n$a;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 392
    iput-boolean v2, p0, Le/n$a;->j:Z

    .line 394
    check-cast p4, Le/b/s;

    .line 395
    invoke-interface {p4}, Le/b/s;->a()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-direct {p0, p1, v0}, Le/n$a;->a(ILjava/lang/String;)V

    .line 398
    iget-object p1, p0, Le/n$a;->a:Le/m;

    invoke-virtual {p1, p2, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 399
    new-instance p2, Le/i$h;

    invoke-interface {p4}, Le/b/s;->b()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Le/i$h;-><init>(Ljava/lang/String;Le/e;Z)V

    return-object p2

    :cond_7
    new-array p2, v2, [Ljava/lang/Object;

    .line 390
    iget-object p3, p0, Le/n$a;->m:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_8
    new-array p2, v3, [Ljava/lang/Object;

    .line 387
    invoke-direct {p0, p1, v1, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @Query."

    .line 384
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 401
    :cond_a
    instance-of v0, p4, Le/b/t;

    const-string v1, "<String>)"

    const-string v4, " must include generic type (e.g., "

    if-eqz v0, :cond_e

    .line 402
    check-cast p4, Le/b/t;

    .line 403
    invoke-interface {p4}, Le/b/t;->a()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-interface {p4}, Le/b/t;->b()Z

    move-result p4

    .line 406
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 407
    iput-boolean v2, p0, Le/n$a;->k:Z

    .line 408
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 409
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_b

    .line 415
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 416
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 417
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 418
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 419
    new-instance p2, Le/i$i;

    invoke-direct {p2, v0, p1, p4}, Le/i$i;-><init>(Ljava/lang/String;Le/e;Z)V

    invoke-virtual {p2}, Le/i$i;->a()Le/i;

    move-result-object p1

    return-object p1

    .line 410
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 410
    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 420
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 421
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Le/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 422
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 423
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 424
    new-instance p2, Le/i$i;

    invoke-direct {p2, v0, p1, p4}, Le/i$i;-><init>(Ljava/lang/String;Le/e;Z)V

    invoke-virtual {p2}, Le/i$i;->b()Le/i;

    move-result-object p1

    return-object p1

    .line 426
    :cond_d
    iget-object p1, p0, Le/n$a;->a:Le/m;

    .line 427
    invoke-virtual {p1, p2, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 428
    new-instance p2, Le/i$i;

    invoke-direct {p2, v0, p1, p4}, Le/i$i;-><init>(Ljava/lang/String;Le/e;Z)V

    return-object p2

    .line 431
    :cond_e
    instance-of v0, p4, Le/b/u;

    const-string v5, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_12

    .line 432
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 433
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 436
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Le/o;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 437
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_10

    .line 440
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 441
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 442
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_f

    .line 445
    invoke-static {v2, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 446
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 447
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 449
    new-instance p2, Le/i$j;

    check-cast p4, Le/b/u;

    invoke-interface {p4}, Le/b/u;->a()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Le/i$j;-><init>(Le/e;Z)V

    return-object p2

    .line 443
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_10
    new-array p2, v3, [Ljava/lang/Object;

    .line 438
    invoke-direct {p0, p1, v5, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_11
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@QueryMap parameter type must be Map."

    .line 434
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 451
    :cond_12
    instance-of v0, p4, Le/b/i;

    if-eqz v0, :cond_16

    .line 452
    check-cast p4, Le/b/i;

    .line 453
    invoke-interface {p4}, Le/b/i;->a()Ljava/lang/String;

    move-result-object p4

    .line 455
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 456
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 457
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_13

    .line 463
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 464
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 465
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 466
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 467
    new-instance p2, Le/i$d;

    invoke-direct {p2, p4, p1}, Le/i$d;-><init>(Ljava/lang/String;Le/e;)V

    invoke-virtual {p2}, Le/i$d;->a()Le/i;

    move-result-object p1

    return-object p1

    .line 458
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 458
    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 468
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Le/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 470
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 471
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 472
    new-instance p2, Le/i$d;

    invoke-direct {p2, p4, p1}, Le/i$d;-><init>(Ljava/lang/String;Le/e;)V

    invoke-virtual {p2}, Le/i$d;->b()Le/i;

    move-result-object p1

    return-object p1

    .line 474
    :cond_15
    iget-object p1, p0, Le/n$a;->a:Le/m;

    .line 475
    invoke-virtual {p1, p2, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 476
    new-instance p2, Le/i$d;

    invoke-direct {p2, p4, p1}, Le/i$d;-><init>(Ljava/lang/String;Le/e;)V

    return-object p2

    .line 479
    :cond_16
    instance-of v0, p4, Le/b/j;

    if-eqz v0, :cond_1a

    .line 480
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 481
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 484
    const-class v0, Ljava/util/Map;

    invoke-static {p2, p4, v0}, Le/o;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 485
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_18

    .line 488
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 489
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    .line 490
    const-class v0, Ljava/lang/String;

    if-ne v0, p4, :cond_17

    .line 493
    invoke-static {v2, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 494
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 495
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 497
    new-instance p2, Le/i$e;

    invoke-direct {p2, p1}, Le/i$e;-><init>(Le/e;)V

    return-object p2

    .line 491
    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_18
    new-array p2, v3, [Ljava/lang/Object;

    .line 486
    invoke-direct {p0, p1, v5, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_19
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@HeaderMap parameter type must be Map."

    .line 482
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 499
    :cond_1a
    instance-of v0, p4, Le/b/c;

    if-eqz v0, :cond_1f

    .line 500
    iget-boolean v0, p0, Le/n$a;->o:Z

    if-eqz v0, :cond_1e

    .line 503
    check-cast p4, Le/b/c;

    .line 504
    invoke-interface {p4}, Le/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-interface {p4}, Le/b/c;->b()Z

    move-result p4

    .line 507
    iput-boolean v2, p0, Le/n$a;->g:Z

    .line 509
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 510
    const-class v5, Ljava/lang/Iterable;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 511
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1b

    .line 517
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 518
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 519
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 520
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 521
    new-instance p2, Le/i$b;

    invoke-direct {p2, v0, p1, p4}, Le/i$b;-><init>(Ljava/lang/String;Le/e;Z)V

    invoke-virtual {p2}, Le/i$b;->a()Le/i;

    move-result-object p1

    return-object p1

    .line 512
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 512
    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 522
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 523
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Le/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 524
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 525
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 526
    new-instance p2, Le/i$b;

    invoke-direct {p2, v0, p1, p4}, Le/i$b;-><init>(Ljava/lang/String;Le/e;Z)V

    invoke-virtual {p2}, Le/i$b;->b()Le/i;

    move-result-object p1

    return-object p1

    .line 528
    :cond_1d
    iget-object p1, p0, Le/n$a;->a:Le/m;

    .line 529
    invoke-virtual {p1, p2, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 530
    new-instance p2, Le/i$b;

    invoke-direct {p2, v0, p1, p4}, Le/i$b;-><init>(Ljava/lang/String;Le/e;Z)V

    return-object p2

    :cond_1e
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Field parameters can only be used with form encoding."

    .line 501
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 533
    :cond_1f
    instance-of v0, p4, Le/b/d;

    if-eqz v0, :cond_24

    .line 534
    iget-boolean v0, p0, Le/n$a;->o:Z

    if-eqz v0, :cond_23

    .line 537
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 538
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 541
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Le/o;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 542
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_21

    .line 546
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 547
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 548
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_20

    .line 551
    invoke-static {v2, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 552
    iget-object p2, p0, Le/n$a;->a:Le/m;

    .line 553
    invoke-virtual {p2, p1, p3}, Le/m;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 555
    iput-boolean v2, p0, Le/n$a;->g:Z

    .line 556
    new-instance p2, Le/i$c;

    check-cast p4, Le/b/d;

    invoke-interface {p4}, Le/b/d;->a()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Le/i$c;-><init>(Le/e;Z)V

    return-object p2

    .line 549
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_21
    new-array p2, v3, [Ljava/lang/Object;

    .line 543
    invoke-direct {p0, p1, v5, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_22
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameter type must be Map."

    .line 539
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_23
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    .line 535
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 558
    :cond_24
    instance-of v0, p4, Le/b/q;

    if-eqz v0, :cond_33

    .line 559
    iget-boolean v0, p0, Le/n$a;->p:Z

    if-eqz v0, :cond_32

    .line 562
    check-cast p4, Le/b/q;

    .line 563
    iput-boolean v2, p0, Le/n$a;->h:Z

    .line 565
    invoke-interface {p4}, Le/b/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 568
    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_27

    .line 569
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_26

    .line 575
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 576
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 577
    const-class p3, Lc/w$b;

    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 581
    sget-object p1, Le/i$k;->a:Le/i$k;

    invoke-virtual {p1}, Le/i$k;->a()Le/i;

    move-result-object p1

    return-object p1

    :cond_25
    new-array p2, v3, [Ljava/lang/Object;

    .line 578
    invoke-direct {p0, p1, p4, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 570
    :cond_26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 570
    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 582
    :cond_27
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 583
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 584
    const-class p3, Lc/w$b;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 588
    sget-object p1, Le/i$k;->a:Le/i$k;

    invoke-virtual {p1}, Le/i$k;->b()Le/i;

    move-result-object p1

    return-object p1

    :cond_28
    new-array p2, v3, [Ljava/lang/Object;

    .line 585
    invoke-direct {p0, p1, p4, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 589
    :cond_29
    const-class p2, Lc/w$b;

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 590
    sget-object p1, Le/i$k;->a:Le/i$k;

    return-object p1

    :cond_2a
    new-array p2, v3, [Ljava/lang/Object;

    .line 592
    invoke-direct {p0, p1, p4, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2b
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "Content-Disposition"

    aput-object v7, v6, v3

    .line 596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form-data; name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x2

    const-string v2, "Content-Transfer-Encoding"

    aput-object v2, v6, v0

    const/4 v0, 0x3

    .line 598
    invoke-interface {p4}, Le/b/q;->b()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v6, v0

    .line 597
    invoke-static {v6}, Lc/s;->a([Ljava/lang/String;)Lc/s;

    move-result-object p4

    .line 600
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_2e

    .line 601
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2d

    .line 607
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 608
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 609
    const-class v0, Lc/w$b;

    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 613
    iget-object p1, p0, Le/n$a;->a:Le/m;

    iget-object v0, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 614
    invoke-virtual {p1, p2, p3, v0}, Le/m;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 615
    new-instance p2, Le/i$f;

    invoke-direct {p2, p4, p1}, Le/i$f;-><init>(Lc/s;Le/e;)V

    invoke-virtual {p2}, Le/i$f;->a()Le/i;

    move-result-object p1

    return-object p1

    :cond_2c
    new-array p2, v3, [Ljava/lang/Object;

    .line 610
    invoke-direct {p0, p1, v2, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 602
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 602
    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 616
    :cond_2e
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 617
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Le/n;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 618
    const-class v0, Lc/w$b;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 622
    iget-object p1, p0, Le/n$a;->a:Le/m;

    iget-object v0, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 623
    invoke-virtual {p1, p2, p3, v0}, Le/m;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 624
    new-instance p2, Le/i$f;

    invoke-direct {p2, p4, p1}, Le/i$f;-><init>(Lc/s;Le/e;)V

    invoke-virtual {p2}, Le/i$f;->b()Le/i;

    move-result-object p1

    return-object p1

    :cond_2f
    new-array p2, v3, [Ljava/lang/Object;

    .line 619
    invoke-direct {p0, p1, v2, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 625
    :cond_30
    const-class v0, Lc/w$b;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 629
    iget-object p1, p0, Le/n$a;->a:Le/m;

    iget-object v0, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 630
    invoke-virtual {p1, p2, p3, v0}, Le/m;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 631
    new-instance p2, Le/i$f;

    invoke-direct {p2, p4, p1}, Le/i$f;-><init>(Lc/s;Le/e;)V

    return-object p2

    :cond_31
    new-array p2, v3, [Ljava/lang/Object;

    .line 626
    invoke-direct {p0, p1, v2, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_32
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    .line 560
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 635
    :cond_33
    instance-of v0, p4, Le/b/r;

    if-eqz v0, :cond_39

    .line 636
    iget-boolean v0, p0, Le/n$a;->p:Z

    if-eqz v0, :cond_38

    .line 639
    iput-boolean v2, p0, Le/n$a;->h:Z

    .line 640
    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 641
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 644
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Le/o;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 645
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_36

    .line 648
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 650
    invoke-static {v3, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 651
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_35

    .line 655
    invoke-static {v2, p2}, Le/o;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 656
    const-class v0, Lc/w$b;

    invoke-static {p2}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 661
    iget-object p1, p0, Le/n$a;->a:Le/m;

    iget-object v0, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    .line 662
    invoke-virtual {p1, p2, p3, v0}, Le/m;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1

    .line 664
    check-cast p4, Le/b/r;

    .line 665
    new-instance p2, Le/i$g;

    invoke-interface {p4}, Le/b/r;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Le/i$g;-><init>(Le/e;Ljava/lang/String;)V

    return-object p2

    :cond_34
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    .line 657
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 652
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@PartMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_36
    new-array p2, v3, [Ljava/lang/Object;

    .line 646
    invoke-direct {p0, p1, v5, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_37
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap parameter type must be Map."

    .line 642
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_38
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    .line 637
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 667
    :cond_39
    instance-of p4, p4, Le/b/a;

    if-eqz p4, :cond_3c

    .line 668
    iget-boolean p4, p0, Le/n$a;->o:Z

    if-nez p4, :cond_3b

    iget-boolean p4, p0, Le/n$a;->p:Z

    if-nez p4, :cond_3b

    .line 672
    iget-boolean p4, p0, Le/n$a;->i:Z

    if-nez p4, :cond_3a

    .line 678
    :try_start_0
    iget-object p4, p0, Le/n$a;->a:Le/m;

    iget-object v0, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Le/m;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    iput-boolean v2, p0, Le/n$a;->i:Z

    .line 684
    new-instance p2, Le/i$a;

    invoke-direct {p2, p1}, Le/i$a;-><init>(Le/e;)V

    return-object p2

    :catch_0
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @Body converter for %s"

    .line 681
    invoke-direct {p0, p3, p1, p2, p4}, Le/n$a;->a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3a
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Multiple @Body method annotations found."

    .line 673
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3b
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    .line 669
    invoke-direct {p0, p1, p3, p2}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    const/4 v0, 0x0

    .line 711
    invoke-direct {p0, v0, p1, p2}, Le/n$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (parameter #"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Le/n$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 715
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 716
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    for method "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/n$a;->b:Ljava/lang/reflect/Method;

    .line 718
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/n$a;->b:Ljava/lang/reflect/Method;

    .line 720
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .line 691
    sget-object v0, Le/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Le/n$a;->t:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 697
    iget-object v3, p0, Le/n$a;->q:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, p2, v0}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 692
    sget-object v3, Le/n;->a:Ljava/util/regex/Pattern;

    .line 693
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    .line 692
    invoke-direct {p0, p1, p2, v0}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 279
    iget-object v0, p0, Le/n$a;->m:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 283
    iput-object p1, p0, Le/n$a;->m:Ljava/lang/String;

    .line 284
    iput-boolean p3, p0, Le/n$a;->n:Z

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    .line 291
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 292
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v2

    .line 294
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 295
    sget-object p3, Le/n;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 296
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    .line 297
    invoke-direct {p0, p1, p2}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 302
    :cond_2
    :goto_0
    iput-object p2, p0, Le/n$a;->q:Ljava/lang/String;

    .line 303
    invoke-static {p2}, Le/n;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/n$a;->t:Ljava/util/Set;

    return-void

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    .line 280
    invoke-direct {p0, p1, p2}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/annotation/Annotation;)V
    .locals 4

    .line 239
    instance-of v0, p1, Le/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Le/b/b;

    invoke-interface {p1}, Le/b/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1, v1}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 241
    :cond_0
    instance-of v0, p1, Le/b/f;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Le/b/f;

    invoke-interface {p1}, Le/b/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, v0, p1, v1}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 243
    :cond_1
    instance-of v0, p1, Le/b/g;

    if-eqz v0, :cond_3

    .line 244
    check-cast p1, Le/b/g;

    invoke-interface {p1}, Le/b/g;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    const-class p1, Ljava/lang/Void;

    iget-object v0, p0, Le/n$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "HEAD method must use Void as response type."

    .line 246
    invoke-direct {p0, v0, p1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 248
    :cond_3
    instance-of v0, p1, Le/b/n;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 249
    check-cast p1, Le/b/n;

    invoke-interface {p1}, Le/b/n;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-direct {p0, v0, p1, v2}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 250
    :cond_4
    instance-of v0, p1, Le/b/o;

    if-eqz v0, :cond_5

    .line 251
    check-cast p1, Le/b/o;

    invoke-interface {p1}, Le/b/o;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-direct {p0, v0, p1, v2}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 252
    :cond_5
    instance-of v0, p1, Le/b/p;

    if-eqz v0, :cond_6

    .line 253
    check-cast p1, Le/b/p;

    invoke-interface {p1}, Le/b/p;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-direct {p0, v0, p1, v2}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 254
    :cond_6
    instance-of v0, p1, Le/b/m;

    if-eqz v0, :cond_7

    .line 255
    check-cast p1, Le/b/m;

    invoke-interface {p1}, Le/b/m;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-direct {p0, v0, p1, v1}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 256
    :cond_7
    instance-of v0, p1, Le/b/h;

    if-eqz v0, :cond_8

    .line 257
    check-cast p1, Le/b/h;

    .line 258
    invoke-interface {p1}, Le/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Le/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Le/b/h;->c()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Le/n$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 259
    :cond_8
    instance-of v0, p1, Le/b/k;

    if-eqz v0, :cond_a

    .line 260
    check-cast p1, Le/b/k;

    invoke-interface {p1}, Le/b/k;->a()[Ljava/lang/String;

    move-result-object p1

    .line 261
    array-length v0, p1

    if-eqz v0, :cond_9

    .line 264
    invoke-direct {p0, p1}, Le/n$a;->a([Ljava/lang/String;)Lc/s;

    move-result-object p1

    iput-object p1, p0, Le/n$a;->r:Lc/s;

    goto :goto_0

    :cond_9
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@Headers annotation is empty."

    .line 262
    invoke-direct {p0, v0, p1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 265
    :cond_a
    instance-of v0, p1, Le/b/l;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_c

    .line 266
    iget-boolean p1, p0, Le/n$a;->o:Z

    if-nez p1, :cond_b

    .line 269
    iput-boolean v2, p0, Le/n$a;->p:Z

    goto :goto_0

    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    .line 267
    invoke-direct {p0, v3, p1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 270
    :cond_c
    instance-of p1, p1, Le/b/e;

    if-eqz p1, :cond_e

    .line 271
    iget-boolean p1, p0, Le/n$a;->p:Z

    if-nez p1, :cond_d

    .line 274
    iput-boolean v2, p0, Le/n$a;->o:Z

    goto :goto_0

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    .line 272
    invoke-direct {p0, v3, p1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_e
    :goto_0
    return-void
.end method

.method private b()Le/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c<",
            "*>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Le/n$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 223
    invoke-static {v0}, Le/o;->d(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 227
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Le/n$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 232
    :try_start_0
    iget-object v4, p0, Le/n$a;->a:Le/m;

    invoke-virtual {v4, v0, v1}, Le/m;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Unable to create call adapter for %s"

    .line 234
    invoke-direct {p0, v1, v0, v2}, Le/n$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    .line 228
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 224
    invoke-direct {p0, v0, v1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private c()Le/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/e<",
            "Lc/ad;",
            "TT;>;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Le/n$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 704
    :try_start_0
    iget-object v1, p0, Le/n$a;->a:Le/m;

    iget-object v2, p0, Le/n$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Le/m;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 706
    iget-object v3, p0, Le/n$a;->f:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const-string v2, "Unable to create converter for %s"

    invoke-direct {p0, v0, v2, v1}, Le/n$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()Le/n;
    .locals 6

    .line 160
    invoke-direct {p0}, Le/n$a;->b()Le/c;

    move-result-object v0

    iput-object v0, p0, Le/n$a;->w:Le/c;

    .line 161
    invoke-interface {v0}, Le/c;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Le/n$a;->f:Ljava/lang/reflect/Type;

    .line 162
    const-class v1, Le/l;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const-class v1, Lc/ac;

    if-eq v0, v1, :cond_10

    .line 167
    invoke-direct {p0}, Le/n$a;->c()Le/e;

    move-result-object v0

    iput-object v0, p0, Le/n$a;->v:Le/e;

    .line 169
    iget-object v0, p0, Le/n$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 170
    invoke-direct {p0, v4}, Le/n$a;->a(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Le/n$a;->m:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 177
    iget-boolean v0, p0, Le/n$a;->n:Z

    if-nez v0, :cond_3

    .line 178
    iget-boolean v0, p0, Le/n$a;->p:Z

    if-nez v0, :cond_2

    .line 182
    iget-boolean v0, p0, Le/n$a;->o:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 183
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    .line 179
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 188
    :cond_3
    :goto_1
    iget-object v0, p0, Le/n$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 189
    new-array v1, v0, [Le/i;

    iput-object v1, p0, Le/n$a;->u:[Le/i;

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x1

    if-ge v1, v0, :cond_6

    .line 191
    iget-object v4, p0, Le/n$a;->e:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    .line 192
    invoke-static {v4}, Le/o;->d(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 197
    iget-object v3, p0, Le/n$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 202
    iget-object v5, p0, Le/n$a;->u:[Le/i;

    invoke-direct {p0, v1, v4, v3}, Le/n$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Le/i;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "No Retrofit annotation found."

    .line 199
    invoke-direct {p0, v1, v2, v0}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    .line 193
    invoke-direct {p0, v1, v2, v0}, Le/n$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 205
    :cond_6
    iget-object v0, p0, Le/n$a;->q:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Le/n$a;->l:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-array v0, v3, [Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Le/n$a;->m:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 208
    :cond_8
    :goto_3
    iget-boolean v0, p0, Le/n$a;->o:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Le/n$a;->p:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Le/n$a;->n:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Le/n$a;->i:Z

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    .line 209
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 211
    :cond_a
    :goto_4
    iget-boolean v0, p0, Le/n$a;->o:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Le/n$a;->g:Z

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    .line 212
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 214
    :cond_c
    :goto_5
    iget-boolean v0, p0, Le/n$a;->p:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Le/n$a;->h:Z

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    .line 215
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 218
    :cond_e
    :goto_6
    new-instance v0, Le/n;

    invoke-direct {v0, p0}, Le/n;-><init>(Le/n$a;)V

    return-object v0

    :cond_f
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    .line 174
    invoke-direct {p0, v1, v0}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 163
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/n$a;->f:Ljava/lang/reflect/Type;

    .line 164
    invoke-static {v1}, Le/o;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 163
    invoke-direct {p0, v0, v1}, Le/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
