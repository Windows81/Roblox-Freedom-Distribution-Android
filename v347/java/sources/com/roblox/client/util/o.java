package com.roblox.client.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class o {
    public static HandlerThread a(String str) {
        return new HandlerThread(str);
    }

    public static Handler a(Looper looper) {
        return new Handler(looper);
    }
}
