.class public Lcom/roblox/client/friends/nearby/a/e;
.super Lcom/roblox/client/friends/nearby/a/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/nearby/a/e$a;,
        Lcom/roblox/client/friends/nearby/a/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/client/friends/nearby/a/b/a<",
        "Lcom/roblox/client/friends/nearby/b/a/a;",
        "Lcom/roblox/client/h/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/databinding/e;

.field private final b:Lcom/roblox/client/friends/nearby/a/e$b;


# direct methods
.method public constructor <init>(Landroidx/databinding/e;Lcom/roblox/client/friends/nearby/a/e$b;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/roblox/client/friends/nearby/a/b/a;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/e;->a:Landroidx/databinding/e;

    .line 29
    iput-object p2, p0, Lcom/roblox/client/friends/nearby/a/e;->b:Lcom/roblox/client/friends/nearby/a/e$b;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/nearby/a/e;)Lcom/roblox/client/friends/nearby/a/e$b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/roblox/client/friends/nearby/a/e;->b:Lcom/roblox/client/friends/nearby/a/e$b;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Lcom/roblox/client/h/a;
    .locals 4

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$g;->nearby_user_item:I

    iget-object v2, p0, Lcom/roblox/client/friends/nearby/a/e;->a:Landroidx/databinding/e;

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/e;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/h/a;

    .line 39
    invoke-virtual {p1}, Lcom/roblox/client/h/a;->d()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/nearby/a/e$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/friends/nearby/a/e$1;-><init>(Lcom/roblox/client/friends/nearby/a/e;Lcom/roblox/client/h/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p1}, Lcom/roblox/client/h/a;->d()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/nearby/a/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/friends/nearby/a/e$a;-><init>(Lcom/roblox/client/friends/nearby/a/e;Lcom/roblox/client/friends/nearby/a/e$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method protected bridge synthetic a(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/roblox/client/h/a;

    check-cast p2, Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/friends/nearby/a/e;->a(Lcom/roblox/client/h/a;Lcom/roblox/client/friends/nearby/b/a/a;)V

    return-void
.end method

.method protected a(Lcom/roblox/client/h/a;Lcom/roblox/client/friends/nearby/b/a/a;)V
    .locals 8

    .line 56
    invoke-virtual {p1, p2}, Lcom/roblox/client/h/a;->a(Lcom/roblox/client/friends/nearby/b/a/a;)V

    .line 58
    invoke-virtual {p2}, Lcom/roblox/client/friends/nearby/b/a/a;->e()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/roblox/client/h/a;->d()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$f;->nearby_user_back_img_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p1}, Lcom/roblox/client/h/a;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$f;->nearby_user_img_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 62
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 66
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x1f4

    .line 67
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v0, -0x1

    .line 68
    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 69
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$a;->pulse_animation:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected synthetic b(Landroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/roblox/client/friends/nearby/a/e;->a(Landroid/view/ViewGroup;)Lcom/roblox/client/h/a;

    move-result-object p1

    return-object p1
.end method
