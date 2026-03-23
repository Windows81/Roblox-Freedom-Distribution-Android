.class public Lcom/roblox/client/login/mvp/LoginPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/f;
.implements Lcom/roblox/client/l/a$a;
.implements Lcom/roblox/client/login/mvp/b$b;


# instance fields
.field private a:Lcom/roblox/client/login/mvp/b$c;

.field private b:Lcom/roblox/client/login/mvp/b$a;

.field private c:Landroid/arch/lifecycle/d;

.field private d:Lcom/roblox/client/i/f;

.field private e:Z

.field private final f:Lcom/roblox/client/login/mvp/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/b$c;Lcom/roblox/client/i/f;Lcom/roblox/client/login/mvp/b$a;Landroid/arch/lifecycle/d;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/roblox/client/login/mvp/LoginPresenter$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/LoginPresenter$1;-><init>(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    iput-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->f:Lcom/roblox/client/login/mvp/f;

    .line 46
    iput-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    .line 47
    iput-object p3, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    .line 48
    iput-object p4, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->c:Landroid/arch/lifecycle/d;

    .line 49
    iput-object p2, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->d:Lcom/roblox/client/i/f;

    .line 51
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->c:Landroid/arch/lifecycle/d;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/d;->a(Landroid/arch/lifecycle/f;)V

    .line 53
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    invoke-interface {v0, p0}, Lcom/roblox/client/login/mvp/b$c;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    invoke-interface {v0, p0}, Lcom/roblox/client/login/mvp/b$c;->a(Lcom/roblox/client/l/a$a;)V

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->e:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "Username"

    .line 127
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bM()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "Email"

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->bL()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "PhoneNumber"

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "Username"

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/LoginPresenter;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/LoginPresenter;Lcom/roblox/client/login/mvp/c;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/c;)V

    return-void
.end method

.method private a(Lcom/roblox/client/login/mvp/c;)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->d:Lcom/roblox/client/i/f;

    iget-object v1, p1, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    iget v3, p1, Lcom/roblox/client/login/mvp/c;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginSuccess: Will finish the view as success..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->d:Lcom/roblox/client/i/f;

    invoke-virtual {v0}, Lcom/roblox/client/i/f;->u()V

    .line 134
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->d(I)V

    .line 135
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$a;->f()V

    .line 93
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    .line 59
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReCaptchaFinished: resultCode => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    .line 63
    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    .line 64
    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    .line 65
    invoke-interface {v3}, Lcom/roblox/client/login/mvp/b$a;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->f:Lcom/roblox/client/login/mvp/f;

    .line 62
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/roblox/client/login/mvp/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/f;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->k()V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 84
    const-string v0, "rbx.authlogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on2SVCodeVerified: userId => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$a;->e()V

    .line 87
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b()V

    .line 88
    return-void
.end method

.method public a(Lcom/roblox/client/l/h;Lcom/roblox/client/l/c;)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->f:Lcom/roblox/client/login/mvp/f;

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/roblox/client/login/mvp/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/f;)V

    .line 80
    return-void
.end method

.method cleanup()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/m;
        a = .enum Landroid/arch/lifecycle/d$a;->ON_DESTROY:Landroid/arch/lifecycle/d$a;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->c:Landroid/arch/lifecycle/d;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/d;->b(Landroid/arch/lifecycle/f;)V

    .line 301
    return-void
.end method

.method setStoreCredentialValue()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/m;
        a = .enum Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$c;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->b(Ljava/lang/String;)V

    .line 296
    return-void
.end method
