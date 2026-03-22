package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class pq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ int f5446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ po f5447d;

    pq(po poVar, String str, String str2, int i) {
        this.f5447d = poVar;
        this.f5444a = str;
        this.f5445b = str2;
        this.f5446c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.f5444a);
        map.put("cachedSrc", this.f5445b);
        map.put("totalBytes", Integer.toString(this.f5446c));
        this.f5447d.a("onPrecacheEvent", (Map<String, String>) map);
    }
}
