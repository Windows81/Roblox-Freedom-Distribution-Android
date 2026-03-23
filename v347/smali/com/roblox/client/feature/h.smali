.class public Lcom/roblox/client/feature/h;
.super Lcom/roblox/client/feature/l;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/feature/c;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lcom/roblox/client/feature/l;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/roblox/client/feature/h;->a:Lcom/roblox/client/feature/c;

    .line 18
    iput p3, p0, Lcom/roblox/client/feature/h;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/roblox/client/feature/h;->f()Lcom/roblox/client/k/b;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/roblox/client/feature/h;->a:Lcom/roblox/client/feature/c;

    invoke-interface {v1, v0}, Lcom/roblox/client/feature/c;->c(Landroid/support/v4/app/Fragment;)V

    .line 36
    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/roblox/client/feature/h;->f()Lcom/roblox/client/k/b;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/roblox/client/k/b;

    invoke-direct {v0}, Lcom/roblox/client/k/b;-><init>()V

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/feature/h;->a:Lcom/roblox/client/feature/c;

    iget v2, p0, Lcom/roblox/client/feature/h;->b:I

    invoke-virtual {p0}, Lcom/roblox/client/feature/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/roblox/client/feature/c;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/roblox/client/k/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected f()Lcom/roblox/client/k/b;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/feature/h;->a:Lcom/roblox/client/feature/c;

    invoke-virtual {p0}, Lcom/roblox/client/feature/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lcom/roblox/client/k/b;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcom/roblox/client/k/b;

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "tabAbout"

    return-object v0
.end method
