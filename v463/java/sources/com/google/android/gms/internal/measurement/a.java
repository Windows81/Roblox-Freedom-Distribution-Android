package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a extends com.google.android.gms.analytics.q<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.google.android.gms.analytics.a.a> f4001a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<com.google.android.gms.analytics.a.c> f4002b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, List<com.google.android.gms.analytics.a.a>> f4003c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.analytics.a.b f4004d;

    public final com.google.android.gms.analytics.a.b a() {
        return this.f4004d;
    }

    @Override // com.google.android.gms.analytics.q
    public final /* synthetic */ void a(com.google.android.gms.analytics.q qVar) {
        a aVar = (a) qVar;
        aVar.f4001a.addAll(this.f4001a);
        aVar.f4002b.addAll(this.f4002b);
        for (Map.Entry<String, List<com.google.android.gms.analytics.a.a>> entry : this.f4003c.entrySet()) {
            String key = entry.getKey();
            for (com.google.android.gms.analytics.a.a aVar2 : entry.getValue()) {
                if (aVar2 != null) {
                    String str = key == null ? "" : key;
                    if (!aVar.f4003c.containsKey(str)) {
                        aVar.f4003c.put(str, new ArrayList());
                    }
                    aVar.f4003c.get(str).add(aVar2);
                }
            }
        }
        com.google.android.gms.analytics.a.b bVar = this.f4004d;
        if (bVar != null) {
            aVar.f4004d = bVar;
        }
    }

    public final List<com.google.android.gms.analytics.a.a> b() {
        return Collections.unmodifiableList(this.f4001a);
    }

    public final Map<String, List<com.google.android.gms.analytics.a.a>> c() {
        return this.f4003c;
    }

    public final List<com.google.android.gms.analytics.a.c> d() {
        return Collections.unmodifiableList(this.f4002b);
    }

    public final String toString() {
        HashMap map = new HashMap();
        if (!this.f4001a.isEmpty()) {
            map.put("products", this.f4001a);
        }
        if (!this.f4002b.isEmpty()) {
            map.put("promotions", this.f4002b);
        }
        if (!this.f4003c.isEmpty()) {
            map.put("impressions", this.f4003c);
        }
        map.put("productAction", this.f4004d);
        return a((Object) map);
    }
}
