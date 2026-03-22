package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class cg extends com.google.android.gms.analytics.q<cg> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, Double> f5969a = new HashMap(4);

    @SuppressLint({"UseSparseArrays"})
    public cg() {
    }

    public final Map<Integer, Double> a() {
        return Collections.unmodifiableMap(this.f5969a);
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ((cg) qVar).f5969a.putAll(this.f5969a);
    }

    public final String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.f5969a.entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            map.put(new StringBuilder(String.valueOf(strValueOf).length() + 6).append("metric").append(strValueOf).toString(), entry.getValue());
        }
        return a((Object) map);
    }
}
