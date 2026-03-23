.class Lcom/roblox/client/game/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/g;-><init>(Lcom/roblox/engine/b$a;Lcom/roblox/client/RbxKeyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/g;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/roblox/client/game/g$1;->a:Lcom/roblox/client/game/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 46
    iget-object p3, p0, Lcom/roblox/client/game/g$1;->a:Lcom/roblox/client/game/g;

    invoke-static {p3}, Lcom/roblox/client/game/g;->a(Lcom/roblox/client/game/g;)V

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    .line 49
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/roblox/client/m/e;->cH()Z

    move-result p3

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    iget-object p3, p0, Lcom/roblox/client/game/g$1;->a:Lcom/roblox/client/game/g;

    invoke-static {p3}, Lcom/roblox/client/game/g;->b(Lcom/roblox/client/game/g;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 56
    iget-object p3, p0, Lcom/roblox/client/game/g$1;->a:Lcom/roblox/client/game/g;

    invoke-static {p3}, Lcom/roblox/client/game/g;->c(Lcom/roblox/client/game/g;)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p3

    invoke-static {v1, v2, p2, v0, p3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassText(JLjava/lang/String;ZI)V

    goto :goto_1

    :cond_2
    const-string p2, "rbx.game"

    const-string p3, "nativePassText not ready"

    .line 58
    invoke-static {p2, p3}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_1
    iget-object p2, p0, Lcom/roblox/client/game/g$1;->a:Lcom/roblox/client/game/g;

    invoke-static {p2}, Lcom/roblox/client/game/g;->d(Lcom/roblox/client/game/g;)Lcom/roblox/client/RbxKeyboard;

    move-result-object p2

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    const/16 p2, 0x8

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    return v0
.end method
