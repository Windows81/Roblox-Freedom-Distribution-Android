package com.roblox.engine.components;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class NativeTextBoxInfo {
    public float fontSize;
    public float height;
    public boolean multiline;
    public float width;
    public float x;
    public float y;

    public NativeTextBoxInfo(float f, float f2, float f3, float f4, float f5, boolean z) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
        this.fontSize = f5;
        this.multiline = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NativeTextBoxInfo) {
            NativeTextBoxInfo nativeTextBoxInfo = (NativeTextBoxInfo) obj;
            if (nativeTextBoxInfo.x == this.x && nativeTextBoxInfo.y == this.y && nativeTextBoxInfo.width == this.width && nativeTextBoxInfo.height == this.height && nativeTextBoxInfo.fontSize == this.fontSize && nativeTextBoxInfo.multiline == this.multiline) {
                return true;
            }
        }
        return false;
    }
}
