.class Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;


# direct methods
.method constructor <init>(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;->c:Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;

    iput-object p2, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;->c:Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;

    iget-object v1, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback$7;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;->a(Lcom/roblox/engine/jni/RunOnMainEngineJavaCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
