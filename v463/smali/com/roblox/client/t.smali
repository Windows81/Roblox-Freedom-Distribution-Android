.class public Lcom/roblox/client/t;
.super Lcom/roblox/client/v;
.source "SourceFile"


# instance fields
.field private az:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/roblox/client/v;-><init>()V

    return-void
.end method

.method private a(FFIIII)Landroid/graphics/Point;
    .locals 2

    .line 153
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcom/roblox/client/b;->aV()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/roblox/client/b;->aW()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    int-to-float v0, p5

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_6

    int-to-float v0, p6

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_6

    const v0, 0x3f666666    # 0.9f

    mul-float v0, v0, p1

    float-to-int v0, v0

    if-le v0, p5, :cond_2

    move p5, v0

    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p2

    float-to-int v0, v0

    if-le v0, p6, :cond_3

    move p6, v0

    :cond_3
    int-to-float v0, p4

    cmpl-float p2, v0, p2

    if-lez p2, :cond_4

    move p4, p6

    :cond_4
    int-to-float p2, p3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    move p3, p5

    .line 184
    :cond_5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    :cond_6
    return-object v1
.end method


# virtual methods
.method public F()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/roblox/client/v;->F()V

    const-string v0, "RobloxModalWebFragment"

    const-string v1, "onResume."

    .line 104
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public G()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/roblox/client/v;->G()V

    const-string v0, "RobloxModalWebFragment"

    const-string v1, "onPause."

    .line 110
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/v;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const-string p3, "RobloxModalWebFragment"

    const-string v0, "onCreate."

    .line 35
    invoke-static {p3, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/roblox/client/t;->az:Landroid/widget/FrameLayout;

    .line 38
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 41
    iget-object v0, p0, Lcom/roblox/client/t;->az:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 43
    sget p2, Lcom/roblox/client/o$f;->webview_close_button_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    sget v1, Lcom/roblox/client/o$f;->webview_close_button:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/t$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/t$1;-><init>(Lcom/roblox/client/t;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/roblox/client/t;->s()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v1

    .line 57
    invoke-virtual {p0}, Lcom/roblox/client/t;->s()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthInPixels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ". heightInPixels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/roblox/client/b;->aX()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    add-int v8, v1, p2

    .line 61
    invoke-static {}, Lcom/roblox/client/b;->aY()I

    move-result v7

    int-to-float p2, v8

    .line 63
    invoke-virtual {p0}, Lcom/roblox/client/t;->s()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int v6, p2

    int-to-float p2, v7

    .line 64
    invoke-virtual {p0}, Lcom/roblox/client/t;->s()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int v5, p2

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minWidthInDip: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". minHeightInDip: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    .line 67
    invoke-direct/range {v2 .. v8}, Lcom/roblox/client/t;->a(FFIIII)Landroid/graphics/Point;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/16 v2, 0x11

    invoke-direct {p3, v1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    :cond_0
    iget-boolean p2, p0, Lcom/roblox/client/t;->aw:Z

    if-nez p2, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lcom/roblox/client/t;->m(Z)V

    :cond_1
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/roblox/client/v;->a(Landroid/content/Context;)V

    const-string p1, "RobloxModalWebFragment"

    const-string v0, "onAttach."

    .line 116
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/roblox/client/app/d;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/app/d;)V

    const-string p1, "RobloxModalWebFragment"

    const-string v0, "updateWebView."

    .line 129
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/roblox/client/v;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/roblox/client/v;->d(Landroid/os/Bundle;)V

    const-string p1, "RobloxModalWebFragment"

    const-string v0, "onActivityCreated."

    .line 93
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/roblox/client/v;->f()V

    const-string v0, "RobloxModalWebFragment"

    const-string v1, "onDetach."

    .line 122
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/roblox/client/v;->h()V

    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/roblox/client/v;->m(Z)V

    .line 84
    iget-object v0, p0, Lcom/roblox/client/t;->az:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 86
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
