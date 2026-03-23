.class abstract Lcom/roblox/client/FragmentGlView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/FragmentGlView;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentGlView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    iput-object p2, p0, Lcom/roblox/client/FragmentGlView$c;->a:Ljava/lang/String;

    .line 1053
    iput-boolean p3, p0, Lcom/roblox/client/FragmentGlView$c;->c:Z

    .line 1054
    return-void
.end method


# virtual methods
.method abstract a(Z)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    iget-object v0, v0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 1066
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGlView$c;->c:Z

    invoke-virtual {p0, v0}, Lcom/roblox/client/FragmentGlView$c;->a(Z)V

    .line 1068
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView$c;->a:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    iget-object v0, v0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    iget-object v0, v0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->requestFocus()Z

    .line 1073
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    invoke-static {v0}, Lcom/roblox/client/FragmentGlView;->access$300(Lcom/roblox/client/FragmentGlView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1074
    iget-object v2, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    iget-object v2, v2, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1076
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    iget-object v0, v0, Lcom/roblox/client/FragmentGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setSelection(I)V

    .line 1077
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$c;->b:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->syncTextboxTextAndCursorPosition()V

    .line 1078
    return-void
.end method
