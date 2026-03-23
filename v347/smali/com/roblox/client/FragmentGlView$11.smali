.class Lcom/roblox/client/FragmentGlView$11;
.super Lcom/roblox/client/FragmentGlView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentGlView;->getShowKeyboardRunnable(ZLjava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/FragmentGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentGlView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$11;->a:Lcom/roblox/client/FragmentGlView;

    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/FragmentGlView$c;-><init>(Lcom/roblox/client/FragmentGlView;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 3

    .prologue
    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$11;->a:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getCurrentScreenDensity()F
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1006
    if-eqz p1, :cond_0

    const/16 v0, 0x24

    move v1, v0

    .line 1008
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$11;->a:Lcom/roblox/client/FragmentGlView;

    iget-object v0, v0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1009
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1010
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView$11;->a:Lcom/roblox/client/FragmentGlView;

    iget-object v1, v1, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v1, v0}, Lcom/roblox/client/RbxKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    :goto_1
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 1000
    :goto_2
    const-string v0, "rbx.glview"

    const-string v1, "Error getting screen density. Fragment detached?"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1006
    :cond_0
    const/16 v0, -0x96

    move v1, v0

    goto :goto_0

    .line 998
    :catch_1
    move-exception v0

    goto :goto_2
.end method
