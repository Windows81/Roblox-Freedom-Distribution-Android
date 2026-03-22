package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeAppBridgeInterface {
    public static native boolean checkInAppLink(String str);

    public static native boolean isInAppLinksLoaded();

    public static native void nativeAppBridgeAppStart(String str, String str2, boolean z, String str3, String str4);

    public static native String nativeGetSecurityCookie();

    public static native void processInAppLink(String str);
}
