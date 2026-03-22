package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class NativeSettingsInterface {
    public static native boolean nativeCPUSupportsNEON();

    public static native boolean nativeEnableNDKProfiler(int i);

    public static native void nativeInitBreakpad(String str, boolean z, boolean z2);

    public static native void nativeInitFastLog();

    public static native void nativeSetAdditionalEngineSettings(boolean z);

    public static native void nativeSetBaseUrl(String str, String str2);

    public static native void nativeSetCacheDirectory(String str);

    public static native void nativeSetCookiesForDomain(String str, String str2);

    public static native void nativeSetExceptionReasonFilename(String str);

    public static native void nativeSetFilesDirectory(String str);

    public static native void nativeSetHttpProxy(String str, long j);

    public static native void nativeSetPlatformHeaders(String str, String str2);

    public static native void nativeSetPlatformUserAgent(String str);

    public static native void nativeSetRobloxVersion(String str);

    public static native boolean nativeUploadBreakpadDump(String str, String str2, String str3, boolean z);
}
