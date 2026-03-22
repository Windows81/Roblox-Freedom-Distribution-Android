package com.roblox.engine.jni.user;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeUserJavaInterface {
    private static a sImplementation;

    public static void setImplementation(a aVar) {
        if (aVar != null) {
            sImplementation = aVar;
        }
    }

    public static long getUserId() {
        return sImplementation.a();
    }

    public static boolean getIsUnder13() {
        return sImplementation.b();
    }

    public static String getUsername() {
        return sImplementation.c();
    }

    public static String getDisplayName() {
        return sImplementation.d();
    }

    public static String getAlternateName() {
        return sImplementation.e();
    }

    public static String getPlatformName() {
        return sImplementation.h();
    }

    public static int getMembershipType() {
        return sImplementation.f();
    }

    public static String getTheme() {
        return sImplementation.g();
    }
}
