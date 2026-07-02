package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
final class av {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f3027b = new TreeMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3029d;

    public av(String str) {
        this.f3026a = str;
    }

    public final String a() {
        return this.f3029d;
    }

    public final void a(zzjj zzjjVar, zzang zzangVar) {
        this.f3028c = zzjjVar.j.f5808a;
        Bundle bundle = zzjjVar.m != null ? zzjjVar.m.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle == null) {
            return;
        }
        String str = (String) aoo.f().a(aro.cy);
        for (String str2 : bundle.keySet()) {
            if (str.equals(str2)) {
                this.f3029d = bundle.getString(str2);
            } else if (str2.startsWith("csa_")) {
                this.f3027b.put(str2.substring(4), bundle.getString(str2));
            }
        }
        this.f3027b.put("SDKVersion", zzangVar.f5784a);
    }

    public final String b() {
        return this.f3028c;
    }

    public final String c() {
        return this.f3026a;
    }

    public final Map<String, String> d() {
        return this.f3027b;
    }
}
