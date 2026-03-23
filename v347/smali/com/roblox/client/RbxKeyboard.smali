.class public Lcom/roblox/client/RbxKeyboard;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field a:J

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/RbxKeyboard;->b:F

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/RbxKeyboard;->b:F

    .line 25
    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->syncTextboxTextAndCursorPosition()V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->isSurfaceCreated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "rbx.keyboard"

    const-string v1, "releaseFocusNative() called unexpectedly"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {p1, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeReleaseFocus(J)V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->a()V

    .line 36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-wide v0, p0, Lcom/roblox/client/RbxKeyboard;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/RbxKeyboard;->a(J)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/roblox/client/RbxKeyboard;->a:J

    .line 42
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-super {p0, p2}, Landroid/support/v7/widget/AppCompatEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->a()V

    goto :goto_0
.end method

.method public setCurrentTextBox(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/roblox/client/RbxKeyboard;->a:J

    .line 30
    return-void
.end method

.method public setRbxLetterSpacing(F)V
    .locals 2

    .prologue
    .line 59
    iput p1, p0, Lcom/roblox/client/RbxKeyboard;->b:F

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 61
    iget v0, p0, Lcom/roblox/client/RbxKeyboard;->b:F

    invoke-virtual {p0, v0}, Lcom/roblox/client/RbxKeyboard;->setLetterSpacing(F)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/RbxKeyboard;->b()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/roblox/client/RbxKeyboard;->b()V

    .line 79
    :cond_0
    return-void
.end method
