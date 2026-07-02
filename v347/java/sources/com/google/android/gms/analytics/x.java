package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.be;
import com.google.android.gms.internal.measurement.ca;
import com.google.android.gms.internal.measurement.cd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class x implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Map f3281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f3282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f3283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ long f3284d;
    private final /* synthetic */ boolean e;
    private final /* synthetic */ boolean f;
    private final /* synthetic */ String g;
    private final /* synthetic */ h h;

    x(h hVar, Map map, boolean z, String str, long j, boolean z2, boolean z3, String str2) {
        this.h = hVar;
        this.f3281a = map;
        this.f3282b = z;
        this.f3283c = str;
        this.f3284d = j;
        this.e = z2;
        this.f = z3;
        this.g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.h.e.b()) {
            this.f3281a.put("sc", "start");
        }
        Map map = this.f3281a;
        d dVarN = this.h.n();
        com.google.android.gms.common.internal.w.c("getClientId can not be called from the main thread");
        ca.b(map, "cid", dVarN.g().o().b());
        String str = (String) this.f3281a.get("sf");
        if (str != null) {
            double dA = ca.a(str, 100.0d);
            if (ca.a(dA, (String) this.f3281a.get("cid"))) {
                this.h.b("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(dA));
                return;
            }
        }
        com.google.android.gms.internal.measurement.h hVarT = this.h.t();
        if (this.f3282b) {
            ca.a((Map<String, String>) this.f3281a, "ate", hVarT.b());
            ca.a((Map<String, String>) this.f3281a, "adid", hVarT.c());
        } else {
            this.f3281a.remove("ate");
            this.f3281a.remove("adid");
        }
        cd cdVarB = this.h.u().b();
        ca.a((Map<String, String>) this.f3281a, "an", cdVarB.a());
        ca.a((Map<String, String>) this.f3281a, "av", cdVarB.b());
        ca.a((Map<String, String>) this.f3281a, "aid", cdVarB.c());
        ca.a((Map<String, String>) this.f3281a, "aiid", cdVarB.d());
        this.f3281a.put("v", "1");
        this.f3281a.put("_v", com.google.android.gms.internal.measurement.q.f6008b);
        ca.a((Map<String, String>) this.f3281a, "ul", this.h.v().b().a());
        ca.a((Map<String, String>) this.f3281a, "sr", this.h.v().c());
        if (!(this.f3283c.equals("transaction") || this.f3283c.equals("item")) && !this.h.f3251d.a()) {
            this.h.k().a(this.f3281a, "Too many hits sent too quickly, rate limiting invoked");
            return;
        }
        long jA = ca.a((String) this.f3281a.get("ht"));
        if (jA == 0) {
            jA = this.f3284d;
        }
        if (this.e) {
            this.h.k().c("Dry run enabled. Would have sent hit", new be(this.h, this.f3281a, jA, this.f));
            return;
        }
        String str2 = (String) this.f3281a.get("cid");
        HashMap map2 = new HashMap();
        ca.a(map2, "uid", (Map<String, String>) this.f3281a);
        ca.a(map2, "an", (Map<String, String>) this.f3281a);
        ca.a(map2, "aid", (Map<String, String>) this.f3281a);
        ca.a(map2, "av", (Map<String, String>) this.f3281a);
        ca.a(map2, "aiid", (Map<String, String>) this.f3281a);
        this.f3281a.put("_s", String.valueOf(this.h.o().a(new com.google.android.gms.internal.measurement.u(0L, str2, this.g, TextUtils.isEmpty((CharSequence) this.f3281a.get("adid")) ? false : true, 0L, map2))));
        this.h.o().a(new be(this.h, this.f3281a, jA, this.f));
    }
}
