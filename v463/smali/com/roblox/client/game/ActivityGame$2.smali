.class Lcom/roblox/client/game/ActivityGame$2;
.super Lcom/roblox/engine/jni/EngineExitJavaCallback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/game/ActivityGame;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/ActivityGame;


# direct methods
.method constructor <init>(Lcom/roblox/client/game/ActivityGame;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/roblox/client/game/ActivityGame$2;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-direct {p0}, Lcom/roblox/engine/jni/EngineExitJavaCallback2;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/roblox/client/game/ActivityGame$2;->a:Lcom/roblox/client/game/ActivityGame;

    invoke-static {v0}, Lcom/roblox/client/game/ActivityGame;->b(Lcom/roblox/client/game/ActivityGame;)V

    return-void
.end method
