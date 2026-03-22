package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.ad;
import com.google.android.gms.internal.measurement.ah;
import com.google.android.gms.internal.measurement.br;
import com.google.android.gms.internal.measurement.cn;
import com.google.android.gms.internal.measurement.jq;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class x implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Map f3299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ boolean f3300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f3301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ long f3302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f3303e;
    private final /* synthetic */ boolean f;
    private final /* synthetic */ String g;
    private final /* synthetic */ h h;

    x(h hVar, Map map, boolean z, String str, long j, boolean z2, boolean z3, String str2) {
        this.h = hVar;
        this.f3299a = map;
        this.f3300b = z;
        this.f3301c = str;
        this.f3302d = j;
        this.f3303e = z2;
        this.f = z3;
        this.g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.h.f3266e.b()) {
            this.f3299a.put("sc", "start");
        }
        Map map = this.f3299a;
        d dVarN = this.h.n();
        aa.c("getClientId can not be called from the main thread");
        cn.b(map, "cid", dVarN.g().o().b());
        String str = (String) this.f3299a.get("sf");
        if (str != null) {
            double dA = cn.a(str, 100.0d);
            if (cn.a(dA, (String) this.f3299a.get("cid"))) {
                this.h.b("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(dA));
                return;
            }
        }
        com.google.android.gms.internal.measurement.u uVarT = this.h.t();
        if (this.f3300b) {
            cn.a((Map<String, String>) this.f3299a, "ate", uVarT.b());
            cn.a((Map<String, String>) this.f3299a, "adid", uVarT.c());
        } else {
            this.f3299a.remove("ate");
            this.f3299a.remove("adid");
        }
        jq jqVarB = this.h.u().b();
        cn.a((Map<String, String>) this.f3299a, "an", jqVarB.a());
        cn.a((Map<String, String>) this.f3299a, "av", jqVarB.b());
        cn.a((Map<String, String>) this.f3299a, "aid", jqVarB.c());
        cn.a((Map<String, String>) this.f3299a, "aiid", jqVarB.d());
        this.f3299a.put("v", "1");
        this.f3299a.put("_v", ad.f4009b);
        cn.a((Map<String, String>) this.f3299a, "ul", this.h.v().b().a());
        cn.a((Map<String, String>) this.f3299a, "sr", this.h.v().c());
        if (!(this.f3301c.equals("transaction") || this.f3301c.equals("item")) && !this.h.f3265d.a()) {
            this.h.k().a(this.f3299a, "Too many hits sent too quickly, rate limiting invoked");
            return;
        }
        long jA = cn.a((String) this.f3299a.get("ht"));
        if (jA == 0) {
            jA = this.f3302d;
        }
        long j = jA;
        if (this.f3303e) {
            this.h.k().c("Dry run enabled. Would have sent hit", new br(this.h, this.f3299a, j, this.f));
            return;
        }
        String str2 = (String) this.f3299a.get("cid");
        HashMap map2 = new HashMap();
        cn.a(map2, "uid", (Map<String, String>) this.f3299a);
        cn.a(map2, "an", (Map<String, String>) this.f3299a);
        cn.a(map2, "aid", (Map<String, String>) this.f3299a);
        cn.a(map2, "av", (Map<String, String>) this.f3299a);
        cn.a(map2, "aiid", (Map<String, String>) this.f3299a);
        this.f3299a.put("_s", String.valueOf(this.h.o().a(new ah(0L, str2, this.g, !TextUtils.isEmpty((CharSequence) this.f3299a.get("adid")), 0L, map2))));
        this.h.o().a(new br(this.h, this.f3299a, j, this.f));
    }
}
