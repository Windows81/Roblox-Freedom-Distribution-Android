package com.roblox.engine.jni.reporter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SessionReporterJavaInterface {
    private static a sImplementation = new b();

    public static void setImplementation(a aVar) {
        if (aVar != null) {
            sImplementation = aVar;
        }
    }

    public static void setEventTrackingGoogleAnalytics(String str, String str2, String str3, long j) {
        sImplementation.a(str, str2, str3, j);
    }

    public static void sendSessionReport(String str, String str2) {
        sImplementation.a(str, str2);
    }

    public static String getFilesDir() {
        return sImplementation.a();
    }

    public static String getAppVersion() {
        return sImplementation.b();
    }

    public static String getLastLoggedInUser() {
        return sImplementation.c();
    }

    public static String getLastLoggedInUserId() {
        return sImplementation.d();
    }
}
