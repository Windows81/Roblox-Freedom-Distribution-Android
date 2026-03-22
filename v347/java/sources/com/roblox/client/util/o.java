package com.roblox.client.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class o {
    public static HandlerThread a(String str) {
        return new HandlerThread(str);
    }

    public static Handler a(Looper looper) {
        return new Handler(looper);
    }
}
