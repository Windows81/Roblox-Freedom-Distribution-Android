.class public Lcom/roblox/client/login/mvp/LoginPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Lcom/roblox/client/login/mvp/b$b;
.implements Lcom/roblox/client/u/a$a;


# static fields
.field private static final c:Lcom/roblox/client/login/mvp/b$c;


# instance fields
.field protected a:Lcom/roblox/client/login/mvp/b$a;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/roblox/client/login/mvp/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/g;

.field private e:Lcom/roblox/client/s/f;

.field private f:Lcom/roblox/abtesting/a;

.field private g:Lcom/roblox/client/g/a;

.field private h:Z

.field private i:Z

.field private final j:Lcom/roblox/client/login/mvp/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/roblox/client/login/mvp/LoginPresenter$1;

    invoke-direct {v0}, Lcom/roblox/client/login/mvp/LoginPresenter$1;-><init>()V

    sput-object v0, Lcom/roblox/client/login/mvp/LoginPresenter;->c:Lcom/roblox/client/login/mvp/b$c;

    return-void
.end method

.method constructor <init>(Lcom/roblox/client/login/mvp/b$c;Lcom/roblox/client/s/f;Lcom/roblox/client/login/mvp/b$a;Landroidx/lifecycle/g;Lcom/roblox/abtesting/a;Lcom/roblox/client/g/a;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Lcom/roblox/client/login/mvp/LoginPresenter$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/LoginPresenter$5;-><init>(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    iput-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->j:Lcom/roblox/client/login/mvp/f;

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Ljava/lang/ref/WeakReference;

    .line 130
    iput-object p3, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    .line 131
    iput-object p4, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->d:Landroidx/lifecycle/g;

    .line 132
    iput-object p2, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->e:Lcom/roblox/client/s/f;

    .line 133
    iput-object p5, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->f:Lcom/roblox/abtesting/a;

    .line 134
    iput-object p6, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    .line 136
    invoke-virtual {p4, p0}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 138
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/roblox/client/login/mvp/b$c;->a(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/roblox/client/login/mvp/b$c;->a(Lcom/roblox/client/u/a$a;)V

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->h:Z

    .line 142
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->i:Z

    return-void
.end method

.method private a(Lcom/roblox/client/g/c;)V
    .locals 3

    .line 238
    iget-object v0, p1, Lcom/roblox/client/g/c;->a:Ljava/lang/String;

    .line 239
    iget-object p1, p1, Lcom/roblox/client/g/c;->b:Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v2, v1, v0, p1}, Lcom/roblox/client/login/mvp/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/roblox/client/login/mvp/b$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/LoginPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->g()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/LoginPresenter;Lcom/roblox/client/g/c;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/g/c;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/g/c;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->h()Lcom/roblox/client/g/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/g/a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/login/mvp/LoginPresenter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->i()V

    return-void
.end method

.method private g()V
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    .line 249
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 251
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->h()Lcom/roblox/client/g/c;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/login/mvp/LoginPresenter$3;

    invoke-direct {v3, p0}, Lcom/roblox/client/login/mvp/LoginPresenter$3;-><init>(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    const/16 v4, 0x2787

    .line 248
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/roblox/client/g/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/c;Lcom/roblox/client/g/a$a;)V

    return-void
.end method

.method private h()Lcom/roblox/client/g/c;
    .locals 3

    .line 294
    new-instance v0, Lcom/roblox/client/g/c;

    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private i()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xbfc130a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x3ff5b7c

    if-eq v1, v2, :cond_1

    const v2, 0x1c4e6237

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "PhoneNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "Email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "Username"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    .line 356
    sget-object v0, Lcom/roblox/client/captcha/LoginCaptchaConfig$a;->a:Lcom/roblox/client/captcha/LoginCaptchaConfig$a;

    goto :goto_2

    .line 352
    :cond_4
    sget-object v0, Lcom/roblox/client/captcha/LoginCaptchaConfig$a;->c:Lcom/roblox/client/captcha/LoginCaptchaConfig$a;

    goto :goto_2

    .line 349
    :cond_5
    sget-object v0, Lcom/roblox/client/captcha/LoginCaptchaConfig$a;->b:Lcom/roblox/client/captcha/LoginCaptchaConfig$a;

    .line 360
    :goto_2
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/captcha/LoginCaptchaConfig;

    iget-object v3, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v3}, Lcom/roblox/client/login/mvp/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/roblox/client/captcha/LoginCaptchaConfig;-><init>(Lcom/roblox/client/captcha/LoginCaptchaConfig$a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/roblox/client/login/mvp/b$c;->a(Lcom/roblox/client/captcha/LoginCaptchaConfig;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->h:Z

    const-string v1, "Username"

    if-eqz v0, :cond_0

    return-object v1

    .line 318
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Email"

    return-object p1

    .line 322
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->aN()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    .line 323
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "PhoneNumber"

    return-object p1

    :cond_2
    return-object v1
.end method

.method public a()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$a;->e()V

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 229
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    invoke-interface {p1}, Lcom/roblox/client/g/a;->a()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    invoke-interface {p1}, Lcom/roblox/client/g/a;->b()V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on2SVCodeVerified: userId => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.authlogin"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/b$a;->d()V

    .line 189
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->f()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    new-instance v1, Lcom/roblox/client/login/mvp/LoginPresenter$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/LoginPresenter$2;-><init>(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    const/16 v2, 0x2789

    invoke-interface {v0, p1, v2, v1}, Lcom/roblox/client/g/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/a$b;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    invoke-interface {v0}, Lcom/roblox/client/g/a;->c()V

    .line 207
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    invoke-interface {v0, p1}, Lcom/roblox/client/g/a;->a(Landroid/content/Intent;)Lcom/roblox/client/g/c;

    move-result-object p1

    .line 208
    invoke-direct {p0, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/g/c;)V

    return-void
.end method

.method protected a(Lcom/roblox/client/login/mvp/c;)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->e:Lcom/roblox/client/s/f;

    iget-object v1, p1, Lcom/roblox/client/login/mvp/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/roblox/client/login/mvp/c;->b:Ljava/lang/String;

    iget p1, p1, Lcom/roblox/client/login/mvp/c;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/roblox/client/u/h;Lcom/roblox/client/u/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 164
    invoke-virtual {p0, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->f:Lcom/roblox/abtesting/a;

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->i:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v0, v2, p1, p2}, Lcom/roblox/client/login/mvp/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->i()V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->j:Lcom/roblox/client/login/mvp/f;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/roblox/client/login/mvp/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/f;)V

    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->i:Z

    .line 150
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    .line 151
    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    .line 152
    invoke-interface {p1}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    .line 153
    invoke-interface {p1}, Lcom/roblox/client/login/mvp/b$a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->j:Lcom/roblox/client/login/mvp/f;

    move-object v4, p2

    move-object v5, p3

    .line 150
    invoke-interface/range {v0 .. v6}, Lcom/roblox/client/login/mvp/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/login/mvp/f;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/b$c;->u()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    invoke-interface {v0}, Lcom/roblox/client/g/a;->a()V

    .line 200
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->f()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    invoke-interface {v0}, Lcom/roblox/client/g/a;->d()V

    return-void
.end method

.method cleanup()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->d:Landroidx/lifecycle/g;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/g;->b(Landroidx/lifecycle/i;)V

    return-void
.end method

.method protected d()V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->g:Lcom/roblox/client/g/a;

    .line 272
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 274
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->h()Lcom/roblox/client/g/c;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/login/mvp/LoginPresenter$4;

    invoke-direct {v3, p0}, Lcom/roblox/client/login/mvp/LoginPresenter$4;-><init>(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    const/16 v4, 0x2788

    .line 271
    invoke-interface {v0, v1, v4, v2, v3}, Lcom/roblox/client/g/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/c;Lcom/roblox/client/g/a$a;)V

    return-void
.end method

.method protected e()Lcom/roblox/client/login/mvp/b$c;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/login/mvp/b$c;

    return-object v0

    .line 335
    :cond_0
    sget-object v0, Lcom/roblox/client/login/mvp/LoginPresenter;->c:Lcom/roblox/client/login/mvp/b$c;

    return-object v0
.end method

.method protected f()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginSuccess: Will finish the view as success..."

    .line 339
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->e:Lcom/roblox/client/s/f;

    invoke-virtual {v0}, Lcom/roblox/client/s/f;->w()V

    .line 342
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->e(I)V

    return-void
.end method

.method setStoreCredentialValue()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->a(Ljava/lang/String;)V

    return-void
.end method
