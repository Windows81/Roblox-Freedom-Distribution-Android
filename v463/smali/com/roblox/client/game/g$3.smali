.class Lcom/roblox/client/game/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/RbxKeyboard$a;


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

    .line 91
    iput-object p1, p0, Lcom/roblox/client/game/g$3;->a:Lcom/roblox/client/game/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/roblox/client/game/g$3;->a:Lcom/roblox/client/game/g;

    invoke-static {v0}, Lcom/roblox/client/game/g;->a(Lcom/roblox/client/game/g;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/roblox/client/game/g$3;->a:Lcom/roblox/client/game/g;

    invoke-static {v0}, Lcom/roblox/client/game/g;->b(Lcom/roblox/client/game/g;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "rbx.keyboard"

    const-string p2, "releaseFocus() called unexpectedly"

    .line 95
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    invoke-static {p1, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeReleaseFocus(J)V

    return-void
.end method
