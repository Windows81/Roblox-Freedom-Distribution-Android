.class Lcom/roblox/client/components/LoadingBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/LoadingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Lcom/roblox/client/components/LoadingBar$b;

.field final synthetic c:Lcom/roblox/client/components/LoadingBar;


# direct methods
.method private constructor <init>(Lcom/roblox/client/components/LoadingBar;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/roblox/client/components/LoadingBar$a;->c:Lcom/roblox/client/components/LoadingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/components/LoadingBar;Lcom/roblox/client/components/LoadingBar$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/roblox/client/components/LoadingBar$a;-><init>(Lcom/roblox/client/components/LoadingBar;)V

    return-void
.end method


# virtual methods
.method a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/roblox/client/components/LoadingBar$a;->a:Landroid/widget/ImageView;

    .line 108
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/roblox/client/components/LoadingBar$a;->c:Lcom/roblox/client/components/LoadingBar;

    iget-object v1, p0, Lcom/roblox/client/components/LoadingBar$a;->b:Lcom/roblox/client/components/LoadingBar$b;

    invoke-static {v0, v1}, Lcom/roblox/client/components/LoadingBar;->a(Lcom/roblox/client/components/LoadingBar;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/roblox/client/components/LoadingBar$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
