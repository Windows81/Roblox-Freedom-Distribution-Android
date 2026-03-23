.class public La/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/e/b;


# static fields
.field private static a:Z = false

.field private static b:Ljava/util/Timer;


# instance fields
.field private final transient c:Ljava/lang/String;

.field private d:La/a/e/a;

.field private e:Landroid/content/Context;

.field private f:La/a/e/c;

.field private g:La/a/e/d;

.field private h:La/a/g/a/b;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, La/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, La/a/c;->i:Z

    return-void
.end method

.method static synthetic a(La/a/c;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, La/a/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 32
    sput-object p0, La/a/c;->b:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, La/a/c;->a:Z

    return p0
.end method

.method static synthetic b(La/a/c;)La/a/e/c;
    .locals 0

    .line 32
    iget-object p0, p0, La/a/c;->f:La/a/e/c;

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 32
    sget-boolean v0, La/a/c;->a:Z

    return v0
.end method

.method static synthetic c(La/a/c;)La/a/e/a;
    .locals 0

    .line 32
    iget-object p0, p0, La/a/c;->d:La/a/e/a;

    return-object p0
.end method

.method static synthetic c()Ljava/util/Timer;
    .locals 1

    .line 32
    sget-object v0, La/a/c;->b:Ljava/util/Timer;

    return-object v0
.end method

.method private d()V
    .locals 6

    .line 127
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, La/a/c;->b:Ljava/util/Timer;

    .line 128
    new-instance v1, La/a/c$1;

    invoke-direct {v1, p0}, La/a/c$1;-><init>(La/a/c;)V

    iget-object v2, p0, La/a/c;->h:La/a/g/a/b;

    .line 192
    invoke-virtual {v2}, La/a/g/a/b;->e()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-object v4, p0, La/a/c;->h:La/a/g/a/b;

    invoke-virtual {v4}, La/a/g/a/b;->e()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 128
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic d(La/a/c;)V
    .locals 0

    .line 32
    invoke-direct {p0}, La/a/c;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 226
    iget-object v0, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {v0}, La/a/e/c;->b()Ljava/lang/Iterable;

    move-result-object v0

    .line 227
    iget-object v1, p0, La/a/c;->g:La/a/e/d;

    invoke-interface {v1, v0}, La/a/e/d;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 269
    iget-object v0, p0, La/a/c;->g:La/a/e/d;

    invoke-interface {v0}, La/a/e/d;->a()Ljava/lang/Iterable;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 272
    invoke-static {v1}, La/a/g/a/a;->a(Ljava/io/File;)La/a/g/a/a;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, La/a/g/a/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {v1}, La/a/g/a/a;->c()V

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {v2, v1}, La/a/e/c;->a(La/a/g/a/a;)La/a/g/a/a;

    .line 278
    invoke-direct {p0}, La/a/c;->g()Z

    .line 279
    invoke-virtual {v1}, La/a/g/a/a;->d()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 8

    .line 295
    iget-object v0, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {v0}, La/a/e/c;->d()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, La/a/c;->h:La/a/g/a/b;

    invoke-virtual {v2}, La/a/g/a/b;->b()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    iget-object v0, p0, La/a/c;->h:La/a/g/a/b;

    .line 296
    invoke-virtual {v0}, La/a/g/a/b;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {v0}, La/a/e/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, La/a/c;->c:Ljava/lang/String;

    const-string v1, "Can\'t remove last record. Database size is invalid"

    invoke-static {v0, v1}, La/a/f/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 303
    :cond_0
    iget-object v0, p0, La/a/c;->h:La/a/g/a/b;

    invoke-virtual {v0}, La/a/g/a/b;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/c;->f:La/a/e/c;

    .line 304
    invoke-interface {v0}, La/a/e/c;->e()J

    move-result-wide v4

    iget-object v0, p0, La/a/c;->h:La/a/g/a/b;

    invoke-virtual {v0}, La/a/g/a/b;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    const/4 v0, 0x5

    .line 306
    :cond_1
    iget-object v2, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {v2}, La/a/e/c;->e()J

    move-result-wide v4

    iget-object v2, p0, La/a/c;->h:La/a/g/a/b;

    .line 307
    invoke-virtual {v2}, La/a/g/a/b;->a()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 308
    iget-object v2, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {v2}, La/a/e/c;->f()Z

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public a(La/a/g/b/d;Ljava/util/Map;)La/a/g/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/g/b/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "La/a/g/a/a;"
        }
    .end annotation

    .line 236
    iget-boolean v0, p0, La/a/c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, La/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 245
    :cond_1
    iget-object v0, p0, La/a/c;->e:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, La/a/g/b/d;->a(Landroid/content/Context;Ljava/util/Map;)La/a/g/a;

    move-result-object p1

    .line 246
    iget-object p2, p0, La/a/c;->f:La/a/e/c;

    invoke-interface {p2, p1}, La/a/e/c;->a(La/a/g/a;)La/a/g/a/a;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a()V
    .locals 3

    .line 96
    iget-object v0, p0, La/a/c;->h:La/a/g/a/b;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, La/a/c;->f:La/a/e/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, La/a/e/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iput-boolean v1, p0, La/a/c;->i:Z

    return-void

    .line 105
    :cond_1
    invoke-direct {p0}, La/a/c;->f()V

    .line 107
    invoke-direct {p0}, La/a/c;->e()V

    .line 109
    iget-object v0, p0, La/a/c;->h:La/a/g/a/b;

    invoke-virtual {v0}, La/a/g/a/b;->d()La/a/c/a/a;

    move-result-object v0

    sget-object v2, La/a/c/a/a;->a:La/a/c/a/a;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, La/a/c;->h:La/a/g/a/b;

    .line 110
    invoke-virtual {v0}, La/a/g/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    :cond_2
    invoke-direct {p0}, La/a/c;->d()V

    .line 114
    :cond_3
    iput-boolean v1, p0, La/a/c;->i:Z

    return-void
.end method

.method public a(La/a/e/a;)V
    .locals 0

    .line 213
    iput-object p1, p0, La/a/c;->d:La/a/e/a;

    return-void
.end method

.method public a(La/a/g/a/a;)V
    .locals 1

    .line 258
    iget-object v0, p0, La/a/c;->f:La/a/e/c;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-interface {v0, p1}, La/a/e/c;->b(La/a/g/a/a;)Z

    return-void
.end method
