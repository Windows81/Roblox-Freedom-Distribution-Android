.class Lcom/roblox/client/jni/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/jni/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/roblox/client/jni/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/jni/a;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/jni/a$2;->c:Lcom/roblox/client/jni/a;

    iput-boolean p2, p0, Lcom/roblox/client/jni/a$2;->a:Z

    iput-object p3, p0, Lcom/roblox/client/jni/a$2;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeCallMessagesFromMainThread()V

    .line 62
    iget-boolean v0, p0, Lcom/roblox/client/jni/a$2;->a:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/roblox/client/jni/a$2;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    :cond_0
    return-void
.end method
