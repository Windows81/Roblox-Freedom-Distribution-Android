package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<BasePendingResult<?>, Boolean> f3667a = Collections.synchronizedMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<com.google.android.gms.f.h<?>, Boolean> f3668b = Collections.synchronizedMap(new WeakHashMap());

    private final void a(boolean z, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (this.f3667a) {
            map = new HashMap(this.f3667a);
        }
        synchronized (this.f3668b) {
            map2 = new HashMap(this.f3668b);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).c(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((com.google.android.gms.f.h) entry2.getKey()).b((Exception) new com.google.android.gms.common.api.b(status));
            }
        }
    }

    final void a(BasePendingResult<? extends com.google.android.gms.common.api.l> basePendingResult, boolean z) {
        this.f3667a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.a(new s(this, basePendingResult));
    }

    final <TResult> void a(com.google.android.gms.f.h<TResult> hVar, boolean z) {
        this.f3668b.put(hVar, Boolean.valueOf(z));
        hVar.a().a(new t(this, hVar));
    }

    final boolean a() {
        return (this.f3667a.isEmpty() && this.f3668b.isEmpty()) ? false : true;
    }

    public final void b() {
        a(false, d.f3635a);
    }

    public final void c() {
        a(true, bz.f3572a);
    }
}
