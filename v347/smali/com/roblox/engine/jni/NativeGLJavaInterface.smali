.class public Lcom/roblox/engine/jni/NativeGLJavaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sImplementation:Lcom/roblox/engine/jni/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/roblox/engine/jni/c;

    invoke-direct {v0}, Lcom/roblox/engine/jni/c;-><init>()V

    sput-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitGame()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->c()V

    .line 50
    return-void
.end method

.method public static exitGameWithError(I)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0}, Lcom/roblox/engine/jni/b;->a(I)V

    .line 55
    return-void
.end method

.method public static gameDidLeave()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->d()V

    .line 60
    return-void
.end method

.method public static gameLoadedCallback(J)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0, p1}, Lcom/roblox/engine/jni/b;->a(J)V

    .line 112
    return-void
.end method

.method public static getApiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImplementation()Lcom/roblox/engine/jni/b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    return-object v0
.end method

.method public static getUsedMemoryInKB()I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->g()I

    move-result v0

    return v0
.end method

.method public static hideKeyboard()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->b()V

    .line 41
    return-void
.end method

.method public static listenToMotionEvents(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0}, Lcom/roblox/engine/jni/b;->a(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static onDataModelNotificationCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0, p1}, Lcom/roblox/engine/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static onLeaveGameFinished()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->e()V

    .line 65
    return-void
.end method

.method public static onLuaTextBoxChangedCallback(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0}, Lcom/roblox/engine/jni/b;->b(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static onLuaTextBoxPositionChangedCallback()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->h()V

    .line 126
    return-void
.end method

.method public static openNativeOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0, p1}, Lcom/roblox/engine/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static postAppEvent()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0}, Lcom/roblox/engine/jni/b;->a()V

    .line 29
    return-void
.end method

.method public static promptNativePurchase(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/roblox/engine/jni/b;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static screenOrientationChanged(I)V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0}, Lcom/roblox/engine/jni/b;->b(I)V

    .line 87
    return-void
.end method

.method public static sendAppEvent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0}, Lcom/roblox/engine/jni/b;->a(Z)V

    .line 25
    return-void
.end method

.method public static setImplementation(Lcom/roblox/engine/jni/b;)V
    .locals 0

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    sput-object p0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    .line 17
    :cond_0
    return-void
.end method

.method public static showKeyboard(JZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/roblox/engine/jni/b;->a(JZLjava/lang/String;)V

    .line 33
    return-void
.end method

.method public static showKeyboard2(JZ[B)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/b;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/roblox/engine/jni/b;->a(JZ[B)V

    .line 37
    return-void
.end method
