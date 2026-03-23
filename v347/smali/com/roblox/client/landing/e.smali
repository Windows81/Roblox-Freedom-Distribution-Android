.class Lcom/roblox/client/landing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/l/a$a;
.implements Lcom/roblox/client/l/e;
.implements Lcom/roblox/client/landing/d$a;


# instance fields
.field a:Lcom/roblox/client/landing/d$c;


# direct methods
.method constructor <init>(Lcom/roblox/client/landing/d$c;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    .line 32
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0, p0}, Lcom/roblox/client/landing/d$c;->a(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0, p0}, Lcom/roblox/client/landing/d$c;->a(Lcom/roblox/client/l/e;)V

    .line 34
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0, p0}, Lcom/roblox/client/landing/d$c;->a(Lcom/roblox/client/l/a$a;)V

    .line 35
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0, p1}, Lcom/roblox/client/landing/d$c;->d(Z)V

    .line 49
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "landing"

    const-string v1, "signUpGuestDialog"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->f()V

    .line 55
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "landing"

    const-string v1, "signup"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->f()V

    .line 61
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$c;->l()V

    .line 65
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "landing"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$c;->k()V

    .line 71
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "landing"

    const-string v1, "playNow"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$c;->m()V

    .line 77
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "landing"

    const-string v1, "about"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$c;->n()V

    .line 83
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/e;->a(Z)V

    .line 40
    return-void
.end method

.method public a(Lcom/roblox/client/l/d;)V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/roblox/client/landing/e$2;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/l/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string v0, "StartPresenter"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "start"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v0, "StartPresenter"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lcom/roblox/client/o;->a()Lcom/roblox/client/o;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/landing/e$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/landing/e$1;-><init>(Lcom/roblox/client/landing/e;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/o;->a(Lcom/roblox/client/o$b;)V

    goto :goto_0

    .line 132
    :pswitch_2
    const-string v0, "StartPresenter"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/roblox/client/landing/e;->c()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/roblox/client/landing/d$b;->c:Lcom/roblox/client/landing/d$b;

    if-ne v0, p1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->g()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/roblox/client/landing/d$b;->a:Lcom/roblox/client/landing/d$b;

    if-ne v0, p1, :cond_2

    .line 97
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->e()V

    goto :goto_0

    .line 98
    :cond_2
    sget-object v0, Lcom/roblox/client/landing/d$b;->d:Lcom/roblox/client/landing/d$b;

    if-ne v0, p1, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->h()V

    goto :goto_0

    .line 100
    :cond_3
    sget-object v0, Lcom/roblox/client/landing/d$b;->e:Lcom/roblox/client/landing/d$b;

    if-ne v0, p1, :cond_4

    .line 101
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->i()V

    goto :goto_0

    .line 102
    :cond_4
    sget-object v0, Lcom/roblox/client/landing/d$b;->b:Lcom/roblox/client/landing/d$b;

    if-ne v0, p1, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/roblox/client/landing/e;->d()V

    goto :goto_0

    .line 104
    :cond_5
    sget-object v0, Lcom/roblox/client/landing/d$b;->f:Lcom/roblox/client/landing/d$b;

    if-ne v0, p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    invoke-interface {v0}, Lcom/roblox/client/landing/d$c;->k()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/landing/e;->a(Z)V

    .line 45
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/landing/e;->a:Lcom/roblox/client/landing/d$c;

    .line 88
    return-void
.end method
