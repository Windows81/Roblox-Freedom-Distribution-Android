.class Lcom/roblox/client/game/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/l;-><init>(Lcom/roblox/client/RbxKeyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/l;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/l;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/roblox/client/game/l$1;->a:Lcom/roblox/client/game/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEditorAction() text:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "rbx.glview.text"

    invoke-static {v0, p3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p3, p0, Lcom/roblox/client/game/l$1;->a:Lcom/roblox/client/game/l;

    invoke-static {p3}, Lcom/roblox/client/game/l;->a(Lcom/roblox/client/game/l;)V

    .line 60
    invoke-static {}, Lcom/roblox/client/x/c;->m()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 61
    iget-object p3, p0, Lcom/roblox/client/game/l$1;->a:Lcom/roblox/client/game/l;

    invoke-static {p3}, Lcom/roblox/client/game/l;->b(Lcom/roblox/client/game/l;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeReturnPressedFromOnScreenKeyboard(J)V

    .line 64
    :cond_0
    iget-object p3, p0, Lcom/roblox/client/game/l$1;->a:Lcom/roblox/client/game/l;

    invoke-static {p3}, Lcom/roblox/client/game/l;->c(Lcom/roblox/client/game/l;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/roblox/client/b;->cp()Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    const/4 p3, 0x4

    if-eq p2, p3, :cond_3

    .line 67
    invoke-static {}, Lcom/roblox/client/b;->cq()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 70
    iget-object p3, p0, Lcom/roblox/client/game/l$1;->a:Lcom/roblox/client/game/l;

    invoke-static {p3}, Lcom/roblox/client/game/l;->b(Lcom/roblox/client/game/l;)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p3

    invoke-static {v1, v2, p2, v0, p3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassText(JLjava/lang/String;ZI)V

    .line 72
    iget-object p2, p0, Lcom/roblox/client/game/l$1;->a:Lcom/roblox/client/game/l;

    iget-object p2, p2, Lcom/roblox/client/game/l;->b:Lcom/roblox/client/RbxKeyboard;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    const/16 p2, 0x8

    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    return v0
.end method
