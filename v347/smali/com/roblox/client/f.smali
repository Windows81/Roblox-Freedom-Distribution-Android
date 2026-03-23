.class public Lcom/roblox/client/f;
.super Lcom/roblox/client/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/roblox/engine/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/roblox/engine/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/roblox/client/e;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/f;->a:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/f;->b:Ljava/util/Vector;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/roblox/client/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "AvatarEditor"

    invoke-direct {p0, v0}, Lcom/roblox/client/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/roblox/client/f;->b()V

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/engine/a/c;)V
    .locals 1

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/roblox/client/f;->isGameLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/roblox/client/f;->a:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/roblox/client/f;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/roblox/engine/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/a/c;

    .line 131
    const-string v1, "rbx.glview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishPendingEvents() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/roblox/engine/a/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/roblox/engine/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/roblox/engine/a/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, v0, Lcom/roblox/engine/a/c;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/roblox/engine/a/c;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/roblox/engine/a/c;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    instance-of v1, v0, Lcom/roblox/engine/a/d;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/roblox/engine/a/d;

    iget-object v0, v0, Lcom/roblox/engine/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/roblox/client/f;->c:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lcom/roblox/client/f;->c()V

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public b(Lcom/roblox/engine/a/c;)V
    .locals 1

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/f;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lcom/roblox/client/f;->isAppReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/roblox/client/f;->b:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/roblox/client/f;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method protected hideLoadingViewOnSettingsRetrieved()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected initLoadingView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 4

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/roblox/client/e;->initLoadingView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 49
    const v0, 0x7f0a009e

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    invoke-virtual {p0}, Lcom/roblox/client/f;->getStatusBarHeight()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 54
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 58
    return-object v1
.end method

.method public onAppReady(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/roblox/client/e;->onAppReady(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/roblox/client/f;->b:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/roblox/client/f;->a(Ljava/util/Vector;)V

    .line 113
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/f;->a(J)V

    .line 114
    return-void
.end method

.method public onGameLoaded(J)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/roblox/client/e;->onGameLoaded(J)V

    .line 92
    iget-object v0, p0, Lcom/roblox/client/f;->a:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/roblox/client/f;->a(Ljava/util/Vector;)V

    .line 93
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/roblox/client/f;->c()V

    .line 75
    :cond_0
    new-instance v1, Lcom/roblox/engine/a/a;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v0}, Lcom/roblox/engine/a/a;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    .line 76
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/roblox/client/e;->onPause()V

    .line 31
    invoke-virtual {p0}, Lcom/roblox/client/f;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/roblox/engine/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/engine/a/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/roblox/client/e;->onResume()V

    .line 40
    invoke-virtual {p0}, Lcom/roblox/client/f;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/roblox/engine/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/roblox/engine/a/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/f;->a(Lcom/roblox/engine/a/c;)V

    .line 43
    :cond_0
    return-void
.end method
