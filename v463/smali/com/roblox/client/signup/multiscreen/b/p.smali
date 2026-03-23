.class public Lcom/roblox/client/signup/multiscreen/b/p;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/roblox/client/signup/multiscreen/a/f;",
        ">;",
        "Lcom/roblox/client/signup/multiscreen/b/o;"
    }
.end annotation


# instance fields
.field private e:Lcom/roblox/client/signup/multiscreen/c;

.field private f:Z

.field private g:Lcom/roblox/client/phonenumber/PhonePrefix;

.field private h:Lcom/roblox/client/signup/multiscreen/a/e;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/c;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/p;->e:Lcom/roblox/client/signup/multiscreen/c;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/phonenumber/PhonePrefix;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->g:Lcom/roblox/client/phonenumber/PhonePrefix;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/p;Lcom/roblox/client/signup/multiscreen/a/e;)Lcom/roblox/client/signup/multiscreen/a/e;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/p;->h:Lcom/roblox/client/signup/multiscreen/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/multiscreen/b/p;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/roblox/client/signup/multiscreen/b/p;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/p;)Lcom/roblox/client/signup/multiscreen/a/e;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->h:Lcom/roblox/client/signup/multiscreen/a/e;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/f;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public a(Lcom/roblox/client/phonenumber/PhonePrefix;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/phonenumber/PhonePrefix;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/f;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/roblox/client/phonenumber/PhonePrefix;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberValidator"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/b/p;->g:Lcom/roblox/client/phonenumber/PhonePrefix;

    .line 93
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/e;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/roblox/client/signup/multiscreen/a/e;-><init>(Lcom/roblox/client/phonenumber/PhonePrefix;Ljava/lang/String;)V

    sget-object p1, Lcom/roblox/client/signup/multiscreen/a/f$a;->b:Lcom/roblox/client/signup/multiscreen/a/f$a;

    .line 94
    invoke-static {v0, p1}, Lcom/roblox/client/signup/multiscreen/a/f;->a(Lcom/roblox/client/signup/multiscreen/a/e;Lcom/roblox/client/signup/multiscreen/a/f$a;)Lcom/roblox/client/signup/multiscreen/a/f;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->f:Z

    .line 36
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->e:Lcom/roblox/client/signup/multiscreen/c;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/p$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p$1;-><init>(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/f;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->e:Lcom/roblox/client/signup/multiscreen/c;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/multiscreen/b/p$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/signup/multiscreen/b/p$2;-><init>(Lcom/roblox/client/signup/multiscreen/b/p;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->f:Z

    return v0
.end method

.method public c()Lcom/roblox/client/signup/multiscreen/a/e;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/b/p;->h:Lcom/roblox/client/signup/multiscreen/a/e;

    return-object v0
.end method
