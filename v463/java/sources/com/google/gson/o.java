package com.google.gson;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class o extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.g<String, l> f5508a = new com.google.gson.internal.g<>();

    public void a(String str, l lVar) {
        if (lVar == null) {
            lVar = n.f5507a;
        }
        this.f5508a.put(str, lVar);
    }

    public Set<Map.Entry<String, l>> o() {
        return this.f5508a.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof o) && ((o) obj).f5508a.equals(this.f5508a));
    }

    public int hashCode() {
        return this.f5508a.hashCode();
    }
}
