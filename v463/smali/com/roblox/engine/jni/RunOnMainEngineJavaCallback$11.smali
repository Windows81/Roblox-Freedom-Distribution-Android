.class Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;


# direct methods
.method constructor <init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$11;->a:Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$11;->a:Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;

    invoke-static {v0}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->b(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;)V

    return-void
.end method
