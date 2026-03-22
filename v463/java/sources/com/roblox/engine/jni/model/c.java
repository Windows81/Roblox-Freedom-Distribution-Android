package com.roblox.engine.jni.model;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {
    public String assetFolderPath;
    public float dpiScale;
    public boolean isKeyboardDevice;
    public boolean isMouseDevice;
    public boolean isTouchDevice;

    public void a(c cVar) {
        if (cVar != null) {
            this.isTouchDevice = cVar.isTouchDevice;
            this.isMouseDevice = cVar.isMouseDevice;
            this.isKeyboardDevice = cVar.isKeyboardDevice;
            this.dpiScale = cVar.dpiScale;
            this.assetFolderPath = cVar.assetFolderPath;
        }
    }
}
