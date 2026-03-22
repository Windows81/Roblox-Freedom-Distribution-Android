package com.roblox.client.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class p {

    public interface a {
        long a();
    }

    public static class b implements a {
        @Override // com.roblox.client.util.p.a
        public long a() {
            return SystemClock.elapsedRealtime();
        }
    }
}
