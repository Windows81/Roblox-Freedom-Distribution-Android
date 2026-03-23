.class public Lcom/roblox/client/signup/multiscreen/e/e;
.super Landroidx/lifecycle/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/e/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/signup/multiscreen/b/w;

.field private b:Lcom/roblox/client/signup/multiscreen/b/f;

.field private c:Lcom/roblox/client/s/f;

.field private d:Lcom/roblox/client/ad/b;

.field private e:Lcom/roblox/client/signup/multiscreen/a/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/b/w;Lcom/roblox/client/signup/multiscreen/b/f;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;Lcom/roblox/client/ad/b;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/e;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    .line 40
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/e/e;->b:Lcom/roblox/client/signup/multiscreen/b/f;

    .line 41
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/e/e;->e:Lcom/roblox/client/signup/multiscreen/a/a;

    .line 42
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    .line 43
    iput-object p5, p0, Lcom/roblox/client/signup/multiscreen/e/e;->d:Lcom/roblox/client/ad/b;

    return-void
.end method

.method private b(I)Lcom/roblox/client/signup/multiscreen/b/f$a;
    .locals 2

    .line 158
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/f$a;->a:Lcom/roblox/client/signup/multiscreen/b/f$a;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 160
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/f$a;->b:Lcom/roblox/client/signup/multiscreen/b/f$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 162
    sget-object v0, Lcom/roblox/client/signup/multiscreen/b/f$a;->c:Lcom/roblox/client/signup/multiscreen/b/f$a;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "selectUsernameGender"

    goto :goto_0

    :cond_0
    const-string v0, "selectGender"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/c;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->b:Lcom/roblox/client/signup/multiscreen/b/f;

    invoke-direct {p0, p1}, Lcom/roblox/client/signup/multiscreen/e/e;->b(I)Lcom/roblox/client/signup/multiscreen/b/f$a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/roblox/client/signup/multiscreen/b/f;->a(Lcom/roblox/client/signup/multiscreen/b/f$a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
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

    .line 76
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/w;->b(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->d:Lcom/roblox/client/ad/b;

    const-string v1, "Username"

    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/ad/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/e;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "focus"

    goto :goto_0

    :cond_0
    const-string p2, "offFocus"

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .line 80
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/signup/multiscreen/b/w;->a(Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/e;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/c;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->b:Lcom/roblox/client/signup/multiscreen/b/f;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/f;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/h;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/w;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "submit"

    invoke-static {v0, p1, v1}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/e/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->a:Lcom/roblox/client/signup/multiscreen/b/w;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/e/e;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/roblox/client/signup/multiscreen/b/w;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    :cond_0
    return-void
.end method

.method public f()Lcom/roblox/client/signup/multiscreen/a/a;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->e:Lcom/roblox/client/signup/multiscreen/a/a;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-GenderScreenLoaded"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupB-GenderScreenLoaded"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "start"

    .line 116
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/e/e;->c(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-StartClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupB-StartClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "skip"

    .line 126
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/e/e;->c(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-SkipClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupB-SkipClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "usernameSuggestion"

    .line 136
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/e/e;->c(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-GenUsernameClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->c:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupB-GenUsernameClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 147
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/e;->e:Lcom/roblox/client/signup/multiscreen/a/a;

    .line 148
    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/a/a;->a()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
