.class public Lcom/roblox/engine/jni/NativeGLInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native antiAddictionStart()V
.end method

.method public static native antiAddictionStop()V
.end method

.method public static native nativeAppBridgeV2DestroyApp()V
.end method

.method public static native nativeAppBridgeV2Init(Lcom/roblox/engine/jni/model/c;Lcom/roblox/engine/jni/model/b;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native nativeAppBridgeV2LeaveGame()V
.end method

.method public static native nativeAppBridgeV2OnLowMemory()V
.end method

.method public static native nativeAppBridgeV2PauseApp()V
.end method

.method public static native nativeAppBridgeV2PauseGame()V
.end method

.method public static native nativeAppBridgeV2ResumeGame(Landroid/view/Surface;F)V
.end method

.method public static native nativeAppBridgeV2SendAppEventOnAppReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeAppBridgeV2SendAppEventOnGameLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeAppBridgeV2StartApp(Landroid/view/Surface;Lcom/roblox/engine/jni/model/c;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;ILjava/lang/String;)V
.end method

.method public static native nativeAppBridgeV2StartGame(Landroid/view/Surface;Lcom/roblox/engine/jni/model/c;Lcom/roblox/engine/jni/model/b;JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;JILjava/lang/String;)I
.end method

.method public static native nativeAppBridgeV2UpdateSurfaceApp(Landroid/view/Surface;F)V
.end method

.method public static native nativeAppBridgeV2UpdateSurfaceGame(Landroid/view/Surface;F)V
.end method

.method public static native nativeAppBridgeV2UserDidLogout()V
.end method

.method public static native nativeBroadcastConnection(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeCallMessagesFromMainThread()V
.end method

.method public static native nativeGameGlobalInit()V
.end method

.method public static native nativeGetTextBoxInfo()Lcom/roblox/engine/jni/model/NativeTextBoxInfo;
.end method

.method public static native nativeHandleBackPressed()V
.end method

.method public static native nativeInGamePurchaseFinished(ZJLjava/lang/String;)V
.end method

.method public static native nativeInitClientSettings(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeOnFragmentStart()V
.end method

.method public static native nativeOnFragmentStop()V
.end method

.method public static native nativePassKeyEvent(ZIIZ)V
.end method

.method public static native nativePassText(JLjava/lang/String;ZI)V
.end method

.method public static native nativeReleaseAllRbxEventStreams()V
.end method

.method public static native nativeReleaseFocus(J)V
.end method

.method public static native nativeReportToDiagByCountryCode(Ljava/lang/String;Ljava/lang/String;D)V
.end method

.method public static native nativeReturnPressedFromOnScreenKeyboard(J)V
.end method

.method public static native nativeSendExtendedAnalytics([BI)V
.end method

.method public static native nativeSendExtendedAnalyticsJoinData(Ljava/lang/String;)V
.end method

.method public static native readLocalFlags()Lcom/roblox/engine/jni/model/ClientLocalFlags;
.end method

.method public static native screenTimeResume(Ljava/lang/String;)V
.end method

.method public static native screenTimeStart(Ljava/lang/String;)V
.end method

.method public static native screenTimeStop()V
.end method

.method public static native setTaskSchedulerBackgroundMode(ZLjava/lang/String;)V
.end method

.method public static native syncTextboxTextAndCursorPosition2(Ljava/lang/String;I)V
.end method

.method public static native updateAppUISizes(IIIII)V
.end method

.method public static native updateKeyboardSize(ZIIII)V
.end method
