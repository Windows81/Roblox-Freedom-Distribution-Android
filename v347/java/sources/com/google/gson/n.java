package com.google.gson;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class n extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.internal.f<String, k> f6336a = new com.google.gson.internal.f<>();

    public void a(String str, k kVar) {
        if (kVar == null) {
            kVar = m.f6335a;
        }
        this.f6336a.put(str, kVar);
    }

    public void a(String str, String str2) {
        a(str, a((Object) str2));
    }

    private k a(Object obj) {
        return obj == null ? m.f6335a : new q(obj);
    }

    public Set<Map.Entry<String, k>> a() {
        return this.f6336a.entrySet();
    }

    public boolean a(String str) {
        return this.f6336a.containsKey(str);
    }

    public k b(String str) {
        return this.f6336a.get(str);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof n) && ((n) obj).f6336a.equals(this.f6336a));
    }

    public int hashCode() {
        return this.f6336a.hashCode();
    }
}
