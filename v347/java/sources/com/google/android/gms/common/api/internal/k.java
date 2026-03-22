package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<BasePendingResult<?>, Boolean> f3390a = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<com.google.android.gms.d.g<?>, Boolean> f3391b = Collections.synchronizedMap(new WeakHashMap());

    private final void a(boolean z, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (this.f3390a) {
            map = new HashMap(this.f3390a);
        }
        synchronized (this.f3391b) {
            map2 = new HashMap(this.f3391b);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).a(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((com.google.android.gms.d.g) entry2.getKey()).b((Exception) new com.google.android.gms.common.api.b(status));
            }
        }
    }

    final <TResult> void a(com.google.android.gms.d.g<TResult> gVar, boolean z) {
        this.f3391b.put(gVar, Boolean.valueOf(z));
        gVar.a().a(new l(this, gVar));
    }

    final boolean a() {
        return (this.f3390a.isEmpty() && this.f3391b.isEmpty()) ? false : true;
    }

    public final void b() {
        a(false, b.f3368a);
    }

    public final void c() {
        a(true, ac.f3345a);
    }
}
