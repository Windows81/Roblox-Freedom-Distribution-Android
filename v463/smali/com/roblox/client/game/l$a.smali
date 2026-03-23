.class Lcom/roblox/client/game/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/RbxKeyboard$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/l;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/l;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/roblox/client/game/l$a;->a:Lcom/roblox/client/game/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/roblox/client/game/l$a;->a:Lcom/roblox/client/game/l;

    invoke-static {v0}, Lcom/roblox/client/game/l;->a(Lcom/roblox/client/game/l;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 354
    invoke-static {p1, p2}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeReleaseFocus(J)V

    return-void
.end method
