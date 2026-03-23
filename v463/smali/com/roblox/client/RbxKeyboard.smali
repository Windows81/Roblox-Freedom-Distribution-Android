.class public Lcom/roblox/client/RbxKeyboard;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RbxKeyboard$a;
    }
.end annotation


# instance fields
.field a:J

.field private b:Lcom/roblox/client/RbxKeyboard$a;

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/roblox/client/RbxKeyboard;->c:F

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/roblox/client/RbxKeyboard;->b:Lcom/roblox/client/RbxKeyboard$a;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/roblox/client/RbxKeyboard$a;->a()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/roblox/client/RbxKeyboard;->b:Lcom/roblox/client/RbxKeyboard$a;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1, p2}, Lcom/roblox/client/RbxKeyboard$a;->a(J)V

    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->a()V

    .line 44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 47
    iget-wide v0, p0, Lcom/roblox/client/RbxKeyboard;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/RbxKeyboard;->a(J)V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/roblox/client/RbxKeyboard;->a:J

    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    const-string p1, ""

    .line 51
    invoke-virtual {p0, p1}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    :cond_0
    invoke-super {p0, p2}, Landroidx/appcompat/widget/AppCompatEditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->a()V

    return-void
.end method

.method public setAdapter(Lcom/roblox/client/RbxKeyboard$a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/roblox/client/RbxKeyboard;->b:Lcom/roblox/client/RbxKeyboard$a;

    return-void
.end method

.method public setCurrentTextBox(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/roblox/client/RbxKeyboard;->a:J

    return-void
.end method

.method public setRbxLetterSpacing(F)V
    .locals 1

    .line 67
    iput p1, p0, Lcom/roblox/client/RbxKeyboard;->c:F

    .line 68
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 69
    iget p1, p0, Lcom/roblox/client/RbxKeyboard;->c:F

    invoke-virtual {p0, p1}, Lcom/roblox/client/RbxKeyboard;->setLetterSpacing(F)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/RbxKeyboard;->b()V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 84
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/roblox/client/RbxKeyboard;->b()V

    :cond_0
    return-void
.end method
