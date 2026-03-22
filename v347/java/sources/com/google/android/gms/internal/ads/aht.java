package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aht extends aft<Integer, Long> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f4019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f4020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f4021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Long f4022d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;

    public aht() {
    }

    public aht(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.f4019a);
        map.put(1, this.f4020b);
        map.put(2, this.f4021c);
        map.put(3, this.f4022d);
        map.put(4, this.e);
        map.put(5, this.f);
        map.put(6, this.g);
        map.put(7, this.h);
        map.put(8, this.i);
        map.put(9, this.j);
        map.put(10, this.k);
        return map;
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final void a(String str) {
        HashMap mapB = b(str);
        if (mapB != null) {
            this.f4019a = (Long) mapB.get(0);
            this.f4020b = (Long) mapB.get(1);
            this.f4021c = (Long) mapB.get(2);
            this.f4022d = (Long) mapB.get(3);
            this.e = (Long) mapB.get(4);
            this.f = (Long) mapB.get(5);
            this.g = (Long) mapB.get(6);
            this.h = (Long) mapB.get(7);
            this.i = (Long) mapB.get(8);
            this.j = (Long) mapB.get(9);
            this.k = (Long) mapB.get(10);
        }
    }
}
