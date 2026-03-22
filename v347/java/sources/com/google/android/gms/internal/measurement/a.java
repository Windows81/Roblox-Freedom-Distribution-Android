package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class a extends com.google.android.gms.analytics.q<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.google.android.gms.analytics.a.a> f5843a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.google.android.gms.analytics.a.c> f5844b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, List<com.google.android.gms.analytics.a.a>> f5845c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.analytics.a.b f5846d;

    public final com.google.android.gms.analytics.a.b a() {
        return this.f5846d;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        a aVar = (a) qVar;
        aVar.f5843a.addAll(this.f5843a);
        aVar.f5844b.addAll(this.f5844b);
        for (Map.Entry<String, List<com.google.android.gms.analytics.a.a>> entry : this.f5845c.entrySet()) {
            String key = entry.getKey();
            for (com.google.android.gms.analytics.a.a aVar2 : entry.getValue()) {
                if (aVar2 != null) {
                    String str = key == null ? "" : key;
                    if (!aVar.f5845c.containsKey(str)) {
                        aVar.f5845c.put(str, new ArrayList());
                    }
                    aVar.f5845c.get(str).add(aVar2);
                }
            }
        }
        if (this.f5846d != null) {
            aVar.f5846d = this.f5846d;
        }
    }

    public final List<com.google.android.gms.analytics.a.a> b() {
        return Collections.unmodifiableList(this.f5843a);
    }

    public final Map<String, List<com.google.android.gms.analytics.a.a>> c() {
        return this.f5845c;
    }

    public final List<com.google.android.gms.analytics.a.c> d() {
        return Collections.unmodifiableList(this.f5844b);
    }

    public final String toString() {
        HashMap map = new HashMap();
        if (!this.f5843a.isEmpty()) {
            map.put("products", this.f5843a);
        }
        if (!this.f5844b.isEmpty()) {
            map.put("promotions", this.f5844b);
        }
        if (!this.f5845c.isEmpty()) {
            map.put("impressions", this.f5845c);
        }
        map.put("productAction", this.f5846d);
        return a((Object) map);
    }
}
