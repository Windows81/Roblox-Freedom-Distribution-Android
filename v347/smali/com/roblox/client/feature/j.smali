.class public Lcom/roblox/client/feature/j;
.super Lcom/roblox/client/feature/l;
.source "SourceFile"


# instance fields
.field protected a:Lcom/roblox/client/feature/c;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/roblox/client/feature/l;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/roblox/client/feature/j;->a:Lcom/roblox/client/feature/c;

    .line 32
    iput p3, p0, Lcom/roblox/client/feature/j;->b:I

    .line 33
    iput-object p4, p0, Lcom/roblox/client/feature/j;->c:Ljava/lang/String;

    .line 34
    iput-boolean p5, p0, Lcom/roblox/client/feature/j;->d:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/roblox/client/n;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/roblox/client/n;

    invoke-direct {v0}, Lcom/roblox/client/n;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v2, "DEFAULT_URL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-boolean v1, p0, Lcom/roblox/client/feature/j;->d:Z

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/roblox/client/feature/j;->a:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->b(Landroid/support/v4/app/Fragment;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/feature/j;->a:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->c(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v1

    .line 40
    const-string v0, "WEB_URL"

    invoke-virtual {p1, v0}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/roblox/client/feature/j;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/roblox/client/feature/j;->a(Ljava/lang/String;)Lcom/roblox/client/n;

    move-result-object v1

    .line 43
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 49
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/feature/j;->a:Lcom/roblox/client/feature/c;

    iget v2, p0, Lcom/roblox/client/feature/j;->b:I

    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 50
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/feature/j;->c:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v1, v0}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/roblox/client/feature/j;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/j;->a(Ljava/lang/String;)Lcom/roblox/client/n;

    move-result-object v0

    .line 111
    :cond_0
    invoke-virtual {v0, p1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/roblox/client/feature/j;->a:Lcom/roblox/client/feature/c;

    iget v2, p0, Lcom/roblox/client/feature/j;->b:I

    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    iget-object v1, p0, Lcom/roblox/client/feature/j;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v1, "WEB_URL"

    iget-object v2, p0, Lcom/roblox/client/feature/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/roblox/client/feature/j;->a(Lcom/roblox/client/feature/FeatureState;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/n;->d()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/roblox/client/n;->c()Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/roblox/client/n;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/roblox/client/feature/j;->a:Lcom/roblox/client/feature/c;

    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lcom/roblox/client/n;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lcom/roblox/client/n;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, ""

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WEBTABFEATURE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/roblox/client/feature/FeatureState;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    const-string v2, "WEB_URL"

    invoke-virtual {v1}, Lcom/roblox/client/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method public v_()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/roblox/client/feature/j;->f()Lcom/roblox/client/n;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/roblox/client/n;->a()V

    .line 135
    :cond_0
    return-void
.end method
