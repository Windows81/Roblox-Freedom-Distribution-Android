.class public Lcom/c/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/t$d;,
        Lcom/c/a/t$a;,
        Lcom/c/a/t$b;,
        Lcom/c/a/t$e;,
        Lcom/c/a/t$f;,
        Lcom/c/a/t$c;
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field static volatile b:Lcom/c/a/t;


# instance fields
.field final c:Landroid/content/Context;

.field final d:Lcom/c/a/i;

.field final e:Lcom/c/a/d;

.field final f:Lcom/c/a/aa;

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lcom/c/a/h;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final j:Landroid/graphics/Bitmap$Config;

.field k:Z

.field volatile l:Z

.field m:Z

.field private final n:Lcom/c/a/t$c;

.field private final o:Lcom/c/a/t$f;

.field private final p:Lcom/c/a/t$b;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/c/a/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lcom/c/a/t$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/t$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/c/a/t;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/c/a/t;->b:Lcom/c/a/t;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/t$c;Lcom/c/a/t$f;Ljava/util/List;Lcom/c/a/aa;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/c/a/i;",
            "Lcom/c/a/d;",
            "Lcom/c/a/t$c;",
            "Lcom/c/a/t$f;",
            "Ljava/util/List<",
            "Lcom/c/a/y;",
            ">;",
            "Lcom/c/a/aa;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/c/a/t;->c:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/c/a/t;->d:Lcom/c/a/i;

    .line 169
    iput-object p3, p0, Lcom/c/a/t;->e:Lcom/c/a/d;

    .line 170
    iput-object p4, p0, Lcom/c/a/t;->n:Lcom/c/a/t$c;

    .line 171
    iput-object p5, p0, Lcom/c/a/t;->o:Lcom/c/a/t$f;

    .line 172
    iput-object p8, p0, Lcom/c/a/t;->j:Landroid/graphics/Bitmap$Config;

    if-eqz p6, :cond_0

    .line 175
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 176
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 p3, p3, 0x7

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    new-instance p3, Lcom/c/a/z;

    invoke-direct {p3, p1}, Lcom/c/a/z;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    .line 184
    invoke-interface {p4, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_1
    new-instance p3, Lcom/c/a/f;

    invoke-direct {p3, p1}, Lcom/c/a/f;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance p3, Lcom/c/a/o;

    invoke-direct {p3, p1}, Lcom/c/a/o;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance p3, Lcom/c/a/g;

    invoke-direct {p3, p1}, Lcom/c/a/g;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance p3, Lcom/c/a/b;

    invoke-direct {p3, p1}, Lcom/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance p3, Lcom/c/a/k;

    invoke-direct {p3, p1}, Lcom/c/a/k;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance p1, Lcom/c/a/r;

    iget-object p2, p2, Lcom/c/a/i;->d:Lcom/c/a/j;

    invoke-direct {p1, p2, p7}, Lcom/c/a/r;-><init>(Lcom/c/a/j;Lcom/c/a/aa;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/c/a/t;->q:Ljava/util/List;

    .line 194
    iput-object p7, p0, Lcom/c/a/t;->f:Lcom/c/a/aa;

    .line 195
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/c/a/t;->g:Ljava/util/Map;

    .line 196
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/c/a/t;->h:Ljava/util/Map;

    .line 197
    iput-boolean p9, p0, Lcom/c/a/t;->k:Z

    .line 198
    iput-boolean p10, p0, Lcom/c/a/t;->l:Z

    .line 199
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/c/a/t;->i:Ljava/lang/ref/ReferenceQueue;

    .line 200
    new-instance p1, Lcom/c/a/t$b;

    iget-object p2, p0, Lcom/c/a/t;->i:Ljava/lang/ref/ReferenceQueue;

    sget-object p3, Lcom/c/a/t;->a:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/c/a/t$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/c/a/t;->p:Lcom/c/a/t$b;

    .line 201
    invoke-virtual {p1}, Lcom/c/a/t$b;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/c/a/t;
    .locals 2

    .line 659
    sget-object v0, Lcom/c/a/t;->b:Lcom/c/a/t;

    if-nez v0, :cond_1

    .line 660
    const-class v0, Lcom/c/a/t;

    monitor-enter v0

    .line 661
    :try_start_0
    sget-object v1, Lcom/c/a/t;->b:Lcom/c/a/t;

    if-nez v1, :cond_0

    .line 662
    new-instance v1, Lcom/c/a/t$a;

    invoke-direct {v1, p0}, Lcom/c/a/t$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/c/a/t$a;->a()Lcom/c/a/t;

    move-result-object p0

    sput-object p0, Lcom/c/a/t;->b:Lcom/c/a/t;

    .line 664
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 666
    :cond_1
    :goto_0
    sget-object p0, Lcom/c/a/t;->b:Lcom/c/a/t;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V
    .locals 2

    .line 548
    invoke-virtual {p3}, Lcom/c/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-virtual {p3}, Lcom/c/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/c/a/t;->g:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/c/a/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 558
    invoke-virtual {p3, p1, p2}, Lcom/c/a/a;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V

    .line 559
    iget-boolean p1, p0, Lcom/c/a/t;->l:Z

    if-eqz p1, :cond_4

    .line 560
    iget-object p1, p3, Lcom/c/a/a;->b:Lcom/c/a/w;

    invoke-virtual {p1}, Lcom/c/a/w;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 563
    :cond_3
    invoke-virtual {p3}, Lcom/c/a/a;->a()V

    .line 564
    iget-boolean p1, p0, Lcom/c/a/t;->l:Z

    if-eqz p1, :cond_4

    .line 565
    iget-object p1, p3, Lcom/c/a/a;->b:Lcom/c/a/w;

    invoke-virtual {p1}, Lcom/c/a/w;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errored"

    invoke-static {v0, p2, p1}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/c/a/t;Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/c/a/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .line 571
    invoke-static {}, Lcom/c/a/ae;->a()V

    .line 572
    iget-object v0, p0, Lcom/c/a/t;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/c/a/a;->b()V

    .line 575
    iget-object v1, p0, Lcom/c/a/t;->d:Lcom/c/a/i;

    invoke-virtual {v1, v0}, Lcom/c/a/i;->b(Lcom/c/a/a;)V

    .line 577
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 578
    check-cast p1, Landroid/widget/ImageView;

    .line 579
    iget-object v0, p0, Lcom/c/a/t;->h:Ljava/util/Map;

    .line 580
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/a/h;

    if-eqz p1, :cond_1

    .line 582
    invoke-virtual {p1}, Lcom/c/a/h;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method a(Lcom/c/a/w;)Lcom/c/a/w;
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/c/a/t;->o:Lcom/c/a/t$f;

    invoke-interface {v0, p1}, Lcom/c/a/t$f;->a(Lcom/c/a/w;)Lcom/c/a/w;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request transformer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/c/a/t;->o:Lcom/c/a/t$f;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/net/Uri;)Lcom/c/a/x;
    .locals 2

    .line 273
    new-instance v0, Lcom/c/a/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/c/a/x;-><init>(Lcom/c/a/t;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/c/a/x;
    .locals 2

    if-nez p1, :cond_0

    .line 294
    new-instance p1, Lcom/c/a/x;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/c/a/x;-><init>(Lcom/c/a/t;Landroid/net/Uri;I)V

    return-object p1

    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/c/a/t;->a(Landroid/net/Uri;)Lcom/c/a/x;

    move-result-object p1

    return-object p1

    .line 297
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/c/a/y;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/c/a/t;->q:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/c/a/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method a(Landroid/widget/ImageView;Lcom/c/a/h;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/c/a/t;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lcom/c/a/a;)V
    .locals 2

    .line 470
    invoke-virtual {p1}, Lcom/c/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/c/a/t;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 473
    invoke-direct {p0, v0}, Lcom/c/a/t;->a(Ljava/lang/Object;)V

    .line 474
    iget-object v1, p0, Lcom/c/a/t;->g:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    invoke-virtual {p0, p1}, Lcom/c/a/t;->b(Lcom/c/a/a;)V

    return-void
.end method

.method a(Lcom/c/a/c;)V
    .locals 7

    .line 494
    invoke-virtual {p1}, Lcom/c/a/c;->i()Lcom/c/a/a;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lcom/c/a/c;->k()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 497
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-void

    .line 504
    :cond_3
    invoke-virtual {p1}, Lcom/c/a/c;->h()Lcom/c/a/w;

    move-result-object v2

    iget-object v2, v2, Lcom/c/a/w;->d:Landroid/net/Uri;

    .line 505
    invoke-virtual {p1}, Lcom/c/a/c;->l()Ljava/lang/Exception;

    move-result-object v5

    .line 506
    invoke-virtual {p1}, Lcom/c/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 507
    invoke-virtual {p1}, Lcom/c/a/c;->m()Lcom/c/a/t$d;

    move-result-object p1

    if-eqz v0, :cond_4

    .line 510
    invoke-direct {p0, v6, p1, v0}, Lcom/c/a/t;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 515
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 516
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/c/a/a;

    .line 517
    invoke-direct {p0, v6, p1, v4}, Lcom/c/a/t;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 521
    :cond_5
    iget-object p1, p0, Lcom/c/a/t;->n:Lcom/c/a/t$c;

    if-eqz p1, :cond_6

    if-eqz v5, :cond_6

    .line 522
    invoke-interface {p1, p0, v2, v5}, Lcom/c/a/t$c;->a(Lcom/c/a/t;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_6
    return-void
.end method

.method b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/c/a/t;->e:Lcom/c/a/d;

    invoke-interface {v0, p1}, Lcom/c/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/c/a/t;->f:Lcom/c/a/aa;

    invoke-virtual {v0}, Lcom/c/a/aa;->a()V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/c/a/t;->f:Lcom/c/a/aa;

    invoke-virtual {v0}, Lcom/c/a/aa;->b()V

    :goto_0
    return-object p1
.end method

.method b(Lcom/c/a/a;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/c/a/t;->d:Lcom/c/a/i;

    invoke-virtual {v0, p1}, Lcom/c/a/i;->a(Lcom/c/a/a;)V

    return-void
.end method

.method c(Lcom/c/a/a;)V
    .locals 3

    .line 528
    iget v0, p1, Lcom/c/a/a;->e:I

    invoke-static {v0}, Lcom/c/a/p;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/c/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/t;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Main"

    if-eqz v0, :cond_1

    .line 534
    sget-object v2, Lcom/c/a/t$d;->a:Lcom/c/a/t$d;

    invoke-direct {p0, v0, v2, p1}, Lcom/c/a/t;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V

    .line 535
    iget-boolean v0, p0, Lcom/c/a/t;->l:Z

    if-eqz v0, :cond_2

    .line 536
    iget-object p1, p1, Lcom/c/a/a;->b:Lcom/c/a/w;

    invoke-virtual {p1}, Lcom/c/a/w;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/c/a/t$d;->a:Lcom/c/a/t$d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "completed"

    invoke-static {v1, v2, p1, v0}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :cond_1
    invoke-virtual {p0, p1}, Lcom/c/a/t;->a(Lcom/c/a/a;)V

    .line 541
    iget-boolean v0, p0, Lcom/c/a/t;->l:Z

    if-eqz v0, :cond_2

    .line 542
    iget-object p1, p1, Lcom/c/a/a;->b:Lcom/c/a/w;

    invoke-virtual {p1}, Lcom/c/a/w;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resumed"

    invoke-static {v1, v0, p1}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
