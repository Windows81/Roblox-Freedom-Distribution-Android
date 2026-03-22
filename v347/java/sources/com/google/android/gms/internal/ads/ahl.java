package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ahl extends aft<Integer, Long> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f4001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f4002b;

    public ahl() {
    }

    public ahl(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.f4001a);
        map.put(1, this.f4002b);
        return map;
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final void a(String str) {
        HashMap mapB = b(str);
        if (mapB != null) {
            this.f4001a = (Long) mapB.get(0);
            this.f4002b = (Long) mapB.get(1);
        }
    }
}
