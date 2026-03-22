package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class cf extends com.google.android.gms.analytics.q<cf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, String> f5968a = new HashMap(4);

    public final Map<Integer, String> a() {
        return Collections.unmodifiableMap(this.f5968a);
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ((cf) qVar).f5968a.putAll(this.f5968a);
    }

    public final String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, String> entry : this.f5968a.entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            map.put(new StringBuilder(String.valueOf(strValueOf).length() + 9).append("dimension").append(strValueOf).toString(), entry.getValue());
        }
        return a((Object) map);
    }
}
