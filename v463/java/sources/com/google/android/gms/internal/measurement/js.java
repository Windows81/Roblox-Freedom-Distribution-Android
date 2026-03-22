package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class js extends com.google.android.gms.analytics.q<js> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Integer, String> f4633a = new HashMap(4);

    public final Map<Integer, String> a() {
        return Collections.unmodifiableMap(this.f4633a);
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        ((js) qVar).f4633a.putAll(this.f4633a);
    }

    public final String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, String> entry : this.f4633a.entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
            sb.append("dimension");
            sb.append(strValueOf);
            map.put(sb.toString(), entry.getValue());
        }
        return a((Object) map);
    }
}
