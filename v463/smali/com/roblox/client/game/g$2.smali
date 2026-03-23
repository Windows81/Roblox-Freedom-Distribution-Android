.class Lcom/roblox/client/game/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 72
    iput-object p1, p0, Lcom/roblox/client/game/g$2;->a:Lcom/roblox/client/game/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 78
    iget-object p3, p0, Lcom/roblox/client/game/g$2;->a:Lcom/roblox/client/game/g;

    invoke-static {p3}, Lcom/roblox/client/game/g;->a(Lcom/roblox/client/game/g;)V

    .line 80
    iget-object p3, p0, Lcom/roblox/client/game/g$2;->a:Lcom/roblox/client/game/g;

    invoke-static {p3}, Lcom/roblox/client/game/g;->b(Lcom/roblox/client/game/g;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 81
    iget-object p3, p0, Lcom/roblox/client/game/g$2;->a:Lcom/roblox/client/game/g;

    invoke-static {p3}, Lcom/roblox/client/game/g;->c(Lcom/roblox/client/game/g;)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    add-int/2addr p2, p4

    invoke-static {v0, v1, p1, p3, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassText(JLjava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    const-string p1, "rbx.game"

    const-string p2, "nativePassText not ready"

    .line 83
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
