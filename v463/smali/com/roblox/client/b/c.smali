.class public Lcom/roblox/client/b/c;
.super Landroidx/fragment/app/b;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/b/c$a;
    }
.end annotation


# instance fields
.field private ag:Lcom/roblox/client/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method

.method private ao()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/roblox/client/b/c;->a()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/roblox/client/b/c;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 80
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 81
    :goto_0
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x11

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 86
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/b;->F()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 60
    sget p3, Lcom/roblox/client/o$g;->dialog_fragment_app_rating:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    sget p2, Lcom/roblox/client/o$f;->dialog_rating_positive_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p2, Lcom/roblox/client/o$f;->dialog_rating_negative_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget p2, Lcom/roblox/client/o$f;->dialog_rating_skip_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p2, Lcom/roblox/client/o$f;->dialog_rating_close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public a(Lcom/roblox/client/b/c$a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->b(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/roblox/client/b/c;->e(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/roblox/client/b/c;->d()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/b/c;->a(II)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/roblox/client/b/c;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/roblox/client/b/c;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 133
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/b;->j()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/roblox/client/b/c$a;->b()V

    goto :goto_0

    :cond_0
    const-string p1, "RateMeMaybeFragment"

    const-string v0, "onCancel - mInterface is null"

    .line 95
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    if-nez v0, :cond_0

    const-string p1, "RateMeMaybeFragment"

    const-string v0, "onClick - mInterface is null"

    .line 102
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->dialog_rating_close_btn:I

    if-ne v0, v1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    invoke-interface {p1}, Lcom/roblox/client/b/c$a;->b()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->dialog_rating_negative_btn:I

    if-ne v0, v1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    invoke-interface {p1}, Lcom/roblox/client/b/c$a;->c()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->dialog_rating_positive_btn:I

    if-ne v0, v1, :cond_3

    .line 111
    iget-object p1, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    invoke-virtual {p0}, Lcom/roblox/client/b/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/roblox/client/b/c$a;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/roblox/client/o$f;->dialog_rating_skip_btn:I

    if-ne p1, v0, :cond_4

    .line 113
    iget-object p1, p0, Lcom/roblox/client/b/c;->ag:Lcom/roblox/client/b/c$a;

    invoke-interface {p1}, Lcom/roblox/client/b/c$a;->d()V

    .line 116
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/b/c;->ao()V

    return-void
.end method
