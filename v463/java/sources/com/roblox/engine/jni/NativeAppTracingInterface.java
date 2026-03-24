package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeAppTracingInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f7638a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f7639b = false;

    private static native void nativeFinishAndReportSpan(String str);

    private static native void nativeFinishSpan(String str);

    private static native void nativeSetStartupSpan(String str);

    private static native String nativeStartSpan(String str, String str2);

    public static String a(String str, String str2) {
        return f7639b ? "" : nativeStartSpan(str, str2);
    }

    public static void a(String str) {
        if (f7639b) {
            return;
        }
        nativeFinishSpan(str);
    }

    public static void b(String str) {
        if (f7639b) {
            return;
        }
        nativeSetStartupSpan(str);
    }

    public static void c(String str) {
        if (f7639b) {
            return;
        }
        nativeFinishAndReportSpan(str);
        f7639b = true;
    }
}
