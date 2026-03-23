.class Lcom/roblox/client/components/c$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/c;->d()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/c;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/roblox/client/components/c;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/roblox/client/components/c$1;->a:Lcom/roblox/client/components/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/components/c$1;->b:Z

    .line 112
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd() cancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/roblox/client/components/c$1;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/roblox/client/components/c$1;->b:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/roblox/client/components/c$1;->a:Lcom/roblox/client/components/c;

    invoke-static {v0}, Lcom/roblox/client/components/c;->a(Lcom/roblox/client/components/c;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/components/c$1$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/components/c$1$1;-><init>(Lcom/roblox/client/components/c$1;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/components/c$1;->b:Z

    .line 108
    return-void
.end method
