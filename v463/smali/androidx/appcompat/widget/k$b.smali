.class Landroidx/appcompat/widget/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/k;)V
    .locals 0

    .line 700
    iput-object p1, p0, Landroidx/appcompat/widget/k$b;->a:Landroidx/appcompat/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 711
    iget-object v0, p0, Landroidx/appcompat/widget/k$b;->a:Landroidx/appcompat/widget/k;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/k;->mResolveHoverRunnable:Landroidx/appcompat/widget/k$b;

    .line 712
    iget-object v0, p0, Landroidx/appcompat/widget/k$b;->a:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/k;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 716
    iget-object v0, p0, Landroidx/appcompat/widget/k$b;->a:Landroidx/appcompat/widget/k;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/k;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 706
    iget-object v0, p0, Landroidx/appcompat/widget/k$b;->a:Landroidx/appcompat/widget/k;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/k;->mResolveHoverRunnable:Landroidx/appcompat/widget/k$b;

    .line 707
    iget-object v0, p0, Landroidx/appcompat/widget/k$b;->a:Landroidx/appcompat/widget/k;

    invoke-virtual {v0}, Landroidx/appcompat/widget/k;->drawableStateChanged()V

    return-void
.end method
