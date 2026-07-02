package com.roblox.engine.jni.locale;

/* JADX INFO: loaded from: classes.dex */
public class NativeLocaleJavaInterface {
    private static a sImplementation = new a();

    public static void setImplementation(a aVar) {
        sImplementation = aVar;
    }

    public static String getLocale() {
        return sImplementation.a();
    }

    public static String getRobloxLocale() {
        return sImplementation.b();
    }

    public static String getGameLocale() {
        return sImplementation.c();
    }
}
