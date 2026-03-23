.class public Lcom/roblox/engine/jni/NativeGLInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeActionEnabled(Lcom/roblox/engine/jni/a;)V
.end method

.method public static native nativeActionTaken(Lcom/roblox/engine/jni/a;)V
.end method

.method public static native nativeBroadcastConnection(ILjava/lang/String;)V
.end method

.method public static native nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeCallMessagesFromMainThread()V
.end method

.method public static native nativeGameGlobalInit()V
.end method

.method public static native nativeGetTextBoxInfo()Lcom/roblox/engine/components/NativeTextBoxInfo;
.end method

.method public static native nativeHandleBackPressed()V
.end method

.method public static native nativeInGamePurchaseFinished(ZJLjava/lang/String;)V
.end method

.method public static native nativeInitClientSettings(ZLjava/lang/String;)I
.end method

.method public static native nativeOnFragmentStart()V
.end method

.method public static native nativeOnFragmentStop()V
.end method

.method public static native nativeOnLowMemory()V
.end method

.method public static native nativePassKeyEvent(ZIIZ)V
.end method

.method public static native nativePassText(JLjava/lang/String;ZI)V
.end method

.method public static native nativeReleaseFocus(J)V
.end method

.method public static native nativeRequestResumeRendering()V
.end method

.method public static native nativeRequestStopRendering()V
.end method

.method public static native nativeShutDownGraphics(Landroid/view/Surface;)V
.end method

.method public static native nativeStartApp(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFZLjava/lang/String;IZZ)V
.end method

.method public static native nativeStartGame(Landroid/view/Surface;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JF)V
.end method

.method public static native nativeStartUpGraphics(Landroid/view/Surface;II)V
.end method

.method public static native nativeStopGame()V
.end method

.method public static native nativeUpdateGraphics(Landroid/view/Surface;II)V
.end method

.method public static native setTaskSchedulerBackgroundMode(Z)V
.end method

.method public static native syncTextboxTextAndCursorPosition(Ljava/lang/String;I)V
.end method

.method public static native syncTextboxTextAndCursorPosition2(Ljava/lang/String;I)V
.end method

.method public static native updateAppUISizes(IIII)V
.end method

.method public static native updateKeyboardSize(ZIIII)V
.end method
