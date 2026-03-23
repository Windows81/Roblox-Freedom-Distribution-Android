.class public Lcom/roblox/client/friends/nearby/NearbyPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Landroidx/lifecycle/j;
.implements Lcom/roblox/client/friends/nearby/a$a;


# instance fields
.field private a:Landroidx/lifecycle/g;

.field private b:Lcom/roblox/client/friends/nearby/a$b;

.field private c:Lcom/roblox/client/friends/c/g;

.field private d:Lcom/roblox/client/friends/nearby/b/f;

.field private e:Lcom/roblox/client/friends/b/a;

.field private f:Lcom/roblox/client/ae/v$a;

.field private g:I

.field private h:I

.field private i:Lcom/roblox/client/friends/c/c;

.field private j:Lcom/roblox/client/friends/nearby/c;

.field private final k:Landroid/os/Handler;

.field private final l:Ljava/lang/Runnable;

.field private final m:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Lcom/roblox/client/datastructures/d<",
            "Lcom/roblox/client/friends/nearby/b/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;Lcom/roblox/client/friends/b/a;Lcom/roblox/client/friends/c/g;IILcom/roblox/client/friends/nearby/b/f;Lcom/roblox/client/friends/nearby/a$b;Lcom/roblox/client/ae/v$a;Lcom/roblox/client/friends/nearby/c;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/roblox/client/friends/nearby/NearbyPresenter$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter$1;-><init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->l:Ljava/lang/Runnable;

    .line 313
    new-instance v0, Lcom/roblox/client/friends/nearby/NearbyPresenter$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter$5;-><init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->m:Landroidx/lifecycle/q;

    .line 344
    new-instance v0, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;

    invoke-direct {v0, p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter$6;-><init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    iput-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->n:Landroidx/lifecycle/q;

    .line 79
    invoke-virtual {p1, p0}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 80
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a:Landroidx/lifecycle/g;

    .line 81
    iput-object p3, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c:Lcom/roblox/client/friends/c/g;

    .line 82
    iput-object p6, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    .line 83
    iput-object p7, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    .line 84
    iput-object p2, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e:Lcom/roblox/client/friends/b/a;

    .line 85
    iput-object p8, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->f:Lcom/roblox/client/ae/v$a;

    .line 86
    iput p4, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->g:I

    .line 87
    iput p5, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->h:I

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k:Landroid/os/Handler;

    .line 89
    iput-object p9, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    return-void
.end method

.method private a(Lcom/roblox/client/friends/b/b;)Lcom/roblox/client/friends/c/c;
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->f:Lcom/roblox/client/ae/v$a;

    invoke-interface {v0}, Lcom/roblox/client/ae/v$a;->b()J

    move-result-wide v0

    iget v2, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 273
    new-instance v2, Lcom/roblox/client/friends/c/c;

    invoke-interface {p1}, Lcom/roblox/client/friends/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/roblox/client/friends/c/c;-><init>(Ljava/lang/String;J)V

    return-object v2
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/b/b;)Lcom/roblox/client/friends/c/c;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/b/b;)Lcom/roblox/client/friends/c/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/b/f;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "onTimeout."

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->h()V

    .line 251
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/nearby/a$b;->a_(I)V

    return-void
.end method

.method private a(Lcom/roblox/client/friends/c/c;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/c/c;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->n:Landroidx/lifecycle/q;

    .line 161
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/NearbyPresenter;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b(Lcom/roblox/client/friends/nearby/b/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/c/c;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c(Lcom/roblox/client/friends/c/c;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/f;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0}, Lcom/roblox/client/friends/nearby/a$b;->h_()V

    .line 148
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    const-string v1, "initDiscoveryManager"

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/nearby/c;->b(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d()V

    return-void
.end method

.method private b(Lcom/roblox/client/friends/c/c;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e:Lcom/roblox/client/friends/b/a;

    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d(Lcom/roblox/client/friends/c/c;)Lcom/roblox/client/friends/b/b;

    move-result-object p1

    new-instance v1, Lcom/roblox/client/friends/nearby/NearbyPresenter$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter$2;-><init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/friends/b/a;->a(Lcom/roblox/client/friends/b/b;Lcom/roblox/client/friends/b/d;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a(Lcom/roblox/client/friends/c/c;)V

    return-void
.end method

.method private b(Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/nearby/a$b;->c(Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 302
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/f;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/c/c;)Lcom/roblox/client/friends/c/c;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->i:Lcom/roblox/client/friends/c/c;

    return-object p1
.end method

.method private c()V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "getToken"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c:Lcom/roblox/client/friends/c/g;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/g;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->m:Landroidx/lifecycle/q;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->h()V

    return-void
.end method

.method private c(Lcom/roblox/client/friends/c/c;)Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->i:Lcom/roblox/client/friends/c/c;

    invoke-virtual {p1, v0}, Lcom/roblox/client/friends/c/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private d(Lcom/roblox/client/friends/c/c;)Lcom/roblox/client/friends/b/b;
    .locals 1

    .line 398
    new-instance v0, Lcom/roblox/client/friends/b/a/d;

    iget-object p1, p1, Lcom/roblox/client/friends/c/c;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/roblox/client/friends/b/a/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/nearby/a$b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e:Lcom/roblox/client/friends/b/a;

    new-instance v1, Lcom/roblox/client/friends/nearby/NearbyPresenter$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter$3;-><init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    new-instance v2, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter$4;-><init>(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/friends/b/a;->a(Lcom/roblox/client/friends/b/e;Lcom/roblox/client/friends/b/c;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/roblox/client/friends/nearby/NearbyPresenter;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b(Lcom/roblox/client/friends/c/c;)V

    return-void
.end method

.method private e()V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "Unpublish"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e:Lcom/roblox/client/friends/b/a;

    invoke-interface {v0}, Lcom/roblox/client/friends/b/a;->a()V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->i()Z

    move-result p0

    return p0
.end method

.method private f()V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "Unsubscribe"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e:Lcom/roblox/client/friends/b/a;

    invoke-interface {v0}, Lcom/roblox/client/friends/b/a;->b()V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c()V

    return-void
.end method

.method static synthetic g(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j()V

    return-void
.end method

.method static synthetic h(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Lcom/roblox/client/friends/c/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->i:Lcom/roblox/client/friends/c/c;

    return-object p0
.end method

.method private h()V
    .locals 2

    const-string v0, "NearbyPresenter"

    const-string v1, "Pause"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c:Lcom/roblox/client/friends/c/g;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/g;->c()V

    .line 262
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->c:Lcom/roblox/client/friends/c/g;

    invoke-virtual {v0}, Lcom/roblox/client/friends/c/g;->d()V

    .line 264
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/b/f;->c()V

    .line 266
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e()V

    .line 267
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->f()V

    return-void
.end method

.method static synthetic i(Lcom/roblox/client/friends/nearby/NearbyPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e()V

    return-void
.end method

.method private i()Z
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->g()Landroidx/lifecycle/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/g;->a()Landroidx/lifecycle/g$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/g$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method private j()V
    .locals 6

    const-string v0, "NearbyPresenter"

    const-string v1, "StartTimeoutRunnable."

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->l:Ljava/lang/Runnable;

    iget v2, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->h:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic k(Lcom/roblox/client/friends/nearby/NearbyPresenter;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0}, Lcom/roblox/client/friends/nearby/a$b;->h_()V

    .line 309
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j()V

    .line 310
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    const-string v1, "emptyUI"

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/nearby/c;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/c;->a()V

    .line 120
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0}, Lcom/roblox/client/friends/nearby/a$b;->h_()V

    .line 121
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    const-string v1, "retryClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/nearby/c;->b(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b()V

    return-void
.end method

.method public a(Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 5

    .line 94
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->c()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserClicked. User friendship status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Friendship status not recognized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0, p1}, Lcom/roblox/client/friends/nearby/a$b;->d(Lcom/roblox/client/friends/nearby/b/a/a;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {v0, p1}, Lcom/roblox/client/friends/nearby/b/f;->b(Lcom/roblox/client/friends/nearby/b/a/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged. hidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->h()V

    .line 131
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/c;->c()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b()V

    .line 134
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/c;->b()V

    :goto_0
    return-void
.end method

.method public g()Landroidx/lifecycle/g;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->a:Landroidx/lifecycle/g;

    return-object v0
.end method

.method onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "NearbyPresenter"

    const-string v1, "LifecycleEvent.onDestroy"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->e:Lcom/roblox/client/friends/b/a;

    invoke-interface {v0}, Lcom/roblox/client/friends/b/a;->c()V

    return-void
.end method

.method public onFriendshipUpdatedEvent(Lcom/roblox/client/l/f;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFriendshipUpdatedEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/l/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p1}, Lcom/roblox/client/l/f;->a()Lcom/roblox/client/e/a/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 457
    invoke-virtual {p1}, Lcom/roblox/client/l/f;->c()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FriendshipStatus not recognized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/l/f;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/l/f;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v2

    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 461
    :cond_2
    invoke-static {}, Lcom/roblox/client/b;->bs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b:Lcom/roblox/client/friends/nearby/a$b;

    invoke-interface {v0}, Lcom/roblox/client/friends/nearby/a$b;->i_()V

    :cond_3
    const/4 v2, 0x3

    :cond_4
    :goto_0
    if-eq v2, v6, :cond_5

    .line 486
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->d:Lcom/roblox/client/friends/nearby/b/f;

    invoke-virtual {p1}, Lcom/roblox/client/l/f;->a()Lcom/roblox/client/e/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/e/a/a;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/roblox/client/friends/nearby/b/f;->a(JI)V

    :cond_5
    return-void
.end method

.method onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "NearbyPresenter"

    const-string v1, "LifecycleEvent.onPause"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->h()V

    .line 424
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/c;->c()V

    return-void
.end method

.method onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "NearbyPresenter"

    const-string v1, "LifecycleEvent.onResume"

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/NearbyPresenter;->j:Lcom/roblox/client/friends/nearby/c;

    invoke-virtual {v0}, Lcom/roblox/client/friends/nearby/c;->b()V

    .line 416
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/NearbyPresenter;->b()V

    return-void
.end method

.method onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "NearbyPresenter"

    const-string v1, "LifecycleEvent.onStart"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;
    .end annotation

    const-string v0, "NearbyPresenter"

    const-string v1, "LifecycleEvent.onStop"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    return-void
.end method
