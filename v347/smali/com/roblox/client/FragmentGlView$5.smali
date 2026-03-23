.class Lcom/roblox/client/FragmentGlView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentGlView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/FragmentGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentGlView;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$5;->a:Lcom/roblox/client/FragmentGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$5;->a:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->alertIfNetworkNotConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$5;->a:Lcom/roblox/client/FragmentGlView;

    invoke-static {v0}, Lcom/roblox/client/FragmentGlView;->access$000(Lcom/roblox/client/FragmentGlView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$5;->a:Lcom/roblox/client/FragmentGlView;

    invoke-static {v0}, Lcom/roblox/client/FragmentGlView;->access$100(Lcom/roblox/client/FragmentGlView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$5;->a:Lcom/roblox/client/FragmentGlView;

    invoke-static {v0}, Lcom/roblox/client/FragmentGlView;->access$200(Lcom/roblox/client/FragmentGlView;)V

    .line 532
    :cond_0
    return-void
.end method
