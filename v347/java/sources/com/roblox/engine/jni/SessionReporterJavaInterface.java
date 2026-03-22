package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SessionReporterJavaInterface {
    private static a sImplementation = new b();

    public interface a {
        String a();

        void a(String str, long j);

        void a(String str, String str2, String str3, long j);

        String b();

        String c();

        String d();
    }

    private static class b implements a {
        private b() {
        }

        @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
        public void a(String str, String str2, String str3, long j) {
        }

        @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
        public void a(String str, long j) {
        }

        @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
        public String a() {
            return "";
        }

        @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
        public String b() {
            return "";
        }

        @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
        public String c() {
            return "";
        }

        @Override // com.roblox.engine.jni.SessionReporterJavaInterface.a
        public String d() {
            return "";
        }
    }

    public static void setImplementation(a aVar) {
        if (aVar != null) {
            sImplementation = aVar;
        }
    }

    public static void setEventTrackingGoogleAnalytics(String str, String str2, String str3, long j) {
        sImplementation.a(str, str2, str3, j);
    }

    public static void sendSessionReport(String str, long j) {
        sImplementation.a(str, j);
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
