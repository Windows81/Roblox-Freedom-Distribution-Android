.class public Lcom/roblox/client/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/h;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    .line 35
    iput-object p2, p0, Lcom/roblox/client/j/d;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/roblox/client/m;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/roblox/client/m;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/roblox/client/j/d;-><init>(Landroid/support/v4/app/h;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 39
    const v0, 0x7f0b0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 41
    const v0, 0x7f08001e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/roblox/client/j/d$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/j/d$1;-><init>(Lcom/roblox/client/j/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    instance-of v0, v0, Lcom/roblox/client/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    check-cast v0, Lcom/roblox/client/k;

    .line 54
    invoke-virtual {v0}, Lcom/roblox/client/k;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Lcom/roblox/client/n;

    invoke-direct {v0}, Lcom/roblox/client/n;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "showRobux"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v2, "dialogHeight"

    invoke-virtual {p0}, Lcom/roblox/client/j/d;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->setArguments(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->robuxOnlyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/n;->c(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    const v2, 0x7f0f0149

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/n;->setStyle(II)V

    .line 66
    iget-object v1, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    invoke-virtual {v1}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/l;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/n;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 68
    const-string v0, "nativeMain"

    const-string v1, "robux"

    iget-object v2, p0, Lcom/roblox/client/j/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/roblox/engine/components/b;->a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/View;)Lcom/roblox/engine/components/b;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/roblox/client/j/d;->a:Landroid/support/v4/app/h;

    invoke-virtual {v1}, Landroid/support/v4/app/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 75
    iget v2, v0, Lcom/roblox/engine/components/b;->b:I

    iget v3, v0, Lcom/roblox/engine/components/b;->f:I

    sub-int/2addr v2, v3

    iget v0, v0, Lcom/roblox/engine/components/b;->c:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    return v0
.end method
