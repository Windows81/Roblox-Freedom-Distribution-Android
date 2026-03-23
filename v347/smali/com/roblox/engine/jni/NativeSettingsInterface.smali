.class public Lcom/roblox/engine/jni/NativeSettingsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeCPUSupportsNEON()Z
.end method

.method public static native nativeEnableNDKProfiler(I)Z
.end method

.method public static native nativeInitBreakpad(Ljava/lang/String;ZZ)V
.end method

.method public static native nativeInitFastLog()V
.end method

.method public static native nativeSetAdditionalEngineSettings(Z)V
.end method

.method public static native nativeSetBaseUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetCacheDirectory(Ljava/lang/String;)V
.end method

.method public static native nativeSetCookiesForDomain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetExceptionReasonFilename(Ljava/lang/String;)V
.end method

.method public static native nativeSetFilesDirectory(Ljava/lang/String;)V
.end method

.method public static native nativeSetHttpProxy(Ljava/lang/String;J)V
.end method

.method public static native nativeSetPlatformHeaders(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetPlatformUserAgent(Ljava/lang/String;)V
.end method

.method public static native nativeSetRobloxVersion(Ljava/lang/String;)V
.end method

.method public static native nativeUploadBreakpadDump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method
