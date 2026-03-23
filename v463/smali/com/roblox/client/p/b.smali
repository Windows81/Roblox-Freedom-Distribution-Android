.class public Lcom/roblox/client/p/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 48
    sget v0, Lcom/roblox/client/o$g;->inset_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    sget v0, Lcom/roblox/client/o$f;->inset_layout_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/roblox/client/p/b;->a:Landroid/view/ViewGroup;

    .line 50
    sget v0, Lcom/roblox/client/o$f;->inset_layout_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/p/b;->b:Landroid/view/View;

    .line 51
    sget v0, Lcom/roblox/client/o$f;->inset_layout_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/p/b;->c:Landroid/view/View;

    .line 52
    sget v0, Lcom/roblox/client/o$f;->inset_layout_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/p/b;->d:Landroid/view/View;

    return-object p1
.end method

.method private a(Lcom/roblox/client/r;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/roblox/client/r;->L()Lcom/roblox/client/p/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/p/a;->a()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/p/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/p/b$1;-><init>(Lcom/roblox/client/p/b;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/view/View;
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/roblox/client/p/b;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 32
    instance-of v0, p2, Lcom/roblox/client/r;

    if-eqz v0, :cond_0

    .line 33
    check-cast p2, Lcom/roblox/client/r;

    invoke-direct {p0, p2}, Lcom/roblox/client/p/b;->a(Lcom/roblox/client/r;)V

    :cond_0
    return-object p1
.end method

.method public a(Landroid/view/LayoutInflater;Lcom/roblox/client/r;)Landroid/view/View;
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/roblox/client/p/b;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 41
    instance-of v0, p2, Lcom/roblox/client/r;

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, p2}, Lcom/roblox/client/p/b;->a(Lcom/roblox/client/r;)V

    :cond_0
    return-object p1
.end method

.method public a()Landroid/view/ViewGroup;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/roblox/client/p/b;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/roblox/client/p/b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/roblox/client/p/b;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting insets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "rbx.screen"

    invoke-static {v0, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p2, p0, Lcom/roblox/client/p/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_0
    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-eq v3, p3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 80
    :goto_1
    iget v4, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v4, p4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    .line 82
    :cond_4
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 83
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 84
    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 85
    iget-object v2, p0, Lcom/roblox/client/p/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_5
    iget-object p2, p0, Lcom/roblox/client/p/b;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_6

    .line 90
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 91
    iget-object p1, p0, Lcom/roblox/client/p/b;->b:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :cond_6
    iget-object p1, p0, Lcom/roblox/client/p/b;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_7

    .line 96
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 97
    iget-object p2, p0, Lcom/roblox/client/p/b;->c:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :cond_7
    iget-object p1, p0, Lcom/roblox/client/p/b;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_8

    .line 102
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 103
    iget-object p2, p0, Lcom/roblox/client/p/b;->d:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method
