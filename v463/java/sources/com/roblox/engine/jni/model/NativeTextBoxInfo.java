package com.roblox.engine.jni.model;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NativeTextBoxInfo {
    public int font;
    public float fontSize;
    public float height;
    public boolean manualFocusRelease;
    public boolean multiline;
    public int returnKeyType;
    public int textColor;
    public int textInputType;
    public float width;
    public float x;
    public int xAlignment;
    public float y;
    public int yAlignment;

    public NativeTextBoxInfo(float f, float f2, float f3, float f4, float f5, boolean z, int i, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
        this.fontSize = f5;
        this.multiline = z;
        this.xAlignment = i;
        this.yAlignment = i2;
        this.textColor = i3;
        this.font = i4;
        this.textInputType = i5;
        this.returnKeyType = i6;
        this.manualFocusRelease = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeTextBoxInfo)) {
            return false;
        }
        NativeTextBoxInfo nativeTextBoxInfo = (NativeTextBoxInfo) obj;
        return nativeTextBoxInfo.x == this.x && nativeTextBoxInfo.y == this.y && nativeTextBoxInfo.width == this.width && nativeTextBoxInfo.height == this.height && nativeTextBoxInfo.fontSize == this.fontSize && nativeTextBoxInfo.multiline == this.multiline && nativeTextBoxInfo.xAlignment == this.xAlignment && nativeTextBoxInfo.yAlignment == this.yAlignment && nativeTextBoxInfo.textColor == this.textColor && nativeTextBoxInfo.font == this.font && nativeTextBoxInfo.textInputType == this.textInputType && nativeTextBoxInfo.returnKeyType == this.returnKeyType && nativeTextBoxInfo.manualFocusRelease == this.manualFocusRelease;
    }
}
