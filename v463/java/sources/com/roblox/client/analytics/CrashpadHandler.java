package com.roblox.client.analytics;

import com.roblox.client.ae.k;
import com.roblox.engine.jni.NativeSettingsInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CrashpadHandler {
    private static final String TAG = "CrashpadHandler";

    public static void main(String[] strArr) {
        String str = System.getenv("LIBRARYPATH");
        for (String str2 : com.roblox.client.f.f5993a) {
            if (str2 != "libtrampoline.so") {
                System.load(str + "/" + str2);
            }
        }
        StringBuilder sb = new StringBuilder("Crash handling ");
        int iNativeRunCrashpadHandler = NativeSettingsInterface.nativeRunCrashpadHandler(strArr);
        if (iNativeRunCrashpadHandler == 0) {
            sb.append("succeed");
            k.b(TAG, sb.toString());
        } else {
            sb.append("failed with result ");
            sb.append(iNativeRunCrashpadHandler);
            k.e(TAG, sb.toString());
        }
    }
}
