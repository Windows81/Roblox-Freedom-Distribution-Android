package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class agz extends aft<Integer, Long> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f3984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3985b;

    public agz() {
        this.f3984a = -1L;
        this.f3985b = -1L;
    }

    public agz(String str) {
        this();
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, Long.valueOf(this.f3984a));
        map.put(1, Long.valueOf(this.f3985b));
        return map;
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final void a(String str) {
        HashMap mapB = b(str);
        if (mapB != null) {
            this.f3984a = ((Long) mapB.get(0)).longValue();
            this.f3985b = ((Long) mapB.get(1)).longValue();
        }
    }
}
