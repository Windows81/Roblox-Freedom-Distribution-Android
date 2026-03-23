.class Lcom/roblox/client/components/a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/a;->c()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/a;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/roblox/client/components/a;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/roblox/client/components/a$1;->a:Lcom/roblox/client/components/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/roblox/client/components/a$1;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/roblox/client/e/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd() cancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/roblox/client/components/a$1;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/roblox/client/components/a$1;->b:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/roblox/client/components/a$1;->a:Lcom/roblox/client/components/a;

    invoke-static {v0}, Lcom/roblox/client/components/a;->a(Lcom/roblox/client/components/a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/components/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/components/a$1$1;-><init>(Lcom/roblox/client/components/a$1;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/roblox/client/components/a$1;->b:Z

    return-void
.end method
