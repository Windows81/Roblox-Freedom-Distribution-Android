package com.roblox.engine.jni;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeGLJavaInterface {
    private static OnAppBridgeNotificationListener sAppBridgeNotificationListener;
    private static WeakReference<OnAppShellReloadNeededListener> sAppShellReloadNeededListener;
    private static EngineExitJavaCallback2 sExitImplementation;
    private static IExtendedAnalyticsInterface sExtendedAnalyticsImplementation;
    private static EngineJavaCallback2 sImplementation = new EngineJavaCallback2();

    public interface IExtendedAnalyticsInterface {
        void a(byte[] bArr, int i);
    }

    public interface OnAppShellReloadNeededListener {
        void B();
    }

    public static void setImplementation(EngineJavaCallback2 engineJavaCallback2) {
        if (engineJavaCallback2 != null) {
            sImplementation = engineJavaCallback2;
        }
    }

    public static void setExtendedAnalyticsImplementation(IExtendedAnalyticsInterface iExtendedAnalyticsInterface) {
        sExtendedAnalyticsImplementation = iExtendedAnalyticsInterface;
    }

    public static void replaceImplementation(Class<? extends EngineJavaCallback2> cls, EngineJavaCallback2 engineJavaCallback2) {
        if (sImplementation.getClass() == cls) {
            setImplementation(engineJavaCallback2);
        }
    }

    public static void setExitImplementation(EngineExitJavaCallback2 engineExitJavaCallback2) {
        sExitImplementation = engineExitJavaCallback2;
    }

    public static EngineJavaCallback2 getImplementation() {
        return sImplementation;
    }

    public static void showKeyboard2(long j, boolean z, byte[] bArr) {
        sImplementation.a(j, z, bArr);
    }

    public static void hideKeyboard() {
        sImplementation.b();
    }

    public static void promptNativePurchase(long j, String str, String str2) {
        sImplementation.a(j, str, str2);
    }

    public static void exitGameWithError(int i) {
        sImplementation.a(i);
    }

    public static void gameDidLeave() {
        EngineExitJavaCallback2 engineExitJavaCallback2 = sExitImplementation;
        if (engineExitJavaCallback2 != null) {
            engineExitJavaCallback2.a();
        }
    }

    public static void listenToMotionEvents(String str) {
        sImplementation.a(str);
    }

    public static void screenOrientationChanged(int i) {
        sImplementation.b(i);
    }

    public static void openNativeOverlay(String str, String str2) {
        sImplementation.a(str, str2);
    }

    public static void onDataModelNotificationCallback(String str, String str2) {
        sImplementation.b(str, str2);
    }

    public static void gameLoadedCallback(long j) {
        sImplementation.a(j);
    }

    public static void onLuaTextBoxChangedCallback(String str) {
        sImplementation.b(str);
    }

    public static void onLuaTextBoxPropertyChangedCallback() {
        sImplementation.c();
    }

    public static void onAppShellReloadNeeded() {
        OnAppShellReloadNeededListener onAppShellReloadNeededListener = sAppShellReloadNeededListener.get();
        if (onAppShellReloadNeededListener != null) {
            onAppShellReloadNeededListener.B();
        }
    }

    public static void setAppShellReloadNeededListener(OnAppShellReloadNeededListener onAppShellReloadNeededListener) {
        sAppShellReloadNeededListener = new WeakReference<>(onAppShellReloadNeededListener);
    }

    public static void setAppBridgeNotificationListener(OnAppBridgeNotificationListener onAppBridgeNotificationListener) {
        sAppBridgeNotificationListener = onAppBridgeNotificationListener;
    }

    public static void onAppBridgeNotification(String str, String str2) {
        OnAppBridgeNotificationListener onAppBridgeNotificationListener = sAppBridgeNotificationListener;
        if (onAppBridgeNotificationListener != null) {
            onAppBridgeNotificationListener.a(str, str2);
        }
    }

    static void onExtendedAnalyticsRecvCallback(byte[] bArr, int i) {
        IExtendedAnalyticsInterface iExtendedAnalyticsInterface = sExtendedAnalyticsImplementation;
        if (iExtendedAnalyticsInterface != null) {
            iExtendedAnalyticsInterface.a(bArr, i);
        }
    }
}
