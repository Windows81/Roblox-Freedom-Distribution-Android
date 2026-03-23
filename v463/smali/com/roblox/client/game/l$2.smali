.class Lcom/roblox/client/game/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 85
    iput-object p1, p0, Lcom/roblox/client/game/l$2;->a:Lcom/roblox/client/game/l;

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

    .line 91
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTextChanged() text:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "rbx.glview.text"

    invoke-static {v0, p3}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p3, p0, Lcom/roblox/client/game/l$2;->a:Lcom/roblox/client/game/l;

    invoke-static {p3}, Lcom/roblox/client/game/l;->a(Lcom/roblox/client/game/l;)V

    .line 94
    iget-object p3, p0, Lcom/roblox/client/game/l$2;->a:Lcom/roblox/client/game/l;

    invoke-static {p3}, Lcom/roblox/client/game/l;->b(Lcom/roblox/client/game/l;)J

    move-result-wide v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/2addr p2, p4

    const/4 p3, 0x0

    invoke-static {v0, v1, p1, p3, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativePassText(JLjava/lang/String;ZI)V

    return-void
.end method
