package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class baj implements ays, bai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bah f4714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<AbstractMap.SimpleEntry<String, com.google.android.gms.ads.internal.gmsg.ae<? super bah>>> f4715b = new HashSet<>();

    public baj(bah bahVar) {
        this.f4714a = bahVar;
    }

    @Override // com.google.android.gms.internal.ads.bai
    public final void a() {
        for (AbstractMap.SimpleEntry<String, com.google.android.gms.ads.internal.gmsg.ae<? super bah>> simpleEntry : this.f4715b) {
            String strValueOf = String.valueOf(simpleEntry.getValue().toString());
            jd.a(strValueOf.length() != 0 ? "Unregistering eventhandler: ".concat(strValueOf) : new String("Unregistering eventhandler: "));
            this.f4714a.b(simpleEntry.getKey(), simpleEntry.getValue());
        }
        this.f4715b.clear();
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final void a(String str, com.google.android.gms.ads.internal.gmsg.ae<? super bah> aeVar) {
        this.f4714a.a(str, aeVar);
        this.f4715b.add(new AbstractMap.SimpleEntry<>(str, aeVar));
    }

    @Override // com.google.android.gms.internal.ads.ays
    public final void a(String str, String str2) {
        ayt.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, Map map) {
        ayt.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.ayi
    public final void a(String str, JSONObject jSONObject) {
        ayt.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.azj
    public final void b(String str) {
        this.f4714a.b(str);
    }

    @Override // com.google.android.gms.internal.ads.bah
    public final void b(String str, com.google.android.gms.ads.internal.gmsg.ae<? super bah> aeVar) {
        this.f4714a.b(str, aeVar);
        this.f4715b.remove(new AbstractMap.SimpleEntry(str, aeVar));
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str, JSONObject jSONObject) {
        ayt.a(this, str, jSONObject);
    }
}
