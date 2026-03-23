.class public Lcom/roblox/client/feature/b;
.super Lcom/roblox/client/feature/l;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/feature/c;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lcom/roblox/client/feature/l;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/roblox/client/feature/b;->a:Lcom/roblox/client/feature/c;

    .line 19
    iput p3, p0, Lcom/roblox/client/feature/b;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/roblox/client/feature/b;->e()Lcom/roblox/client/f/b;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/roblox/client/feature/b;->a:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->c(Landroid/support/v4/app/Fragment;)V

    .line 37
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 4

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/roblox/client/feature/b;->e()Lcom/roblox/client/f/b;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/roblox/client/f/b;

    invoke-direct {v0}, Lcom/roblox/client/f/b;-><init>()V

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/feature/b;->a:Lcom/roblox/client/feature/c;

    iget v2, p0, Lcom/roblox/client/feature/b;->b:I

    invoke-virtual {p0}, Lcom/roblox/client/feature/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/roblox/client/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/feature/b;->e()Lcom/roblox/client/f/b;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/roblox/client/f/b;->a()Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()Lcom/roblox/client/f/b;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/feature/b;->a:Lcom/roblox/client/feature/c;

    invoke-virtual {p0}, Lcom/roblox/client/feature/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/roblox/client/f/b;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/roblox/client/f/b;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "tabEvents"

    return-object v0
.end method
