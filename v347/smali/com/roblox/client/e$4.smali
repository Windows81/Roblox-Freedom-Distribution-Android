.class Lcom/roblox/client/e$4;
.super Lcom/roblox/client/FragmentGlView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/e;->getShowKeyboardRunnable(ZLjava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/e;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/roblox/client/e$4;->a:Lcom/roblox/client/e;

    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/FragmentGlView$c;-><init>(Lcom/roblox/client/FragmentGlView;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 3

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeGetTextBoxInfo()Lcom/roblox/engine/components/NativeTextBoxInfo;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/roblox/client/e$4;->a:Lcom/roblox/client/e;

    iget-object v2, p0, Lcom/roblox/client/e$4;->a:Lcom/roblox/client/e;

    iget-object v2, v2, Lcom/roblox/client/e;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-static {v1, v0, v2}, Lcom/roblox/client/e;->a(Lcom/roblox/client/e;Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V

    .line 192
    :cond_0
    return-void
.end method
