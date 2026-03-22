package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ahk extends aft<Integer, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Long f3998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f3999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f4000c;

    public ahk() {
    }

    public ahk(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final HashMap<Integer, Object> a() {
        HashMap<Integer, Object> map = new HashMap<>();
        map.put(0, this.f3998a);
        map.put(1, this.f3999b);
        map.put(2, this.f4000c);
        return map;
    }

    @Override // com.google.android.gms.internal.ads.aft
    protected final void a(String str) {
        HashMap mapB = b(str);
        if (mapB != null) {
            this.f3998a = (Long) mapB.get(0);
            this.f3999b = (Boolean) mapB.get(1);
            this.f4000c = (Boolean) mapB.get(2);
        }
    }
}
