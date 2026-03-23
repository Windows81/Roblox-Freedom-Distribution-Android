.class public Lcom/roblox/client/signup/multiscreen/e/c;
.super Landroidx/lifecycle/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/e/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/signup/multiscreen/b/m;

.field private b:Lcom/roblox/client/signup/multiscreen/b/a;

.field private c:Lcom/roblox/client/signup/multiscreen/b/z;

.field private d:Lcom/roblox/client/s/f;

.field private e:Lcom/roblox/client/signup/multiscreen/a/a;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/roblox/client/signup/multiscreen/b/m;Lcom/roblox/client/signup/multiscreen/b/a;Lcom/roblox/client/signup/multiscreen/b/z;Lcom/roblox/client/signup/multiscreen/a/a;Lcom/roblox/client/s/f;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/c;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    .line 37
    iput-object p2, p0, Lcom/roblox/client/signup/multiscreen/e/c;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    .line 38
    iput-object p3, p0, Lcom/roblox/client/signup/multiscreen/e/c;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    .line 39
    iput-object p4, p0, Lcom/roblox/client/signup/multiscreen/e/c;->e:Lcom/roblox/client/signup/multiscreen/a/a;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/roblox/client/signup/multiscreen/e/c;->f:Z

    .line 41
    iput-object p5, p0, Lcom/roblox/client/signup/multiscreen/e/c;->d:Lcom/roblox/client/s/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    invoke-interface {v0, p1}, Lcom/roblox/client/signup/multiscreen/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    invoke-interface {v0, p2, p1}, Lcom/roblox/client/signup/multiscreen/b/m;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "focus"

    goto :goto_0

    :cond_0
    const-string p2, "offFocus"

    :goto_0
    const-string v0, "signupEmail"

    .line 103
    invoke-static {v0, p1, p2}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/d;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/m;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-virtual {v0, p1}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "signupEmail"

    .line 112
    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/b;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/a;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/roblox/client/signup/multiscreen/a/i;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->f:Z

    .line 74
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->d:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-EmailHintScreenLoaded"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->f:Z

    return-void
.end method

.method public i()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->f:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    invoke-interface {v0}, Lcom/roblox/client/signup/multiscreen/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    iget-object v1, p0, Lcom/roblox/client/signup/multiscreen/e/c;->b:Lcom/roblox/client/signup/multiscreen/b/a;

    invoke-interface {v1}, Lcom/roblox/client/signup/multiscreen/b/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/e/c;->e:Lcom/roblox/client/signup/multiscreen/a/a;

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/e/c;->a:Lcom/roblox/client/signup/multiscreen/b/m;

    invoke-interface {v3}, Lcom/roblox/client/signup/multiscreen/b/m;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Email"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/b/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/b/z;->f()V

    return-void
.end method

.method public m()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->c:Lcom/roblox/client/signup/multiscreen/b/z;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/b/z;->m_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/multiscreen/a/i;

    iget-object v0, v0, Lcom/roblox/client/signup/multiscreen/a/i;->a:Lcom/roblox/client/signup/multiscreen/a/i$b;

    sget-object v1, Lcom/roblox/client/signup/multiscreen/a/i$b;->G:Lcom/roblox/client/signup/multiscreen/a/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 2

    const-string v0, "signupEmail"

    .line 116
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->d:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-EmailScreenLoaded"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 2

    const-string v0, "fillEmail"

    .line 121
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/e/c;->c(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/c;->d:Lcom/roblox/client/s/f;

    const-string v1, "Android-VAppSignupC-EmailHintSelected"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method
