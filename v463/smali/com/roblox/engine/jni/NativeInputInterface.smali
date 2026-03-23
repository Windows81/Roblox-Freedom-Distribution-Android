.class public Lcom/roblox/engine/jni/NativeInputInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeGamepadAxisEvent(IIFFF)V
.end method

.method public static native nativeGamepadButtonEvent(III)V
.end method

.method public static native nativeGamepadConnectEvent(I)V
.end method

.method public static native nativeGamepadDisconnectEvent(I)V
.end method

.method public static native nativePassAccelerometerChange(FFF)V
.end method

.method public static native nativePassGravityChange(FFF)V
.end method

.method public static native nativePassGyroscopeChange(FFFFFFF)V
.end method

.method public static native nativePassInput(IFFIII)V
.end method

.method public static native nativePassLongPressGesture(IFF)V
.end method

.method public static native nativePassMouseButton(FFZI)V
.end method

.method public static native nativePassMouseMove(FFFF)V
.end method

.method public static native nativePassMouseWheel(FFF)V
.end method

.method public static native nativePassPanGesture(IFFFFF)V
.end method

.method public static native nativePassPinchGesture(IFFFFFF)V
.end method

.method public static native nativePassRotateGesture(IFFFFFF)V
.end method

.method public static native nativePassSwipeGesture(IFF)V
.end method

.method public static native nativePassTapGesture(FF)V
.end method

.method public static native nativeSetAccelerometerEnabled(Z)V
.end method

.method public static native nativeSetGamepadSupportedKey(IIZ)V
.end method

.method public static native nativeSetGyroscopeEnabled(Z)V
.end method

.method public static native nativeUpdateScreenOrientation(I)V
.end method
