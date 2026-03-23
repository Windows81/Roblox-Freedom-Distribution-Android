.class public Lcom/roblox/engine/jni/NativeGLJavaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;,
        Lcom/roblox/engine/jni/NativeGLJavaInterface$IExtendedAnalyticsInterface;
    }
.end annotation


# static fields
.field private static sAppBridgeNotificationListener:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

.field private static sAppShellReloadNeededListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sExitImplementation:Lcom/roblox/engine/jni/EngineExitJavaCallback2;

.field private static sExtendedAnalyticsImplementation:Lcom/roblox/engine/jni/NativeGLJavaInterface$IExtendedAnalyticsInterface;

.field private static sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-direct {v0}, Lcom/roblox/engine/jni/EngineJavaCallback2;-><init>()V

    sput-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitGameWithError(I)V
    .locals 1

    .line 65
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(I)V

    return-void
.end method

.method public static gameDidLeave()V
    .locals 1

    .line 69
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sExitImplementation:Lcom/roblox/engine/jni/EngineExitJavaCallback2;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/roblox/engine/jni/EngineExitJavaCallback2;->a()V

    :cond_0
    return-void
.end method

.method public static gameLoadedCallback(J)V
    .locals 1

    .line 107
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(J)V

    return-void
.end method

.method public static getImplementation()Lcom/roblox/engine/jni/EngineJavaCallback2;
    .locals 1

    .line 49
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    return-object v0
.end method

.method public static hideKeyboard()V
    .locals 1

    .line 57
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b()V

    return-void
.end method

.method public static listenToMotionEvents(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static onAppBridgeNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sAppBridgeNotificationListener:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p0, p1}, Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onAppShellReloadNeeded()V
    .locals 1

    .line 132
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sAppShellReloadNeededListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;->B()V

    :cond_0
    return-void
.end method

.method public static onDataModelNotificationCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static onExtendedAnalyticsRecvCallback([BI)V
    .locals 1

    .line 161
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sExtendedAnalyticsImplementation:Lcom/roblox/engine/jni/NativeGLJavaInterface$IExtendedAnalyticsInterface;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p0, p1}, Lcom/roblox/engine/jni/NativeGLJavaInterface$IExtendedAnalyticsInterface;->a([BI)V

    :cond_0
    return-void
.end method

.method public static onLuaTextBoxChangedCallback(Ljava/lang/String;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static onLuaTextBoxPropertyChangedCallback()V
    .locals 1

    .line 121
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->c()V

    return-void
.end method

.method public static openNativeOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0, p1}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static promptNativePurchase(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static replaceImplementation(Ljava/lang/Class;Lcom/roblox/engine/jni/EngineJavaCallback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/roblox/engine/jni/EngineJavaCallback2;",
            ">;",
            "Lcom/roblox/engine/jni/EngineJavaCallback2;",
            ")V"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setImplementation(Lcom/roblox/engine/jni/EngineJavaCallback2;)V

    :cond_0
    return-void
.end method

.method public static screenOrientationChanged(I)V
    .locals 1

    .line 82
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0}, Lcom/roblox/engine/jni/EngineJavaCallback2;->b(I)V

    return-void
.end method

.method public static setAppBridgeNotificationListener(Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;)V
    .locals 0

    .line 149
    sput-object p0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sAppBridgeNotificationListener:Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;

    return-void
.end method

.method public static setAppShellReloadNeededListener(Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;)V
    .locals 1

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sAppShellReloadNeededListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setExitImplementation(Lcom/roblox/engine/jni/EngineExitJavaCallback2;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sExitImplementation:Lcom/roblox/engine/jni/EngineExitJavaCallback2;

    return-void
.end method

.method public static setExtendedAnalyticsImplementation(Lcom/roblox/engine/jni/NativeGLJavaInterface$IExtendedAnalyticsInterface;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sExtendedAnalyticsImplementation:Lcom/roblox/engine/jni/NativeGLJavaInterface$IExtendedAnalyticsInterface;

    return-void
.end method

.method public static setImplementation(Lcom/roblox/engine/jni/EngineJavaCallback2;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    sput-object p0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    :cond_0
    return-void
.end method

.method public static showKeyboard2(JZ[B)V
    .locals 1

    .line 53
    sget-object v0, Lcom/roblox/engine/jni/NativeGLJavaInterface;->sImplementation:Lcom/roblox/engine/jni/EngineJavaCallback2;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/roblox/engine/jni/EngineJavaCallback2;->a(JZ[B)V

    return-void
.end method
