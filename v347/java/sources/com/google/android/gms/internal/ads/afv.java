package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class afv extends aft<Integer, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f3939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f3941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f3942d;
    public String e;

    public afv() {
        this.f3939a = "E";
        this.f3940b = -1L;
        this.f3941c = "E";
        this.f3942d = "E";
        this.e = "E";
    }

    public afv(String str) {
        this();
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final HashMap<Integer, Object> a() {
        HashMap<Integer, Object> map = new HashMap<>();
        map.put(0, this.f3939a);
        map.put(4, this.e);
        map.put(3, this.f3942d);
        map.put(2, this.f3941c);
        map.put(1, Long.valueOf(this.f3940b));
        return map;
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final void a(String str) {
        HashMap mapB = b(str);
        if (mapB != null) {
            this.f3939a = mapB.get(0) == null ? "E" : (String) mapB.get(0);
            this.f3940b = mapB.get(1) == null ? -1L : ((Long) mapB.get(1)).longValue();
            this.f3941c = mapB.get(2) == null ? "E" : (String) mapB.get(2);
            this.f3942d = mapB.get(3) == null ? "E" : (String) mapB.get(3);
            this.e = mapB.get(4) == null ? "E" : (String) mapB.get(4);
        }
    }
}
