package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f3244a;

    public final Map<String, String> a() {
        return new HashMap(this.f3244a);
    }

    public String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : this.f3244a.entrySet()) {
            map.put(entry.getKey().startsWith("&") ? entry.getKey().substring(1) : entry.getKey(), entry.getValue());
        }
        return q.a((Map) map);
    }
}
