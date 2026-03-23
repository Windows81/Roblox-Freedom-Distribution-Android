.class Lcom/roblox/client/components/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/c$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator;

.field final synthetic b:Lcom/roblox/client/components/c$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/c$1;Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/roblox/client/components/c$1$1;->b:Lcom/roblox/client/components/c$1;

    iput-object p2, p0, Lcom/roblox/client/components/c$1$1;->a:Landroid/animation/Animator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/roblox/client/components/c$1$1;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 121
    return-void
.end method
