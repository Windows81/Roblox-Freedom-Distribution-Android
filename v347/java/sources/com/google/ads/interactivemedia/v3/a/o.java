package com.google.ads.interactivemedia.v3.a;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class o extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.ads.interactivemedia.v3.a.b.g<String, l> f2760a = new com.google.ads.interactivemedia.v3.a.b.g<>();

    public void a(String str, l lVar) {
        if (lVar == null) {
            lVar = n.f2759a;
        }
        this.f2760a.put(str, lVar);
    }

    public Set<Map.Entry<String, l>> o() {
        return this.f2760a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof o) && ((o) obj).f2760a.equals(this.f2760a));
    }

    public int hashCode() {
        return this.f2760a.hashCode();
    }
}
