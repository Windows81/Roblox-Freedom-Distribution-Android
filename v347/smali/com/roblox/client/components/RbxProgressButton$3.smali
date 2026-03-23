.class Lcom/roblox/client/components/RbxProgressButton$3;
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
.field final synthetic a:Lcom/roblox/client/components/RbxProgressButton;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxProgressButton;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton$3;->a:Lcom/roblox/client/components/RbxProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$3;->a:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->c:Lcom/roblox/client/components/RbxProgressButton$a;

    invoke-static {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton;Lcom/roblox/client/components/RbxProgressButton$a;)Lcom/roblox/client/components/RbxProgressButton$a;

    .line 300
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$3;->a:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->b(Lcom/roblox/client/components/RbxProgressButton;)V

    .line 301
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
