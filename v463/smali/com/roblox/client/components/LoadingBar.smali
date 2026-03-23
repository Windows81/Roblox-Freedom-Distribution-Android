.class public Lcom/roblox/client/components/LoadingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/LoadingBar$b;,
        Lcom/roblox/client/components/LoadingBar$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/components/LoadingBar;->a()V

    return-void
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .line 134
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/components/LoadingBar;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/roblox/client/components/LoadingBar;->b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/roblox/client/components/LoadingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$g;->loading_bar:I

    invoke-static {v0, v1, p0}, Lcom/roblox/client/components/LoadingBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    sget v1, Lcom/roblox/client/o$f;->dotImage1:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/LoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    sget v1, Lcom/roblox/client/o$f;->dotImage2:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/LoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    sget v1, Lcom/roblox/client/o$f;->dotImage3:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/components/LoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 3

    .line 142
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x320

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/components/LoadingBar;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/roblox/client/components/LoadingBar;->a(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 86
    new-instance v3, Lcom/roblox/client/components/LoadingBar$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/roblox/client/components/LoadingBar$b;-><init>(Lcom/roblox/client/components/LoadingBar;Lcom/roblox/client/components/LoadingBar$1;)V

    .line 87
    new-instance v5, Lcom/roblox/client/components/LoadingBar$a;

    invoke-direct {v5, p0, v4}, Lcom/roblox/client/components/LoadingBar$a;-><init>(Lcom/roblox/client/components/LoadingBar;Lcom/roblox/client/components/LoadingBar$1;)V

    .line 89
    invoke-virtual {v5, v2}, Lcom/roblox/client/components/LoadingBar$a;->a(Landroid/widget/ImageView;)V

    .line 90
    iput-object v3, v5, Lcom/roblox/client/components/LoadingBar$a;->b:Lcom/roblox/client/components/LoadingBar$b;

    .line 92
    iput-object v5, v3, Lcom/roblox/client/components/LoadingBar$b;->a:Lcom/roblox/client/components/LoadingBar$a;

    .line 93
    invoke-virtual {v3, v2}, Lcom/roblox/client/components/LoadingBar$b;->a(Landroid/widget/ImageView;)V

    .line 96
    invoke-direct {p0, v3}, Lcom/roblox/client/components/LoadingBar;->b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x190

    int-to-long v4, v4

    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 98
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 72
    iget-boolean p1, p0, Lcom/roblox/client/components/LoadingBar;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/roblox/client/components/LoadingBar;->b:Z

    .line 74
    invoke-direct {p0}, Lcom/roblox/client/components/LoadingBar;->b()V

    :cond_0
    return-void
.end method
