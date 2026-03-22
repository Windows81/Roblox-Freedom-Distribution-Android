package com.roblox.engine.jni;

import android.view.Surface;
import com.roblox.engine.components.NativeTextBoxInfo;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class NativeGLInterface {
    public static native void nativeActionEnabled(a aVar);

    public static native void nativeActionTaken(a aVar);

    public static native void nativeBroadcastConnection(int i, String str);

    public static native void nativeBroadcastEventWithNamespace(String str, String str2, String str3);

    public static native void nativeCallMessagesFromMainThread();

    public static native void nativeGameGlobalInit();

    public static native NativeTextBoxInfo nativeGetTextBoxInfo();

    public static native void nativeHandleBackPressed();

    public static native void nativeInGamePurchaseFinished(boolean z, long j, String str);

    public static native int nativeInitClientSettings(boolean z, String str);

    public static native void nativeOnFragmentStart();

    public static native void nativeOnFragmentStop();

    public static native void nativeOnLowMemory();

    public static native void nativePassKeyEvent(boolean z, int i, int i2, boolean z2);

    public static native void nativePassText(long j, String str, boolean z, int i);

    public static native void nativeReleaseFocus(long j);

    public static native void nativeRequestResumeRendering();

    public static native void nativeRequestStopRendering();

    public static native void nativeShutDownGraphics(Surface surface);

    public static native void nativeStartApp(Surface surface, String str, String str2, long j, String str3, int i, int i2, boolean z, boolean z2, boolean z3, String str4, String str5, String str6, String str7, long j2, float f, boolean z4, String str8, int i3, boolean z5, boolean z6);

    public static native void nativeStartGame(Surface surface, long j, long j2, String str, String str2, int i, String str3, int i2, int i3, boolean z, boolean z2, boolean z3, String str4, String str5, String str6, String str7, long j3, float f);

    public static native void nativeStartUpGraphics(Surface surface, int i, int i2);

    public static native void nativeStopGame();

    public static native void nativeUpdateGraphics(Surface surface, int i, int i2);

    public static native void setTaskSchedulerBackgroundMode(boolean z);

    public static native void syncTextboxTextAndCursorPosition(String str, int i);

    public static native void syncTextboxTextAndCursorPosition2(String str, int i);

    public static native void updateAppUISizes(int i, int i2, int i3, int i4);

    public static native void updateKeyboardSize(boolean z, int i, int i2, int i3, int i4);
}
