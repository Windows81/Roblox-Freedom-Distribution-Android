package com.roblox.engine.jni;

import com.roblox.engine.jni.model.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeSettingsInterface {
    public static native int getRunningArchitecture();

    public static native boolean nativeCPUSupportsNEON();

    public static native void nativeConfigureDevRpc(String str, String str2);

    public static native String nativeGetCookiesForDomain(String str);

    public static native String nativeGetCpuFamilyAndFeatures();

    public static native String nativeGetDevRpcConfiguration();

    public static native String nativeGetDeviceHandle(String str);

    public static native String nativeGetDeviceHandleV2(String str);

    public static native boolean nativeGetFFlag(String str);

    public static native String nativeGetGenderNeutralSignUpVariation();

    public static native void nativeInitBreakpad(String str, boolean z);

    public static native boolean nativeInitCrashpadNew(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, boolean z);

    public static native void nativeInitFastLog();

    public static native boolean nativeIsDevRpcEnabled();

    public static native boolean nativeIsLuaLoginEnabled();

    public static native int nativeRunCrashpadHandler(String[] strArr);

    public static native void nativeSetAdditionalEngineSettings(boolean z);

    public static native void nativeSetBaseUrl(String str, String str2);

    public static native void nativeSetCacheDirectory(String str);

    public static native void nativeSetCookiesForDomain(String str, String str2);

    public static native void nativeSetDefaultAppPolicyFile(String str);

    public static native void nativeSetDeviceInfo(b bVar);

    public static native void nativeSetExceptionReasonFilename(String str);

    public static native void nativeSetFFlag(String str, boolean z);

    public static native void nativeSetFilesDirectory(String str);

    public static native void nativeSetHttpProxy(String str, long j);

    public static native void nativeSetIsEmulator(boolean z);

    public static native void nativeSetPlatformHeaders(String str, String str2);

    public static native void nativeSetRobloxChannel(String str);

    public static native void nativeSetRobloxVersion(String str);

    public static native boolean nativeUploadBreakpadDump(String str, String str2, String str3, boolean z);
}
