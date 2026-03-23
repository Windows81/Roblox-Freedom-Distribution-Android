.class public Lcom/roblox/engine/jni/NativeAppBridgeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkInAppLink(Ljava/lang/String;)Z
.end method

.method public static native isInAppLinksLoaded()Z
.end method

.method public static native nativeAppBridgeAppStart(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeGetSecurityCookie()Ljava/lang/String;
.end method

.method public static native processInAppLink(Ljava/lang/String;)V
.end method
