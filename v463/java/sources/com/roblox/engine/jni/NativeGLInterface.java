package com.roblox.engine.jni;

import android.view.Surface;
import com.roblox.engine.jni.model.ClientLocalFlags;
import com.roblox.engine.jni.model.NativeTextBoxInfo;
import com.roblox.engine.jni.model.b;
import com.roblox.engine.jni.model.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeGLInterface {
    public static native void antiAddictionStart();

    public static native void antiAddictionStop();

    public static native void nativeAppBridgeV2DestroyApp();

    public static native void nativeAppBridgeV2Init(c cVar, b bVar, String str, String str2, boolean z);

    public static native void nativeAppBridgeV2LeaveGame();

    public static native void nativeAppBridgeV2OnLowMemory();

    public static native void nativeAppBridgeV2PauseApp();

    public static native void nativeAppBridgeV2PauseGame();

    public static native void nativeAppBridgeV2ResumeGame(Surface surface, float f);

    public static native void nativeAppBridgeV2SendAppEventOnAppReady(String str, String str2, String str3, String str4);

    public static native void nativeAppBridgeV2SendAppEventOnGameLoaded(String str, String str2, String str3);

    public static native void nativeAppBridgeV2StartApp(Surface surface, c cVar, String str, String str2, long j, boolean z, String str3, int i, String str4);

    public static native int nativeAppBridgeV2StartGame(Surface surface, c cVar, b bVar, long j, long j2, String str, String str2, boolean z, String str3, long j3, int i, String str4);

    public static native void nativeAppBridgeV2UpdateSurfaceApp(Surface surface, float f);

    public static native void nativeAppBridgeV2UpdateSurfaceGame(Surface surface, float f);

    public static native void nativeAppBridgeV2UserDidLogout();

    public static native void nativeBroadcastConnection(int i, String str, String str2);

    public static native void nativeBroadcastEventWithNamespace(String str, String str2, String str3);

    public static native void nativeCallMessagesFromMainThread();

    public static native void nativeGameGlobalInit();

    public static native NativeTextBoxInfo nativeGetTextBoxInfo();

    public static native void nativeHandleBackPressed();

    public static native void nativeInGamePurchaseFinished(boolean z, long j, String str);

    public static native int nativeInitClientSettings(String str, String str2);

    public static native void nativeOnFragmentStart();

    public static native void nativeOnFragmentStop();

    public static native void nativePassKeyEvent(boolean z, int i, int i2, boolean z2);

    public static native void nativePassText(long j, String str, boolean z, int i);

    public static native void nativeReleaseAllRbxEventStreams();

    public static native void nativeReleaseFocus(long j);

    public static native void nativeReportToDiagByCountryCode(String str, String str2, double d2);

    public static native void nativeReturnPressedFromOnScreenKeyboard(long j);

    public static native void nativeSendExtendedAnalytics(byte[] bArr, int i);

    public static native void nativeSendExtendedAnalyticsJoinData(String str);

    public static native ClientLocalFlags readLocalFlags();

    public static native void screenTimeResume(String str);

    public static native void screenTimeStart(String str);

    public static native void screenTimeStop();

    public static native void setTaskSchedulerBackgroundMode(boolean z, String str);

    public static native void syncTextboxTextAndCursorPosition2(String str, int i);

    public static native void updateAppUISizes(int i, int i2, int i3, int i4, int i5);

    public static native void updateKeyboardSize(boolean z, int i, int i2, int i3, int i4);
}
