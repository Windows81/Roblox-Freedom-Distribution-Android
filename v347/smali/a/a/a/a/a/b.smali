.class public La/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/b/b",
            "<",
            "La/a/a/a/a/d;",
            "La/a/a/a/a/d;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    .line 225
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "La/a/a/a/b/b",
            "<",
            "La/a/a/a/a/d;",
            "La/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, La/a/a/a/a/d;

    invoke-direct {v0, p0}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    .line 137
    new-instance v1, La/a/a/a/a/d;

    invoke-direct {v1, p1}, La/a/a/a/a/d;-><init>(Ljava/lang/Object;)V

    .line 138
    invoke-static {v0, v1}, La/a/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "La/a/a/a/b/b",
            "<",
            "La/a/a/a/a/d;",
            "La/a/a/a/a/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/b;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "La/a/a/a/a/b;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {p0, p1}, La/a/a/a/a/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, La/a/a/a/a/b;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 408
    const/4 v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 409
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    iget-boolean v2, p3, La/a/a/a/a/b;->b:Z

    if-eqz v2, :cond_3

    .line 410
    aget-object v2, v1, v0

    .line 411
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, v3}, La/a/a/a/a;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 412
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    if-nez p4, :cond_1

    .line 413
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 414
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 416
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v3, v2}, La/a/a/a/a/b;->e(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    .line 420
    :try_start_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, La/a/a/a/a/b;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-static {p0, p1}, La/a/a/a/a/b;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 331
    if-ne p0, p1, :cond_0

    .line 332
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    .line 334
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v6

    .line 335
    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 346
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 360
    :cond_3
    :goto_1
    new-instance v3, La/a/a/a/a/b;

    invoke-direct {v3}, La/a/a/a/a/b;-><init>()V

    .line 362
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {v3, p0, p1}, La/a/a/a/a/b;->e(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_4
    invoke-virtual {v3}, La/a/a/a/a/b;->b()Z

    move-result v0

    goto :goto_0

    .line 350
    :cond_5
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v2, v0

    .line 354
    goto :goto_1

    :cond_6
    move v0, v6

    .line 358
    goto :goto_0

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 365
    :try_start_1
    invoke-static/range {v0 .. v5}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/b;Z[Ljava/lang/String;)V

    .line 366
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    .line 367
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 368
    invoke-static/range {v0 .. v5}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;La/a/a/a/a/b;Z[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 371
    :catch_0
    move-exception v0

    move v0, v6

    .line 377
    goto :goto_0

    :cond_8
    move-object v2, v0

    goto :goto_1
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 155
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 156
    invoke-static {p0, p1}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, La/a/a/a/b/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, La/a/a/a/b/b;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, La/a/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v2

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 173
    const-class v1, La/a/a/a/a/b;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 177
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 180
    invoke-static {p0, p1}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    return-void

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 197
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    invoke-static {p0, p1}, La/a/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/b/b;

    move-result-object v1

    .line 200
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    const-class v1, La/a/a/a/a/b;

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-static {}, La/a/a/a/a/b;->a()Ljava/util/Set;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, La/a/a/a/a/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 207
    :cond_0
    monitor-exit v1

    .line 209
    :cond_1
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(BB)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-object p0

    .line 575
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(CC)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-object p0

    .line 560
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(DD)La/a/a/a/a/b;
    .locals 5

    .prologue
    .line 593
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a(FF)La/a/a/a/a/b;
    .locals 2

    .prologue
    .line 613
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    move-result-object p0

    goto :goto_0
.end method

.method public a(II)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-object p0

    .line 530
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(JJ)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-object p0

    .line 515
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(SS)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-object p0

    .line 545
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(ZZ)La/a/a/a/a/b;
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-object p0

    .line 630
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a([B[B)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-object p0

    .line 803
    :cond_1
    if-eq p1, p2, :cond_0

    .line 806
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 807
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 810
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 811
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 814
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 815
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(BB)La/a/a/a/a/b;

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([C[C)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 769
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-object p0

    .line 772
    :cond_1
    if-eq p1, p2, :cond_0

    .line 775
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 776
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 779
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 780
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 783
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 784
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(CC)La/a/a/a/a/b;

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([D[D)La/a/a/a/a/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 831
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-object p0

    .line 834
    :cond_1
    if-eq p1, p2, :cond_0

    .line 837
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 838
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 841
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 842
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 845
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 846
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(DD)La/a/a/a/a/b;

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([F[F)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 862
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-object p0

    .line 865
    :cond_1
    if-eq p1, p2, :cond_0

    .line 868
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 869
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 872
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 873
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 876
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 877
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(FF)La/a/a/a/a/b;

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([I[I)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-object p0

    .line 710
    :cond_1
    if-eq p1, p2, :cond_0

    .line 713
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 714
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 717
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 718
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 721
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 722
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(II)La/a/a/a/a/b;

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([J[J)La/a/a/a/a/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 676
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-object p0

    .line 679
    :cond_1
    if-eq p1, p2, :cond_0

    .line 682
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 683
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 686
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 687
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 690
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 691
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, La/a/a/a/a/b;->a(JJ)La/a/a/a/a/b;

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 645
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-object p0

    .line 648
    :cond_1
    if-eq p1, p2, :cond_0

    .line 651
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 652
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 655
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 656
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 659
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 660
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->e(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([S[S)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 738
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-object p0

    .line 741
    :cond_1
    if-eq p1, p2, :cond_0

    .line 744
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 745
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 748
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 749
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 752
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 753
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(SS)La/a/a/a/a/b;

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a([Z[Z)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 893
    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-nez v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object p0

    .line 896
    :cond_1
    if-eq p1, p2, :cond_0

    .line 899
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 900
    :cond_2
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 903
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 904
    invoke-virtual {p0, v0}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 907
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, La/a/a/a/a/b;->b:Z

    if-eqz v1, :cond_0

    .line 908
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, La/a/a/a/a/b;->a(ZZ)La/a/a/a/a/b;

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 944
    iput-boolean p1, p0, La/a/a/a/a/b;->b:Z

    .line 945
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    return v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)La/a/a/a/a/b;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-boolean v0, p0, La/a/a/a/a/b;->b:Z

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object p0

    .line 460
    :cond_1
    if-eq p1, p2, :cond_0

    .line 463
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 464
    :cond_2
    invoke-virtual {p0, v2}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, La/a/a/a/a/b;->b:Z

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 473
    invoke-virtual {p0, v2}, La/a/a/a/a/b;->a(Z)V

    goto :goto_0

    .line 477
    :cond_5
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    .line 478
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([J[J)La/a/a/a/a/b;

    goto :goto_0

    .line 479
    :cond_6
    instance-of v0, p1, [I

    if-eqz v0, :cond_7

    .line 480
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([I[I)La/a/a/a/a/b;

    goto :goto_0

    .line 481
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    .line 482
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([S[S)La/a/a/a/a/b;

    goto :goto_0

    .line 483
    :cond_8
    instance-of v0, p1, [C

    if-eqz v0, :cond_9

    .line 484
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([C[C)La/a/a/a/a/b;

    goto :goto_0

    .line 485
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 486
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([B[B)La/a/a/a/a/b;

    goto :goto_0

    .line 487
    :cond_a
    instance-of v0, p1, [D

    if-eqz v0, :cond_b

    .line 488
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([D[D)La/a/a/a/a/b;

    goto/16 :goto_0

    .line 489
    :cond_b
    instance-of v0, p1, [F

    if-eqz v0, :cond_c

    .line 490
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([F[F)La/a/a/a/a/b;

    goto/16 :goto_0

    .line 491
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 492
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([Z[Z)La/a/a/a/a/b;

    goto/16 :goto_0

    .line 495
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)La/a/a/a/a/b;

    goto/16 :goto_0
.end method
