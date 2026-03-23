.class public final Lc/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/c/d$b;,
        Lc/a/c/d$c;,
        Lc/a/c/d$a;
    }
.end annotation


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lc/y;

.field final b:Z

.field c:J

.field d:J

.field e:Lc/a/c/n;

.field final f:Lc/a/c/n;

.field final g:Lc/a/c/q;

.field final h:Ljava/net/Socket;

.field final i:Lc/a/c/c;

.field final j:Lc/a/c/d$c;

.field private final m:Lc/a/c/d$b;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/a/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lc/a/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lc/a/c/m;

.field private v:I

.field private w:Z

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 55
    const-class v0, Lc/a/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lc/a/c/d;->k:Z

    .line 69
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v2, "OkHttp FramedConnection"

    .line 71
    invoke-static {v2, v1}, Lc/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lc/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lc/a/c/d$a;)V
    .locals 14

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/c/d;->n:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lc/a/c/d;->c:J

    .line 113
    new-instance v0, Lc/a/c/n;

    invoke-direct {v0}, Lc/a/c/n;-><init>()V

    iput-object v0, p0, Lc/a/c/d;->e:Lc/a/c/n;

    .line 119
    new-instance v0, Lc/a/c/n;

    invoke-direct {v0}, Lc/a/c/n;-><init>()V

    iput-object v0, p0, Lc/a/c/d;->f:Lc/a/c/n;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lc/a/c/d;->w:Z

    .line 816
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lc/a/c/d;->x:Ljava/util/Set;

    .line 130
    invoke-static {p1}, Lc/a/c/d$a;->a(Lc/a/c/d$a;)Lc/y;

    move-result-object v1

    iput-object v1, p0, Lc/a/c/d;->a:Lc/y;

    .line 131
    invoke-static {p1}, Lc/a/c/d$a;->b(Lc/a/c/d$a;)Lc/a/c/m;

    move-result-object v1

    iput-object v1, p0, Lc/a/c/d;->u:Lc/a/c/m;

    .line 132
    invoke-static {p1}, Lc/a/c/d$a;->c(Lc/a/c/d$a;)Z

    move-result v1

    iput-boolean v1, p0, Lc/a/c/d;->b:Z

    .line 133
    invoke-static {p1}, Lc/a/c/d$a;->d(Lc/a/c/d$a;)Lc/a/c/d$b;

    move-result-object v1

    iput-object v1, p0, Lc/a/c/d;->m:Lc/a/c/d$b;

    .line 135
    invoke-static {p1}, Lc/a/c/d$a;->c(Lc/a/c/d$a;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lc/a/c/d;->q:I

    .line 136
    invoke-static {p1}, Lc/a/c/d$a;->c(Lc/a/c/d$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/a/c/d;->a:Lc/y;

    sget-object v4, Lc/y;->d:Lc/y;

    if-ne v1, v4, :cond_1

    .line 137
    iget v1, p0, Lc/a/c/d;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lc/a/c/d;->q:I

    .line 140
    :cond_1
    invoke-static {p1}, Lc/a/c/d$a;->c(Lc/a/c/d$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, p0, Lc/a/c/d;->v:I

    .line 146
    invoke-static {p1}, Lc/a/c/d$a;->c(Lc/a/c/d$a;)Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lc/a/c/d;->e:Lc/a/c/n;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v0, v4}, Lc/a/c/n;->a(III)Lc/a/c/n;

    .line 150
    :cond_3
    invoke-static {p1}, Lc/a/c/d$a;->e(Lc/a/c/d$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lc/a/c/d;->a:Lc/y;

    sget-object v4, Lc/y;->d:Lc/y;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_4

    .line 153
    new-instance v1, Lc/a/c/i;

    invoke-direct {v1}, Lc/a/c/i;-><init>()V

    iput-object v1, p0, Lc/a/c/d;->g:Lc/a/c/q;

    .line 155
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lc/a/c/d;->o:Ljava/lang/String;

    aput-object v6, v4, v0

    const-string v6, "OkHttp %s Push Observer"

    .line 157
    invoke-static {v6, v4}, Lc/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lc/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v13

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    .line 159
    iget-object v1, p0, Lc/a/c/d;->f:Lc/a/c/n;

    const v3, 0xffff

    invoke-virtual {v1, v2, v0, v3}, Lc/a/c/n;->a(III)Lc/a/c/n;

    .line 160
    iget-object v1, p0, Lc/a/c/d;->f:Lc/a/c/n;

    const/4 v2, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v1, v2, v0, v3}, Lc/a/c/n;->a(III)Lc/a/c/n;

    goto :goto_1

    .line 161
    :cond_4
    iget-object v0, p0, Lc/a/c/d;->a:Lc/y;

    sget-object v1, Lc/y;->c:Lc/y;

    if-ne v0, v1, :cond_5

    .line 162
    new-instance v0, Lc/a/c/o;

    invoke-direct {v0}, Lc/a/c/o;-><init>()V

    iput-object v0, p0, Lc/a/c/d;->g:Lc/a/c/q;

    .line 163
    iput-object v5, p0, Lc/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    .line 167
    :goto_1
    iget-object v0, p0, Lc/a/c/d;->f:Lc/a/c/n;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lc/a/c/n;->f(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lc/a/c/d;->d:J

    .line 168
    invoke-static {p1}, Lc/a/c/d$a;->f(Lc/a/c/d$a;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lc/a/c/d;->h:Ljava/net/Socket;

    .line 169
    iget-object v0, p0, Lc/a/c/d;->g:Lc/a/c/q;

    invoke-static {p1}, Lc/a/c/d$a;->g(Lc/a/c/d$a;)Ld/d;

    move-result-object v1

    iget-boolean v2, p0, Lc/a/c/d;->b:Z

    invoke-interface {v0, v1, v2}, Lc/a/c/q;->a(Ld/d;Z)Lc/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lc/a/c/d;->i:Lc/a/c/c;

    .line 171
    new-instance v0, Lc/a/c/d$c;

    iget-object v1, p0, Lc/a/c/d;->g:Lc/a/c/q;

    invoke-static {p1}, Lc/a/c/d$a;->h(Lc/a/c/d$a;)Ld/e;

    move-result-object p1

    iget-boolean v2, p0, Lc/a/c/d;->b:Z

    invoke-interface {v1, p1, v2}, Lc/a/c/q;->a(Ld/e;Z)Lc/a/c/b;

    move-result-object p1

    invoke-direct {v0, p0, p1, v5}, Lc/a/c/d$c;-><init>(Lc/a/c/d;Lc/a/c/b;Lc/a/c/d$1;)V

    iput-object v0, p0, Lc/a/c/d;->j:Lc/a/c/d$c;

    return-void

    .line 165
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lc/a/c/d;->a:Lc/y;

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method synthetic constructor <init>(Lc/a/c/d$a;Lc/a/c/d$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lc/a/c/d;-><init>(Lc/a/c/d$a;)V

    return-void
.end method

.method private a(ILjava/util/List;ZZ)Lc/a/c/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;ZZ)",
            "Lc/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x1

    xor-int/2addr p4, v7

    .line 235
    iget-object v8, p0, Lc/a/c/d;->i:Lc/a/c/c;

    monitor-enter v8

    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    iget-boolean v0, p0, Lc/a/c/d;->r:Z

    if-nez v0, :cond_6

    .line 240
    iget v9, p0, Lc/a/c/d;->q:I

    .line 241
    iget v0, p0, Lc/a/c/d;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/a/c/d;->q:I

    .line 242
    new-instance v10, Lc/a/c/e;

    move-object v0, v10

    move v1, v9

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc/a/c/e;-><init>(ILc/a/c/d;ZZLjava/util/List;)V

    if-eqz p3, :cond_1

    .line 243
    iget-wide v0, p0, Lc/a/c/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    iget-wide v0, v10, Lc/a/c/e;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 244
    :cond_1
    :goto_0
    invoke-virtual {v10}, Lc/a/c/e;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 245
    iget-object p3, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 249
    :try_start_2
    iget-object v0, p0, Lc/a/c/d;->i:Lc/a/c/c;

    move v1, v6

    move v2, p4

    move v3, v9

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lc/a/c/c;->a(ZZIILjava/util/List;)V

    goto :goto_1

    .line 251
    :cond_3
    iget-boolean p3, p0, Lc/a/c/d;->b:Z

    if-nez p3, :cond_5

    .line 254
    iget-object p3, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {p3, p1, v9, p2}, Lc/a/c/c;->a(IILjava/util/List;)V

    .line 256
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_4

    .line 259
    iget-object p1, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {p1}, Lc/a/c/c;->b()V

    :cond_4
    return-object v10

    .line 252
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    :cond_6
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 247
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 256
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method static synthetic a(Lc/a/c/d;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lc/a/c/d;->o:Ljava/lang/String;

    return-object p0
.end method

.method private a(ILd/e;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance v5, Ld/c;

    invoke-direct {v5}, Ld/c;-><init>()V

    int-to-long v0, p3

    .line 867
    invoke-interface {p2, v0, v1}, Ld/e;->a(J)V

    .line 868
    invoke-interface {p2, v5, v0, v1}, Ld/e;->a(Ld/c;J)J

    .line 869
    invoke-virtual {v5}, Ld/c;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 870
    iget-object p2, p0, Lc/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lc/a/c/d$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lc/a/c/d$6;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILd/c;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 869
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ld/c;->b()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;)V"
        }
    .end annotation

    .line 819
    monitor-enter p0

    .line 820
    :try_start_0
    iget-object v0, p0, Lc/a/c/d;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    sget-object p2, Lc/a/c/a;->b:Lc/a/c/a;

    invoke-virtual {p0, p1, p2}, Lc/a/c/d;->a(ILc/a/c/a;)V

    .line 822
    monitor-exit p0

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lc/a/c/d;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    iget-object v0, p0, Lc/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lc/a/c/d$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/a/c/d;->o:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lc/a/c/d$4;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 825
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;Z)V"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lc/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lc/a/c/d$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lc/a/c/d$5;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lc/a/c/a;Lc/a/c/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-boolean v0, Lc/a/c/d;->k:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 430
    :try_start_0
    invoke-virtual {p0, p1}, Lc/a/c/d;->a(Lc/a/c/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 437
    :goto_1
    monitor-enter p0

    .line 438
    :try_start_1
    iget-object v1, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 439
    iget-object v1, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lc/a/c/e;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc/a/c/e;

    .line 440
    iget-object v2, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 442
    :goto_2
    iget-object v2, p0, Lc/a/c/d;->t:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 443
    iget-object v2, p0, Lc/a/c/d;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lc/a/c/d;->t:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lc/a/c/l;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc/a/c/l;

    .line 444
    iput-object v0, p0, Lc/a/c/d;->t:Ljava/util/Map;

    move-object v0, v2

    .line 446
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 449
    array-length v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 451
    :try_start_2
    invoke-virtual {v5, p2}, Lc/a/c/e;->a(Lc/a/c/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    if-eqz p1, :cond_4

    move-object p1, v5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 459
    array-length p2, v0

    :goto_5
    if-ge v2, p2, :cond_6

    aget-object v1, v0, v2

    .line 460
    invoke-virtual {v1}, Lc/a/c/l;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 466
    :cond_6
    :try_start_3
    iget-object p2, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {p2}, Lc/a/c/c;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    if-nez p1, :cond_7

    move-object p1, p2

    .line 473
    :cond_7
    :goto_6
    :try_start_4
    iget-object p2, p0, Lc/a/c/d;->h:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p1

    :goto_7
    if-nez p1, :cond_8

    return-void

    .line 478
    :cond_8
    throw p1

    :catchall_0
    move-exception p1

    .line 446
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method static synthetic a(Lc/a/c/d;ILc/a/c/a;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lc/a/c/d;->c(ILc/a/c/a;)V

    return-void
.end method

.method static synthetic a(Lc/a/c/d;ILd/e;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/c/d;->a(ILd/e;IZ)V

    return-void
.end method

.method static synthetic a(Lc/a/c/d;ILjava/util/List;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lc/a/c/d;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lc/a/c/d;ILjava/util/List;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lc/a/c/d;->a(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lc/a/c/d;Lc/a/c/a;Lc/a/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lc/a/c/d;->a(Lc/a/c/a;Lc/a/c/a;)V

    return-void
.end method

.method static synthetic a(Lc/a/c/d;ZIILc/a/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/c/d;->b(ZIILc/a/c/l;)V

    return-void
.end method

.method private a(ZIILc/a/c/l;)V
    .locals 10

    .line 371
    sget-object v0, Lc/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lc/a/c/d$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lc/a/c/d$3;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ZIILc/a/c/l;)V

    .line 371
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lc/a/c/d;I)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lc/a/c/d;->d(I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lc/a/c/d;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lc/a/c/d;->w:Z

    return p1
.end method

.method static synthetic b(Lc/a/c/d;I)I
    .locals 0

    .line 55
    iput p1, p0, Lc/a/c/d;->p:I

    return p1
.end method

.method static synthetic b(Lc/a/c/d;ZIILc/a/c/l;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc/a/c/d;->a(ZIILc/a/c/l;)V

    return-void
.end method

.method private b(ZIILc/a/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lc/a/c/d;->i:Lc/a/c/c;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p4}, Lc/a/c/l;->a()V

    .line 386
    :cond_0
    iget-object p4, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {p4, p1, p2, p3}, Lc/a/c/c;->a(ZII)V

    .line 387
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lc/a/c/d;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lc/a/c/d;->r:Z

    return p0
.end method

.method static synthetic b(Lc/a/c/d;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lc/a/c/d;->r:Z

    return p1
.end method

.method static synthetic c(Lc/a/c/d;)I
    .locals 0

    .line 55
    iget p0, p0, Lc/a/c/d;->p:I

    return p0
.end method

.method private declared-synchronized c(I)Lc/a/c/l;
    .locals 1

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lc/a/c/d;->t:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/c/d;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/c/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lc/a/c/d;I)Lc/a/c/l;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lc/a/c/d;->c(I)Lc/a/c/l;

    move-result-object p0

    return-object p0
.end method

.method private c(ILc/a/c/a;)V
    .locals 8

    .line 887
    iget-object v0, p0, Lc/a/c/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lc/a/c/d$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lc/a/c/d$7;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILc/a/c/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lc/a/c/d;)I
    .locals 0

    .line 55
    iget p0, p0, Lc/a/c/d;->q:I

    return p0
.end method

.method private d(I)Z
    .locals 3

    .line 812
    iget-object v0, p0, Lc/a/c/d;->a:Lc/y;

    sget-object v1, Lc/y;->d:Lc/y;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/2addr p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic e(Lc/a/c/d;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lc/a/c/d;->n:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 55
    sget-object v0, Lc/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic f(Lc/a/c/d;)Lc/a/c/d$b;
    .locals 0

    .line 55
    iget-object p0, p0, Lc/a/c/d;->m:Lc/a/c/d$b;

    return-object p0
.end method

.method static synthetic g(Lc/a/c/d;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lc/a/c/d;->w:Z

    return p0
.end method

.method static synthetic h(Lc/a/c/d;)Lc/a/c/m;
    .locals 0

    .line 55
    iget-object p0, p0, Lc/a/c/d;->u:Lc/a/c/m;

    return-object p0
.end method

.method static synthetic i(Lc/a/c/d;)Ljava/util/Set;
    .locals 0

    .line 55
    iget-object p0, p0, Lc/a/c/d;->x:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method declared-synchronized a(I)Lc/a/c/e;
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;ZZ)Lc/a/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/a/c/f;",
            ">;ZZ)",
            "Lc/a/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0, p1, p2, p3}, Lc/a/c/d;->a(ILjava/util/List;ZZ)Lc/a/c/e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lc/y;
    .locals 1

    .line 176
    iget-object v0, p0, Lc/a/c/d;->a:Lc/y;

    return-object v0
.end method

.method a(IJ)V
    .locals 9

    .line 339
    sget-object v0, Lc/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lc/a/c/d$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lc/a/c/d$2;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILc/a/c/a;)V
    .locals 8

    .line 324
    sget-object v0, Lc/a/c/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lc/a/c/d$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lc/a/c/d;->o:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lc/a/c/d$1;-><init>(Lc/a/c/d;Ljava/lang/String;[Ljava/lang/Object;ILc/a/c/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(IZLd/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 285
    iget-object p4, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {p4, p2, p1, p3, v0}, Lc/a/c/c;->a(ZILd/c;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 291
    monitor-enter p0

    .line 293
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lc/a/c/d;->d:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 296
    iget-object v3, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 297
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_2
    :try_start_1
    iget-wide v3, p0, Lc/a/c/d;->d:J

    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 306
    iget-object v3, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {v3}, Lc/a/c/c;->c()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 307
    iget-wide v4, p0, Lc/a/c/d;->d:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lc/a/c/d;->d:J

    .line 308
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 311
    iget-object v4, p0, Lc/a/c/d;->i:Lc/a/c/c;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4, v5, p1, p3, v3}, Lc/a/c/c;->a(ZILd/c;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 302
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 308
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method a(J)V
    .locals 3

    .line 319
    iget-wide v0, p0, Lc/a/c/d;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lc/a/c/d;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public a(Lc/a/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lc/a/c/d;->i:Lc/a/c/c;

    monitor-enter v0

    .line 406
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :try_start_1
    iget-boolean v1, p0, Lc/a/c/d;->r:Z

    if-eqz v1, :cond_0

    .line 408
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 410
    :try_start_3
    iput-boolean v1, p0, Lc/a/c/d;->r:Z

    .line 411
    iget v1, p0, Lc/a/c/d;->p:I

    .line 412
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :try_start_4
    iget-object v2, p0, Lc/a/c/d;->i:Lc/a/c/c;

    sget-object v3, Lc/a/c;->a:[B

    invoke-interface {v2, v1, p1, v3}, Lc/a/c/c;->a(ILc/a/c/a;[B)V

    .line 415
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 412
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 415
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {p1}, Lc/a/c/c;->a()V

    .line 496
    iget-object p1, p0, Lc/a/c/d;->i:Lc/a/c/c;

    iget-object v0, p0, Lc/a/c/d;->e:Lc/a/c/n;

    invoke-interface {p1, v0}, Lc/a/c/c;->b(Lc/a/c/n;)V

    .line 497
    iget-object p1, p0, Lc/a/c/d;->e:Lc/a/c/n;

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Lc/a/c/n;->f(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 499
    iget-object v1, p0, Lc/a/c/d;->i:Lc/a/c/c;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lc/a/c/c;->a(IJ)V

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lc/a/c/d;->j:Lc/a/c/d$c;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lc/a/c/d;->f:Lc/a/c/n;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lc/a/c/n;->d(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(I)Lc/a/c/e;
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lc/a/c/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/c/e;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(ILc/a/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {v0, p1, p2}, Lc/a/c/c;->a(ILc/a/c/a;)V

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lc/a/c/d;->i:Lc/a/c/c;

    invoke-interface {v0}, Lc/a/c/c;->b()V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    sget-object v0, Lc/a/c/a;->a:Lc/a/c/a;

    sget-object v1, Lc/a/c/a;->l:Lc/a/c/a;

    invoke-direct {p0, v0, v1}, Lc/a/c/d;->a(Lc/a/c/a;Lc/a/c/a;)V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 486
    invoke-virtual {p0, v0}, Lc/a/c/d;->a(Z)V

    return-void
.end method
