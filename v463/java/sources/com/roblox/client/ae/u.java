package com.roblox.client.ae;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class u {
    public static HandlerThread a(String str) {
        return new HandlerThread(str);
    }

    public static Handler a(Looper looper) {
        return new Handler(looper);
    }
}
