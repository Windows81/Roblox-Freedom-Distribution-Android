.class public Lcom/roblox/client/components/n;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p4, p0, Lcom/roblox/client/components/n;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/roblox/client/components/n;->c:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/roblox/client/components/n;->b:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/components/n;->a(Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/components/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p5}, Lcom/roblox/client/components/n;->a(Z)V

    .line 37
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const v3, 0x7f06009a

    .line 46
    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/roblox/client/components/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/components/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    .line 57
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const v0, 0x7f07076f

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/n;->setBackgroundResource(I)V

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/components/n;->getEventImage()V

    .line 63
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 53
    invoke-virtual {p0}, Lcom/roblox/client/components/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private getEventImage()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/components/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/roblox/client/components/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/d/a/t;->a(Landroid/content/Context;)Lcom/d/a/t;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/n;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Lcom/d/a/t;->a(Ljava/lang/String;)Lcom/d/a/x;

    move-result-object v0

    sget-object v1, Lcom/d/a/t$e;->c:Lcom/d/a/t$e;

    .line 72
    invoke-virtual {v0, v1}, Lcom/d/a/x;->a(Lcom/d/a/t$e;)Lcom/d/a/x;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lcom/d/a/x;->a(Landroid/widget/ImageView;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/roblox/client/components/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/roblox/client/components/n;->b:Ljava/lang/String;

    return-object v0
.end method
