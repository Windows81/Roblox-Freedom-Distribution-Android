package com.roblox.client.ae;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class v {

    public interface a {
        long a();

        long b();
    }

    public static class b implements a {
        @Override // com.roblox.client.ae.v.a
        public long a() {
            return SystemClock.elapsedRealtime();
        }

        @Override // com.roblox.client.ae.v.a
        public long b() {
            return System.currentTimeMillis();
        }
    }
}
