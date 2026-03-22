package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class kg extends com.google.android.gms.analytics.q<kg> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, Double> f4658a = new HashMap(4);

    public final Map<Integer, Double> a() {
        return Collections.unmodifiableMap(this.f4658a);
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ((kg) qVar).f4658a.putAll(this.f4658a);
    }

    public final String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.f4658a.entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 6);
            sb.append("metric");
            sb.append(strValueOf);
            map.put(sb.toString(), entry.getValue());
        }
        return a((Object) map);
    }
}
