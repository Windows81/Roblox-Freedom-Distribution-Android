package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class pp implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f5442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ int f5443d;
    private final /* synthetic */ boolean e = false;
    private final /* synthetic */ po f;

    pp(po poVar, String str, String str2, int i, int i2, boolean z) {
        this.f = poVar;
        this.f5440a = str;
        this.f5441b = str2;
        this.f5442c = i;
        this.f5443d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f5440a);
        map.put("cachedSrc", this.f5441b);
        map.put("bytesLoaded", Integer.toString(this.f5442c));
        map.put("totalBytes", Integer.toString(this.f5443d));
        map.put("cacheReady", this.e ? "1" : "0");
        this.f.a("onPrecacheEvent", (Map<String, String>) map);
    }
}
