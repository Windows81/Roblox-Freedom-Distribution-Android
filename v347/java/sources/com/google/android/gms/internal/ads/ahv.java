package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ahv extends aft<Integer, Long> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f4024a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Long f4025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f4026c;

    public ahv() {
    }

    public ahv(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> map = new HashMap<>();
        map.put(0, this.f4024a);
        map.put(1, this.f4025b);
        map.put(2, this.f4026c);
        return map;
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final void a(String str) {
        HashMap mapB = b(str);
        if (mapB != null) {
            this.f4024a = (Long) mapB.get(0);
            this.f4025b = (Long) mapB.get(1);
            this.f4026c = (Long) mapB.get(2);
        }
    }
}
