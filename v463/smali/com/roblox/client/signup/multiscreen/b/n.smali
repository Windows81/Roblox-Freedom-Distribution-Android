.class public Lcom/roblox/client/signup/multiscreen/b/n;
.super Lcom/roblox/client/signup/multiscreen/b/i;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/b/m;


# instance fields
.field private e:Lcom/roblox/client/signup/multiscreen/c;

.field private f:Lcom/roblox/client/signup/multiscreen/b/h;

.field private g:Lcom/roblox/client/signup/multiscreen/b/k;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/c;Lcom/roblox/client/signup/multiscreen/b/h;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/b/i;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->e:Lcom/roblox/client/signup/multiscreen/c;

    .line 23
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/b/n;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/n;)Lcom/roblox/client/signup/multiscreen/b/k;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/n;->g:Lcom/roblox/client/signup/multiscreen/b/k;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/n;Lcom/roblox/client/signup/multiscreen/b/k;)Lcom/roblox/client/signup/multiscreen/b/k;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->g:Lcom/roblox/client/signup/multiscreen/b/k;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/n;Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/b/k;
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/n;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/b/k;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/n;)Lcom/roblox/client/signup/multiscreen/b/h;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/n;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n;->e:Lcom/roblox/client/signup/multiscreen/c;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/n$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/roblox/client/signup/multiscreen/b/n$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/roblox/client/signup/multiscreen/b/k;
    .locals 2

    .line 99
    invoke-static {}, Lcom/roblox/client/b;->cd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/l;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/roblox/client/signup/multiscreen/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/b/h;Lcom/roblox/client/signup/multiscreen/b/n;)V

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Lcom/roblox/client/signup/multiscreen/b/j;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->f:Lcom/roblox/client/signup/multiscreen/b/h;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/roblox/client/signup/multiscreen/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/b/h;Lcom/roblox/client/signup/multiscreen/b/n;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/b/n;->a(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->h:Z

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/n;->h:Z

    .line 32
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/n;->i:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/n;->h:Z

    return v0
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/d;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
