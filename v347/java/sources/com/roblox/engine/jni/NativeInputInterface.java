package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class NativeInputInterface {
    public static native void nativeGamepadAxisEvent(int i, int i2, float f, float f2, float f3);

    public static native void nativeGamepadButtonEvent(int i, int i2, int i3);

    public static native void nativeGamepadConnectEvent(int i);

    public static native void nativeGamepadDisconnectEvent(int i);

    public static native void nativePassAccelerometerChange(float f, float f2, float f3);

    public static native void nativePassGravityChange(float f, float f2, float f3);

    public static native void nativePassGyroscopeChange(float f, float f2, float f3, float f4, float f5, float f6, float f7);

    public static native void nativePassInput(int i, float f, float f2, int i2, int i3, int i4);

    public static native void nativePassLongPressGesture(int i, float f, float f2);

    public static native void nativePassMouseButton(float f, float f2, boolean z, int i);

    public static native void nativePassMouseMove(float f, float f2, float f3, float f4);

    public static native void nativePassMouseWheel(float f, float f2, float f3);

    public static native void nativePassPanGesture(int i, float f, float f2, float f3, float f4, float f5);

    public static native void nativePassPinchGesture(int i, float f, float f2, float f3, float f4, float f5, float f6);

    public static native void nativePassRotateGesture(int i, float f, float f2, float f3, float f4, float f5, float f6);

    public static native void nativePassSwipeGesture(int i, float f, float f2);

    public static native void nativePassTapGesture(float f, float f2);

    public static native void nativeSetAccelerometerEnabled(boolean z);

    public static native void nativeSetGamepadSupportedKey(int i, int i2, boolean z);

    public static native void nativeSetGyroscopeEnabled(boolean z);

    public static native void nativeUpdateScreenOrientation(int i);
}
