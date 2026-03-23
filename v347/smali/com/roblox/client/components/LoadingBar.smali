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
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0}, Lcom/roblox/client/components/LoadingBar;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Lcom/roblox/client/components/LoadingBar;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0}, Lcom/roblox/client/components/LoadingBar;->a()V

    .line 60
    return-void
.end method

.method private a(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 135
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/components/LoadingBar;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/roblox/client/components/LoadingBar;->b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/roblox/client/components/LoadingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0078

    invoke-static {v0, v1, p0}, Lcom/roblox/client/components/LoadingBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/LoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/LoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/LoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 143
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/components/LoadingBar;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/roblox/client/components/LoadingBar;->a(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    new-instance v3, Lcom/roblox/client/components/LoadingBar$b;

    invoke-direct {v3, p0, v6}, Lcom/roblox/client/components/LoadingBar$b;-><init>(Lcom/roblox/client/components/LoadingBar;Lcom/roblox/client/components/LoadingBar$1;)V

    .line 87
    new-instance v4, Lcom/roblox/client/components/LoadingBar$a;

    invoke-direct {v4, p0, v6}, Lcom/roblox/client/components/LoadingBar$a;-><init>(Lcom/roblox/client/components/LoadingBar;Lcom/roblox/client/components/LoadingBar$1;)V

    .line 89
    invoke-virtual {v4, v0}, Lcom/roblox/client/components/LoadingBar$a;->a(Landroid/widget/ImageView;)V

    .line 90
    iput-object v3, v4, Lcom/roblox/client/components/LoadingBar$a;->b:Lcom/roblox/client/components/LoadingBar$b;

    .line 92
    iput-object v4, v3, Lcom/roblox/client/components/LoadingBar$b;->a:Lcom/roblox/client/components/LoadingBar$a;

    .line 93
    invoke-virtual {v3, v0}, Lcom/roblox/client/components/LoadingBar$b;->a(Landroid/widget/ImageView;)V

    .line 96
    invoke-direct {p0, v3}, Lcom/roblox/client/components/LoadingBar;->b(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    .line 97
    mul-int/lit16 v4, v1, 0x190

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 98
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/components/LoadingBar;->b:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/components/LoadingBar;->b:Z

    .line 74
    invoke-direct {p0}, Lcom/roblox/client/components/LoadingBar;->b()V

    .line 76
    :cond_0
    return-void
.end method
