.class public Lcom/roblox/client/signup/multiscreen/b/x;
.super Lcom/roblox/client/signup/multiscreen/b/t;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/b/w;


# static fields
.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private f:Lcom/roblox/client/signup/multiscreen/c;

.field private g:Lcom/roblox/client/signup/multiscreen/b/s;

.field private h:Lcom/roblox/client/signup/multiscreen/d/b;

.field private i:Lcom/roblox/client/http/f;

.field private j:Lcom/roblox/client/signup/multiscreen/b/u;

.field private k:Lcom/roblox/client/ad/c;

.field private l:Lcom/roblox/client/ad/b;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([A-Z]|[a-z]|[0-9]|_)*"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/signup/multiscreen/b/x;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/s;Lcom/roblox/client/http/f;Lcom/roblox/client/signup/multiscreen/b/u;Lcom/roblox/client/ad/c;Lcom/roblox/client/ad/b;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/b/t;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->f:Lcom/roblox/client/signup/multiscreen/c;

    .line 64
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/x;->g:Lcom/roblox/client/signup/multiscreen/b/s;

    .line 65
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/b/x;->i:Lcom/roblox/client/http/f;

    .line 66
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/b/x;->j:Lcom/roblox/client/signup/multiscreen/b/u;

    .line 67
    iput-object p5, p0, Lcom/roblox/client/signup/multiscreen/b/x;->k:Lcom/roblox/client/ad/c;

    .line 68
    iput-object p6, p0, Lcom/roblox/client/signup/multiscreen/b/x;->l:Lcom/roblox/client/ad/b;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/b/s;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->g:Lcom/roblox/client/signup/multiscreen/b/s;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/x;Lcom/roblox/client/signup/multiscreen/d/b;)Lcom/roblox/client/signup/multiscreen/d/b;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->h:Lcom/roblox/client/signup/multiscreen/d/b;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/x;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/d/b;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/x;->e(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/d/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->f:Lcom/roblox/client/signup/multiscreen/c;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/http/f;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->i:Lcom/roblox/client/http/f;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsernameValidatorImpl"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->m:Z

    if-nez v0, :cond_0

    .line 280
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    sget-object v0, Lcom/roblox/client/signup/multiscreen/a/h$a;->q:Lcom/roblox/client/signup/multiscreen/a/h$a;

    .line 281
    invoke-static {p1, v0}, Lcom/roblox/client/signup/multiscreen/a/h;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/h$a;)Lcom/roblox/client/signup/multiscreen/a/h;

    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/x;->b(Ljava/lang/Object;)V

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->g:Lcom/roblox/client/signup/multiscreen/b/s;

    const-string v1, "Android-VAppSignup-ChangeUsernameAttempt"

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/s;->c(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/x$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/signup/multiscreen/b/x$3;-><init>(Lcom/roblox/client/signup/multiscreen/b/x;)V

    .line 345
    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->j:Lcom/roblox/client/signup/multiscreen/b/u;

    new-instance v2, Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/roblox/client/signup/multiscreen/b/u;->a(Lcom/roblox/platform/http/postbody/webinterface/ChangeUsernamePostBody;)Le/b;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b;->a(Le/d;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->f:Lcom/roblox/client/signup/multiscreen/c;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/x$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/x$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/x;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/signup/multiscreen/d/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->h:Lcom/roblox/client/signup/multiscreen/d/b;

    return-object p0
.end method

.method private d(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->f:Lcom/roblox/client/signup/multiscreen/c;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/x$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/x$2;-><init>(Lcom/roblox/client/signup/multiscreen/b/x;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/d/b;
    .locals 2

    .line 264
    invoke-static {}, Lcom/roblox/client/b;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/roblox/client/signup/multiscreen/d/c;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->g:Lcom/roblox/client/signup/multiscreen/b/s;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/roblox/client/signup/multiscreen/d/c;-><init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/signup/multiscreen/b/s;Lcom/roblox/client/signup/multiscreen/b/x;)V

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Lcom/roblox/client/signup/multiscreen/d/a;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->g:Lcom/roblox/client/signup/multiscreen/b/s;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/roblox/client/signup/multiscreen/d/a;-><init>(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/signup/multiscreen/b/s;Lcom/roblox/client/signup/multiscreen/b/x;)V

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/b/x;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/ad/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->l:Lcom/roblox/client/ad/b;

    return-object p0
.end method

.method static synthetic f()Ljava/util/regex/Pattern;
    .locals 1

    .line 39
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/x;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic g(Lcom/roblox/client/signup/multiscreen/b/x;)Lcom/roblox/client/ad/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->k:Lcom/roblox/client/ad/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/h;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/x;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/roblox/client/signup/multiscreen/a/a;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/b/x;->b(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/x;->d(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(III)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "%d/%d/%d"

    invoke-static {p1, v1}, Lcom/roblox/client/ae/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/roblox/client/signup/multiscreen/a/a;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->m:Z

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/x;->c(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->m:Z

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->m:Z

    .line 354
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/x;->n:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/x;->m:Z

    return v0
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/h;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
