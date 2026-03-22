package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class NativeGLJavaInterface {
    private static b sImplementation = new c();

    public static void setImplementation(b bVar) {
        if (bVar != null) {
            sImplementation = bVar;
        }
    }

    public static b getImplementation() {
        return sImplementation;
    }

    public static void sendAppEvent(boolean z) throws InterruptedException {
        sImplementation.a(z);
    }

    public static void postAppEvent() {
        sImplementation.a();
    }

    public static void showKeyboard(long j, boolean z, String str) {
        sImplementation.a(j, z, str);
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

    public static void exitGame() {
        sImplementation.c();
    }

    public static void exitGameWithError(int i) {
        sImplementation.a(i);
    }

    public static void gameDidLeave() {
        sImplementation.d();
    }

    public static void onLeaveGameFinished() {
        sImplementation.e();
    }

    public static void listenToMotionEvents(String str) {
        sImplementation.a(str);
    }

    public static String getApiUrl() {
        return sImplementation.f();
    }

    public static int getUsedMemoryInKB() {
        return sImplementation.g();
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

    public static void onLuaTextBoxPositionChangedCallback() {
        sImplementation.h();
    }
}
