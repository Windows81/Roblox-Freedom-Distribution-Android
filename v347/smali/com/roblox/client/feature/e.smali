.class public Lcom/roblox/client/feature/e;
.super Lcom/roblox/client/feature/j;
.source "SourceFile"


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/roblox/client/feature/FeatureState;


# direct methods
.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/feature/FeatureState;)V
    .locals 6

    .prologue
    .line 24
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/feature/j;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 25
    iput p3, p0, Lcom/roblox/client/feature/e;->f:I

    .line 26
    iput-object p6, p0, Lcom/roblox/client/feature/e;->g:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/roblox/client/feature/e;->h:Lcom/roblox/client/feature/FeatureState;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/feature/c;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/roblox/client/feature/FeatureState;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/feature/j;-><init>(Lcom/roblox/client/feature/c;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 39
    iput p3, p0, Lcom/roblox/client/feature/e;->f:I

    .line 40
    iput-object p6, p0, Lcom/roblox/client/feature/e;->g:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/roblox/client/feature/e;->h:Lcom/roblox/client/feature/FeatureState;

    .line 42
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/roblox/client/n;
    .locals 4

    .prologue
    .line 46
    new-instance v1, Lcom/roblox/client/f/d;

    invoke-direct {v1}, Lcom/roblox/client/f/d;-><init>()V

    .line 47
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v0, "TITLE_ID"

    iget v3, p0, Lcom/roblox/client/feature/e;->f:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v0, "REPORTING_TAB_NAME"

    invoke-virtual {p0}, Lcom/roblox/client/feature/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "DEFAULT_URL"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "HAS_PARENT"

    iget-object v0, p0, Lcom/roblox/client/feature/e;->h:Lcom/roblox/client/feature/FeatureState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v1, v2}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/roblox/client/feature/j;->d()Z

    move-result v0

    .line 59
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/roblox/client/feature/e;->h:Lcom/roblox/client/feature/FeatureState;

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/roblox/client/feature/e;->a:Lcom/roblox/client/feature/c;

    iget-object v1, p0, Lcom/roblox/client/feature/e;->h:Lcom/roblox/client/feature/FeatureState;

    invoke-interface {v0, v1}, Lcom/roblox/client/feature/c;->a(Lcom/roblox/client/feature/FeatureState;)V

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/roblox/client/feature/e;->g:Ljava/lang/String;

    return-object v0
.end method
