package com.roblox.client.k;

import com.roblox.engine.jni.NativeAppBridgeInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public static boolean a(String str) {
        return NativeAppBridgeInterface.checkInAppLink(str);
    }
}
