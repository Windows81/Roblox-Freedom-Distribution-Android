.class public Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;
.super Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/roblox/engine/jni/EngineJavaCallback2;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;-><init>(Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    .line 11
    iput-object p1, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;)V
    .locals 0

    .line 5
    invoke-super {p0}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;I)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;J)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;JZ[B)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->a(JZ[B)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;)V
    .locals 0

    .line 5
    invoke-super {p0}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->c()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;I)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/roblox/engine/jni/EngineJavaCallbackWrapper;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$4;

    invoke-direct {v1, p0, p1}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$4;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$9;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v7, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$3;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(JZ[B)V
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v7, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$1;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;JZ[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$5;

    invoke-direct {v1, p0, p1}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$5;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$2;

    invoke-direct {v1, p0}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$2;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$6;

    invoke-direct {v1, p0, p1}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$6;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$10;

    invoke-direct {v1, p0, p1}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$10;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$8;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$11;

    invoke-direct {v1, p0}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$11;-><init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
