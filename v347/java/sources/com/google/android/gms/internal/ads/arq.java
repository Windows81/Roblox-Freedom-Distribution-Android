package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class arq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f4405a = (String) aoo.f().a(aro.O);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, String> f4406b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f4407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4408d;

    public arq(Context context, String str) {
        this.f4407c = null;
        this.f4408d = null;
        this.f4407c = context;
        this.f4408d = str;
        this.f4406b.put("s", "gmob_sdk");
        this.f4406b.put("v", "3");
        this.f4406b.put("os", Build.VERSION.RELEASE);
        this.f4406b.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.f4406b;
        com.google.android.gms.ads.internal.aw.e();
        map.put("device", jm.b());
        this.f4406b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.f4406b;
        com.google.android.gms.ads.internal.aw.e();
        map2.put("is_lite_sdk", jm.k(context) ? "1" : "0");
        Future<fc> futureA = com.google.android.gms.ads.internal.aw.p().a(this.f4407c);
        try {
            futureA.get();
            this.f4406b.put("network_coarse", Integer.toString(futureA.get().n));
            this.f4406b.put("network_fine", Integer.toString(futureA.get().o));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.aw.i().a(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    final String a() {
        return this.f4405a;
    }

    final Context b() {
        return this.f4407c;
    }

    final String c() {
        return this.f4408d;
    }

    final Map<String, String> d() {
        return this.f4406b;
    }
}
