.class Lcom/roblox/client/components/RbxProgressButton$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/RbxProgressButton;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/AlphaAnimation;

.field final synthetic b:Lcom/roblox/client/components/RbxProgressButton;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxProgressButton;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/components/RbxProgressButton$6;->a:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 372
    iget-object p1, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {p1}, Lcom/roblox/client/components/RbxProgressButton;->g(Lcom/roblox/client/components/RbxProgressButton;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->e(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->e(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->f(Lcom/roblox/client/components/RbxProgressButton;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object p1, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    iget-object p1, p0, Lcom/roblox/client/components/RbxProgressButton$6;->b:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {p1}, Lcom/roblox/client/components/RbxProgressButton;->g(Lcom/roblox/client/components/RbxProgressButton;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$6;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
