.class public Lcom/roblox/engine/jni/NativeSettingsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getRunningArchitecture()I
.end method

.method public static native nativeCPUSupportsNEON()Z
.end method

.method public static native nativeConfigureDevRpc(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeGetCookiesForDomain(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetCpuFamilyAndFeatures()Ljava/lang/String;
.end method

.method public static native nativeGetDevRpcConfiguration()Ljava/lang/String;
.end method

.method public static native nativeGetDeviceHandle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetDeviceHandleV2(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetFFlag(Ljava/lang/String;)Z
.end method

.method public static native nativeGetGenderNeutralSignUpVariation()Ljava/lang/String;
.end method

.method public static native nativeInitBreakpad(Ljava/lang/String;Z)V
.end method

.method public static native nativeInitCrashpadNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Z
.end method

.method public static native nativeInitFastLog()V
.end method

.method public static native nativeIsDevRpcEnabled()Z
.end method

.method public static native nativeIsLuaLoginEnabled()Z
.end method

.method public static native nativeRunCrashpadHandler([Ljava/lang/String;)I
.end method

.method public static native nativeSetAdditionalEngineSettings(Z)V
.end method

.method public static native nativeSetBaseUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetCacheDirectory(Ljava/lang/String;)V
.end method

.method public static native nativeSetCookiesForDomain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetDefaultAppPolicyFile(Ljava/lang/String;)V
.end method

.method public static native nativeSetDeviceInfo(Lcom/roblox/engine/jni/model/b;)V
.end method

.method public static native nativeSetExceptionReasonFilename(Ljava/lang/String;)V
.end method

.method public static native nativeSetFFlag(Ljava/lang/String;Z)V
.end method

.method public static native nativeSetFilesDirectory(Ljava/lang/String;)V
.end method

.method public static native nativeSetHttpProxy(Ljava/lang/String;J)V
.end method

.method public static native nativeSetIsEmulator(Z)V
.end method

.method public static native nativeSetPlatformHeaders(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetRobloxChannel(Ljava/lang/String;)V
.end method

.method public static native nativeSetRobloxVersion(Ljava/lang/String;)V
.end method

.method public static native nativeUploadBreakpadDump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method
