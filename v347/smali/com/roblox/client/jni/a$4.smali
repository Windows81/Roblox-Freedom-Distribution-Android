.class Lcom/roblox/client/jni/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/jni/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/jni/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/jni/a;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/roblox/client/jni/a$4;->a:Lcom/roblox/client/jni/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeCallMessagesFromMainThread()V

    .line 88
    return-void
.end method
