.class Lcom/roblox/client/FragmentGlView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentGlView;->initGlEditTextView()V
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
    .line 683
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$9;->a:Lcom/roblox/client/FragmentGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 686
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView$9;->a:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentGlView;->syncTextboxTextAndCursorPosition()V

    .line 688
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 689
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView$9;->a:Lcom/roblox/client/FragmentGlView;

    invoke-static {v2}, Lcom/roblox/client/FragmentGlView;->access$700(Lcom/roblox/client/FragmentGlView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 691
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView$9;->a:Lcom/roblox/client/FragmentGlView;

    invoke-static {v2}, Lcom/roblox/client/FragmentGlView;->access$800(Lcom/roblox/client/FragmentGlView;)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-static {v2, v3, v1, v0, v4}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassText(JLjava/lang/String;ZI)V

    .line 695
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView$9;->a:Lcom/roblox/client/FragmentGlView;

    iget-object v1, v1, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 697
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 703
    :goto_1
    return v0

    .line 693
    :cond_0
    const-string v1, "rbx.glview"

    const-string v2, "nativePassText not ready"

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
