.class public abstract Lcom/google/a/a/e;
.super Lcom/google/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/e$a;
    }
.end annotation


# static fields
.field static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:J

.field private static v:Lcom/google/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/a/a/e;->u:J

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/a/a/e;->d:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/a/d;-><init>(Landroid/content/Context;Lcom/google/a/a/i;Lcom/google/a/a/j;)V

    .line 119
    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 263
    sget-object v0, Lcom/google/a/a/e;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 267
    :cond_0
    sget-object v0, Lcom/google/a/a/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 379
    sget-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;

    .line 395
    :goto_0
    return-object v0

    .line 383
    :cond_0
    sget-object v0, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 388
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 389
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 390
    if-nez v0, :cond_2

    .line 391
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 394
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/a/a/i;->a([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/google/a/a/e;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/google/a/a/e;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 327
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 332
    :catch_1
    move-exception v0

    .line 333
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/a/a/i;)V
    .locals 4

    .prologue
    .line 92
    const-class v1, Lcom/google/a/a/e;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/a/a/e;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 95
    :try_start_1
    new-instance v0, Lcom/google/a/a/k;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/google/a/a/k;-><init>(Lcom/google/a/a/i;Ljava/security/SecureRandom;)V

    sput-object v0, Lcom/google/a/a/e;->v:Lcom/google/a/a/k;

    .line 98
    sput-object p0, Lcom/google/a/a/e;->r:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/google/a/a/e;->k(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/google/a/a/e;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/a/a/e;->u:J

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/a/a/e;->d:Z
    :try_end_1
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static b()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 276
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static b(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 435
    sget-object v0, Lcom/google/a/a/e;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/google/a/a/e;->t:Ljava/lang/String;

    .line 450
    :goto_0
    return-object v0

    .line 439
    :cond_0
    sget-object v0, Lcom/google/a/a/e;->k:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 444
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 445
    if-nez v0, :cond_2

    .line 446
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 449
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/a/a/i;->a([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/e;->t:Ljava/lang/String;

    .line 450
    sget-object v0, Lcom/google/a/a/e;->t:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 454
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 517
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/a/a/e;->v:Lcom/google/a/a/k;

    .line 518
    invoke-virtual {v1, p0, p1}, Lcom/google/a/a/k;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/k$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 522
    :catch_1
    move-exception v0

    .line 523
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 310
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 313
    :catch_1
    move-exception v0

    .line 314
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static d()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 459
    sget-object v0, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 464
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 467
    :catch_1
    move-exception v0

    .line 468
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 286
    sget-object v0, Lcom/google/a/a/e;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 291
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 299
    :catch_1
    move-exception v0

    .line 300
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :cond_1
    return-object v0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 339
    sget-object v0, Lcom/google/a/a/e;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 344
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->n:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 348
    :catch_1
    move-exception v0

    .line 349
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static f(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/google/a/a/e;->o:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 359
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    return-object v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 363
    :catch_1
    move-exception v0

    .line 364
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static g(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Lcom/google/a/a/e;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 411
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 412
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 413
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 414
    :cond_1
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 419
    :catch_1
    move-exception v0

    .line 420
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 416
    :cond_2
    return-object v0
.end method

.method static h(Landroid/content/Context;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 473
    sget-object v0, Lcom/google/a/a/e;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 478
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 481
    :catch_1
    move-exception v0

    .line 482
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static i(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lcom/google/a/a/e;->p:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 492
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->p:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 495
    :catch_1
    move-exception v0

    .line 496
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static j(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 501
    sget-object v0, Lcom/google/a/a/e;->q:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/google/a/a/e$a;

    invoke-direct {v0}, Lcom/google/a/a/e$a;-><init>()V

    throw v0

    .line 506
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/a/a/e;->q:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 509
    :catch_1
    move-exception v0

    .line 510
    new-instance v1, Lcom/google/a/a/e$a;

    invoke-direct {v1, v0}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static k(Landroid/content/Context;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/a/e$a;
        }
    .end annotation

    .prologue
    .line 540
    :try_start_0
    sget-object v2, Lcom/google/a/a/e;->v:Lcom/google/a/a/k;

    invoke-static {}, Lcom/google/a/a/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/a/a/k;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 543
    sget-object v2, Lcom/google/a/a/e;->v:Lcom/google/a/a/k;

    invoke-static {}, Lcom/google/a/a/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/a/a/k;->a([BLjava/lang/String;)[B

    move-result-object v5

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 547
    if-nez v2, :cond_0

    .line 552
    const-string v2, "dex"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 553
    if-nez v2, :cond_0

    .line 554
    new-instance v2, Lcom/google/a/a/e$a;

    invoke-direct {v2}, Lcom/google/a/a/e$a;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/a/a/k$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 636
    :catch_0
    move-exception v2

    .line 637
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    move-object v3, v2

    .line 559
    :try_start_1
    const-string v2, "ads"

    const-string v6, ".jar"

    invoke-static {v2, v6, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 560
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 561
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v2, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 562
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/a/a/k$a; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    .line 566
    :try_start_2
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 567
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v5, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 572
    invoke-static {}, Lcom/google/a/a/m;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 574
    invoke-static {}, Lcom/google/a/a/m;->y()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 576
    invoke-static {}, Lcom/google/a/a/m;->s()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 575
    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 578
    invoke-static {}, Lcom/google/a/a/m;->o()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 577
    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 580
    invoke-static {}, Lcom/google/a/a/m;->A()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 579
    invoke-virtual {v2, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 582
    invoke-static {}, Lcom/google/a/a/m;->m()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 581
    invoke-virtual {v2, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 584
    invoke-static {}, Lcom/google/a/a/m;->w()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 583
    invoke-virtual {v2, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 586
    invoke-static {}, Lcom/google/a/a/m;->u()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 585
    invoke-virtual {v2, v13}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 588
    invoke-static {}, Lcom/google/a/a/m;->i()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 587
    invoke-virtual {v2, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 590
    invoke-static {}, Lcom/google/a/a/m;->g()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 589
    invoke-virtual {v2, v15}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 592
    invoke-static {}, Lcom/google/a/a/m;->e()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 591
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v16

    .line 594
    invoke-static {}, Lcom/google/a/a/m;->q()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 593
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 596
    invoke-static {}, Lcom/google/a/a/m;->c()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 595
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 600
    invoke-static {}, Lcom/google/a/a/m;->l()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 599
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->e:Ljava/lang/reflect/Method;

    .line 602
    invoke-static {}, Lcom/google/a/a/m;->z()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    .line 601
    move-object/from16 v0, v18

    invoke-virtual {v7, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->f:Ljava/lang/reflect/Method;

    .line 604
    invoke-static {}, Lcom/google/a/a/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    .line 603
    invoke-virtual {v8, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->g:Ljava/lang/reflect/Method;

    .line 606
    invoke-static {}, Lcom/google/a/a/m;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v7, v8

    .line 605
    invoke-virtual {v9, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->h:Ljava/lang/reflect/Method;

    .line 608
    invoke-static {}, Lcom/google/a/a/m;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v7, v8

    .line 607
    invoke-virtual {v10, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->i:Ljava/lang/reflect/Method;

    .line 611
    invoke-static {}, Lcom/google/a/a/m;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 610
    invoke-virtual {v11, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->j:Ljava/lang/reflect/Method;

    .line 613
    invoke-static {}, Lcom/google/a/a/m;->x()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 612
    invoke-virtual {v12, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->k:Ljava/lang/reflect/Method;

    .line 615
    invoke-static {}, Lcom/google/a/a/m;->v()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 614
    invoke-virtual {v13, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->l:Ljava/lang/reflect/Method;

    .line 617
    invoke-static {}, Lcom/google/a/a/m;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 616
    invoke-virtual {v14, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->m:Ljava/lang/reflect/Method;

    .line 619
    invoke-static {}, Lcom/google/a/a/m;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 618
    invoke-virtual {v15, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->n:Ljava/lang/reflect/Method;

    .line 622
    invoke-static {}, Lcom/google/a/a/m;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 621
    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->o:Ljava/lang/reflect/Method;

    .line 625
    invoke-static {}, Lcom/google/a/a/m;->r()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    .line 624
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/a/a/e;->p:Ljava/lang/reflect/Method;

    .line 628
    invoke-static {}, Lcom/google/a/a/m;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/a/a/e;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v7

    .line 627
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/google/a/a/e;->q:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 634
    new-instance v4, Ljava/io/File;

    const-string v5, ".jar"

    const-string v6, ".dex"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 653
    return-void

    .line 632
    :catchall_0
    move-exception v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 633
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 634
    new-instance v5, Ljava/io/File;

    const-string v6, ".jar"

    const-string v7, ".dex"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 635
    throw v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/a/a/k$a; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 638
    :catch_1
    move-exception v2

    .line 639
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 640
    :catch_2
    move-exception v2

    .line 641
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 642
    :catch_3
    move-exception v2

    .line 643
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 644
    :catch_4
    move-exception v2

    .line 645
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 646
    :catch_5
    move-exception v2

    .line 651
    new-instance v3, Lcom/google/a/a/e$a;

    invoke-direct {v3, v2}, Lcom/google/a/a/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 125
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/a/a/e;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 138
    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V

    .line 140
    sget-wide v2, Lcom/google/a/a/e;->u:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 141
    const/16 v2, 0x11

    sget-wide v4, Lcom/google/a/a/e;->u:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V

    .line 142
    const/16 v0, 0x17

    sget-wide v2, Lcom/google/a/a/e;->u:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_2
    .catch Lcom/google/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :cond_0
    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/google/a/a/e;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 150
    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/a/a/e;->a(IJ)V

    .line 151
    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_3
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 157
    :goto_3
    const/16 v0, 0x21

    :try_start_4
    invoke-static {}, Lcom/google/a/a/e;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_4
    .catch Lcom/google/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    :goto_4
    const/16 v0, 0x1b

    :try_start_5
    iget-object v1, p0, Lcom/google/a/a/e;->c:Lcom/google/a/a/i;

    invoke-static {p1, v1}, Lcom/google/a/a/e;->a(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/a/a/e$a; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 169
    :goto_5
    const/16 v0, 0x1d

    :try_start_6
    iget-object v1, p0, Lcom/google/a/a/e;->c:Lcom/google/a/a/i;

    invoke-static {p1, v1}, Lcom/google/a/a/e;->b(Landroid/content/Context;Lcom/google/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/google/a/a/e$a; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 175
    :goto_6
    :try_start_7
    invoke-static {p1}, Lcom/google/a/a/e;->h(Landroid/content/Context;)[I

    move-result-object v0

    .line 176
    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V

    .line 177
    const/4 v1, 0x6

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_7
    .catch Lcom/google/a/a/e$a; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 183
    :goto_7
    :try_start_8
    invoke-static {p1}, Lcom/google/a/a/e;->i(Landroid/content/Context;)I

    move-result v0

    .line 184
    const/16 v1, 0xc

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_8
    .catch Lcom/google/a/a/e$a; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 190
    :goto_8
    :try_start_9
    invoke-static {p1}, Lcom/google/a/a/e;->j(Landroid/content/Context;)I

    move-result v0

    .line 191
    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_9
    .catch Lcom/google/a/a/e$a; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 197
    :goto_9
    const/16 v0, 0x22

    :try_start_a
    invoke-static {p1}, Lcom/google/a/a/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_a
    .catch Lcom/google/a/a/e$a; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 203
    :goto_a
    const/16 v0, 0x23

    :try_start_b
    invoke-static {p1}, Lcom/google/a/a/e;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_b
    .catch Lcom/google/a/a/e$a; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 210
    :goto_b
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_b

    .line 204
    :catch_1
    move-exception v0

    goto :goto_b

    .line 198
    :catch_2
    move-exception v0

    goto :goto_a

    .line 192
    :catch_3
    move-exception v0

    goto :goto_9

    .line 185
    :catch_4
    move-exception v0

    goto :goto_8

    .line 178
    :catch_5
    move-exception v0

    goto :goto_7

    .line 170
    :catch_6
    move-exception v0

    goto :goto_6

    .line 164
    :catch_7
    move-exception v0

    goto :goto_5

    .line 158
    :catch_8
    move-exception v0

    goto :goto_4

    .line 152
    :catch_9
    move-exception v0

    goto :goto_3

    .line 144
    :catch_a
    move-exception v0

    goto/16 :goto_2

    .line 132
    :catch_b
    move-exception v0

    goto/16 :goto_1

    .line 126
    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method

.method protected c(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 216
    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/google/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/e$a; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/a/a/e$a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :goto_1
    const/16 v0, 0x19

    :try_start_2
    invoke-static {}, Lcom/google/a/a/e;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_2
    .catch Lcom/google/a/a/e$a; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/google/a/a/e;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/a/a/e;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/a/a/e;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    .line 235
    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/a/a/e;->a(IJ)V

    .line 236
    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/a/a/e;->a(IJ)V

    .line 237
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 239
    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_3
    .catch Lcom/google/a/a/e$a; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 246
    :cond_0
    :goto_3
    const/16 v0, 0x22

    :try_start_4
    invoke-static {p1}, Lcom/google/a/a/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/a/a/e;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/a/a/e$a; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    :goto_4
    const/16 v0, 0x23

    :try_start_5
    invoke-static {p1}, Lcom/google/a/a/e;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/e;->a(IJ)V
    :try_end_5
    .catch Lcom/google/a/a/e$a; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 259
    :goto_5
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_5

    .line 253
    :catch_1
    move-exception v0

    goto :goto_5

    .line 247
    :catch_2
    move-exception v0

    goto :goto_4

    .line 241
    :catch_3
    move-exception v0

    goto :goto_3

    .line 229
    :catch_4
    move-exception v0

    goto :goto_2

    .line 223
    :catch_5
    move-exception v0

    goto :goto_1

    .line 217
    :catch_6
    move-exception v0

    goto :goto_0
.end method
