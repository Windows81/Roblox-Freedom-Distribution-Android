.class public Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;
.super Lcom/roblox/engine/jni/EngineJavaCallback2;
.source "SourceFile"


# instance fields
.field protected b:Lcom/roblox/engine/jni/EngineJavaCallback2;


# direct methods
.method public constructor <init>(Lcom/roblox/engine/jni/EngineJavaCallback2;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/roblox/engine/jni/EngineJavaCallback2;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(J)V

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(JZ[B)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(JZ[B)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b:Lcom/roblox/engine/jni/EngineJavaCallback2;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->c()V

    :cond_0
    return-void
.end method
