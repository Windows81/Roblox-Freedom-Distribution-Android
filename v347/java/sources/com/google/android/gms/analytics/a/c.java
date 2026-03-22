package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.q;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f3234a = new HashMap();

    public final Map<String, String> a(String str) {
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : this.f3234a.entrySet()) {
            String strValueOf = String.valueOf(str);
            String strValueOf2 = String.valueOf(entry.getKey());
            map.put(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf), entry.getValue());
        }
        return map;
    }

    public String toString() {
        return q.a((Map) this.f3234a);
    }
}
