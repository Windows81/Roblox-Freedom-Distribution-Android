.class public abstract Lcom/roblox/client/game/c;
.super Lcom/roblox/engine/jni/EngineJavaCallback2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/roblox/engine/jni/EngineJavaCallback2;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/roblox/client/game/o;
.end method

.method public a(JZ[B)V
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/roblox/client/game/c;->a()Lcom/roblox/client/game/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 16
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/roblox/client/game/o;->a(JZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/roblox/client/game/c;->a()Lcom/roblox/client/game/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Lcom/roblox/client/game/o;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/roblox/client/game/c;->a()Lcom/roblox/client/game/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/roblox/client/game/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/roblox/client/game/c;->a()Lcom/roblox/client/game/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/roblox/client/game/o;->b()V

    :cond_0
    return-void
.end method
