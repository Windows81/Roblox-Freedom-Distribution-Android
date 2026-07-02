package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ad extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aa f5854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final bl f5855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bk f5856d;
    private final v e;
    private long f;
    private final at g;
    private final at h;
    private final bw i;
    private long j;
    private boolean k;

    protected ad(r rVar, t tVar) {
        super(rVar);
        com.google.android.gms.common.internal.w.a(tVar);
        this.f = Long.MIN_VALUE;
        this.f5856d = new bk(rVar);
        this.f5854b = new aa(rVar);
        this.f5855c = new bl(rVar);
        this.e = new v(rVar);
        this.i = new bw(i());
        this.g = new ae(this, rVar);
        this.h = new af(this, rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        a((ax) new ah(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        try {
            this.f5854b.f();
            g();
        } catch (SQLiteException e) {
            d("Failed to delete stale hits", e);
        }
        this.h.a(86400000L);
    }

    private final void C() {
        if (this.k || !ar.b() || this.e.b()) {
            return;
        }
        if (this.i.a(az.C.a().longValue())) {
            this.i.a();
            b("Connecting to service");
            if (this.e.c()) {
                b("Connected to service");
                this.i.b();
                e();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
    
        b("Store is empty, nothing to dispatch");
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
    
        r12.f5854b.c();
        r12.f5854b.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
    
        e("Failed to commit local dispatch transaction", r0);
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e7, code lost:
    
        if (r12.e.b() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e9, code lost:
    
        b("Service connected, sending hits to the service");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f2, code lost:
    
        if (r8.isEmpty() != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f4, code lost:
    
        r0 = r8.get(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0101, code lost:
    
        if (r12.e.a(r0) == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0103, code lost:
    
        r4 = java.lang.Math.max(r4, r0.c());
        r8.remove(r0);
        b("Hit sent do device AnalyticsService for delivery", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0113, code lost:
    
        r12.f5854b.b(r0.c());
        r3.add(java.lang.Long.valueOf(r0.c()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0128, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0129, code lost:
    
        e("Failed to remove hit that was send for delivery", r0);
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0131, code lost:
    
        r12.f5854b.c();
        r12.f5854b.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x013d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x013e, code lost:
    
        e("Failed to commit local dispatch transaction", r0);
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0148, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x014f, code lost:
    
        if (r12.f5855c.b() == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0151, code lost:
    
        r8 = r12.f5855c.a(r8);
        r9 = r8.iterator();
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0160, code lost:
    
        if (r9.hasNext() == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0162, code lost:
    
        r4 = java.lang.Math.max(r4, r9.next().longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0171, code lost:
    
        r12.f5854b.a(r8);
        r3.addAll(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0179, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x017e, code lost:
    
        if (r3.isEmpty() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0180, code lost:
    
        r12.f5854b.c();
        r12.f5854b.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x018c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x018d, code lost:
    
        e("Failed to commit local dispatch transaction", r0);
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0197, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0198, code lost:
    
        e("Failed to remove successfully uploaded hits", r0);
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01a0, code lost:
    
        r12.f5854b.c();
        r12.f5854b.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ac, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01ad, code lost:
    
        e("Failed to commit local dispatch transaction", r0);
        G();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01b7, code lost:
    
        r12.f5854b.c();
        r12.f5854b.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c5, code lost:
    
        e("Failed to commit local dispatch transaction", r0);
        G();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean D() {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ad.D():boolean");
    }

    private final long E() {
        com.google.android.gms.analytics.s.d();
        y();
        try {
            return this.f5854b.g();
        } catch (SQLiteException e) {
            e("Failed to get min/max hit times from local store", e);
            return 0L;
        }
    }

    private final void F() {
        aw awVarP = p();
        if (awVarP.b() && !awVarP.c()) {
            long jE = E();
            if (jE == 0 || Math.abs(i().a() - jE) > az.h.a().longValue()) {
                return;
            }
            a("Dispatch alarm scheduled (ms)", Long.valueOf(ar.e()));
            awVarP.d();
        }
    }

    private final void G() {
        if (this.g.c()) {
            b("All hits dispatched or no network/service. Going to power save mode");
        }
        this.g.d();
        aw awVarP = p();
        if (awVarP.c()) {
            awVarP.e();
        }
    }

    private final long H() {
        if (this.f != Long.MIN_VALUE) {
            return this.f;
        }
        long jLongValue = az.e.a().longValue();
        cb cbVarQ = q();
        cbVarQ.y();
        if (!cbVarQ.f5954a) {
            return jLongValue;
        }
        cb cbVarQ2 = q();
        cbVarQ2.y();
        return ((long) cbVarQ2.f5955b) * 1000;
    }

    private final void I() {
        y();
        com.google.android.gms.analytics.s.d();
        this.k = true;
        this.e.d();
        g();
    }

    private final void a(u uVar, ce ceVar) {
        com.google.android.gms.common.internal.w.a(uVar);
        com.google.android.gms.common.internal.w.a(ceVar);
        com.google.android.gms.analytics.i iVar = new com.google.android.gms.analytics.i(h());
        iVar.a(uVar.c());
        iVar.b(uVar.d());
        com.google.android.gms.analytics.o oVarH = iVar.h();
        d dVar = (d) oVarH.b(d.class);
        dVar.a("data");
        dVar.b(true);
        oVarH.a(ceVar);
        ch chVar = (ch) oVarH.b(ch.class);
        cd cdVar = (cd) oVarH.b(cd.class);
        for (Map.Entry<String, String> entry : uVar.f().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                cdVar.a(value);
            } else if ("av".equals(key)) {
                cdVar.b(value);
            } else if ("aid".equals(key)) {
                cdVar.c(value);
            } else if ("aiid".equals(key)) {
                cdVar.d(value);
            } else if ("uid".equals(key)) {
                dVar.c(value);
            } else {
                chVar.a(key, value);
            }
        }
        b("Sending installation campaign to", uVar.c(), ceVar);
        oVarH.a(r().b());
        oVarH.e();
    }

    private final boolean g(String str) {
        return com.google.android.gms.common.c.c.b(j()).a(str) == 0;
    }

    public final long a(u uVar, boolean z) {
        com.google.android.gms.common.internal.w.a(uVar);
        y();
        com.google.android.gms.analytics.s.d();
        try {
            try {
                this.f5854b.b();
                aa aaVar = this.f5854b;
                long jA = uVar.a();
                String strB = uVar.b();
                com.google.android.gms.common.internal.w.a(strB);
                aaVar.y();
                com.google.android.gms.analytics.s.d();
                int iDelete = aaVar.A().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(jA), strB});
                if (iDelete > 0) {
                    aaVar.a("Deleted property records", Integer.valueOf(iDelete));
                }
                long jA2 = this.f5854b.a(uVar.a(), uVar.b(), uVar.c());
                uVar.a(1 + jA2);
                aa aaVar2 = this.f5854b;
                com.google.android.gms.common.internal.w.a(uVar);
                aaVar2.y();
                com.google.android.gms.analytics.s.d();
                SQLiteDatabase sQLiteDatabaseA = aaVar2.A();
                Map<String, String> mapF = uVar.f();
                com.google.android.gms.common.internal.w.a(mapF);
                Uri.Builder builder = new Uri.Builder();
                for (Map.Entry<String, String> entry : mapF.entrySet()) {
                    builder.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                String encodedQuery = builder.build().getEncodedQuery();
                String str = encodedQuery == null ? "" : encodedQuery;
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_uid", Long.valueOf(uVar.a()));
                contentValues.put("cid", uVar.b());
                contentValues.put("tid", uVar.c());
                contentValues.put("adid", Integer.valueOf(uVar.d() ? 1 : 0));
                contentValues.put("hits_count", Long.valueOf(uVar.e()));
                contentValues.put("params", str);
                try {
                    if (sQLiteDatabaseA.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                        aaVar2.f("Failed to insert/update a property (got -1)");
                    }
                } catch (SQLiteException e) {
                    aaVar2.e("Error storing a property", e);
                }
                this.f5854b.c();
                return jA2;
            } finally {
                try {
                    this.f5854b.d();
                } catch (SQLiteException e2) {
                    e("Failed to end transaction", e2);
                }
            }
        } catch (SQLiteException e3) {
            e("Failed to update Analytics property", e3);
            try {
                this.f5854b.d();
            } catch (SQLiteException e4) {
                e("Failed to end transaction", e4);
            }
            return -1L;
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        this.f5854b.z();
        this.f5855c.z();
        this.e.z();
    }

    public final void a(ax axVar) {
        long j = this.j;
        com.google.android.gms.analytics.s.d();
        y();
        long jD = r().d();
        b("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(jD != 0 ? Math.abs(i().a() - jD) : -1L));
        C();
        try {
            D();
            r().e();
            g();
            if (axVar != null) {
                axVar.a(null);
            }
            if (this.j != j) {
                this.f5856d.c();
            }
        } catch (Exception e) {
            e("Local dispatch failed", e);
            r().e();
            g();
            if (axVar != null) {
                axVar.a(e);
            }
        }
    }

    public final void a(be beVar) throws Throwable {
        Pair<String, Long> pairA;
        com.google.android.gms.common.internal.w.a(beVar);
        com.google.android.gms.analytics.s.d();
        y();
        if (this.k) {
            c("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            a("Delivering hit", beVar);
        }
        if (TextUtils.isEmpty(beVar.h()) && (pairA = r().g().a()) != null) {
            Long l = (Long) pairA.second;
            String str = (String) pairA.first;
            String strValueOf = String.valueOf(l);
            String string = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(str).length()).append(strValueOf).append(":").append(str).toString();
            HashMap map = new HashMap(beVar.b());
            map.put("_m", string);
            beVar = new be(this, map, beVar.d(), beVar.f(), beVar.c(), beVar.a(), beVar.e());
        }
        C();
        if (this.e.a(beVar)) {
            c("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.f5854b.a(beVar);
            g();
        } catch (SQLiteException e) {
            e("Delivery failed to save hit to a database", e);
            k().a(beVar, "deliver: failed to insert hit to database");
        }
    }

    protected final void a(u uVar) {
        com.google.android.gms.analytics.s.d();
        b("Sending first hit to property", uVar.c());
        if (r().c().a(ar.l())) {
            return;
        }
        String strF = r().f();
        if (TextUtils.isEmpty(strF)) {
            return;
        }
        ce ceVarA = ca.a(k(), strF);
        b("Found relevant installation campaign", ceVarA);
        a(uVar, ceVarA);
    }

    public final void a(String str) {
        com.google.android.gms.common.internal.w.a(str);
        com.google.android.gms.analytics.s.d();
        ce ceVarA = ca.a(k(), str);
        if (ceVarA == null) {
            d("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String strF = r().f();
        if (str.equals(strF)) {
            e("Ignoring duplicate install campaign");
            return;
        }
        if (!TextUtils.isEmpty(strF)) {
            d("Ignoring multiple install campaigns. original, new", strF, str);
            return;
        }
        r().a(str);
        if (r().c().a(ar.l())) {
            d("Campaign received too late, ignoring", ceVarA);
            return;
        }
        b("Received installation campaign", ceVarA);
        Iterator<u> it = this.f5854b.c(0L).iterator();
        while (it.hasNext()) {
            a(it.next(), ceVarA);
        }
    }

    final void b() {
        y();
        com.google.android.gms.common.internal.w.a(!this.f5853a, "Analytics backend already started");
        this.f5853a = true;
        m().a(new ag(this));
    }

    protected final void c() {
        y();
        com.google.android.gms.analytics.s.d();
        Context contextA = h().a();
        if (!bq.a(contextA)) {
            e("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!br.a(contextA)) {
            f("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!com.google.android.gms.analytics.a.a(contextA)) {
            e("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        r().b();
        if (!g("android.permission.ACCESS_NETWORK_STATE")) {
            f("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            I();
        }
        if (!g("android.permission.INTERNET")) {
            f("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            I();
        }
        if (br.a(j())) {
            b("AnalyticsService registered in the app manifest and enabled");
        } else {
            e("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.k && !this.f5854b.e()) {
            C();
        }
        g();
    }

    final void d() {
        com.google.android.gms.analytics.s.d();
        this.j = i().a();
    }

    protected final void e() {
        com.google.android.gms.analytics.s.d();
        com.google.android.gms.analytics.s.d();
        y();
        if (!ar.b()) {
            e("Service client disabled. Can't dispatch local hits to device AnalyticsService");
        }
        if (!this.e.b()) {
            b("Service not connected");
            return;
        }
        if (this.f5854b.e()) {
            return;
        }
        b("Dispatching local hits to device AnalyticsService");
        while (true) {
            try {
                List<be> listA = this.f5854b.a(ar.f());
                if (listA.isEmpty()) {
                    g();
                    return;
                }
                while (!listA.isEmpty()) {
                    be beVar = listA.get(0);
                    if (!this.e.a(beVar)) {
                        g();
                        return;
                    }
                    listA.remove(beVar);
                    try {
                        this.f5854b.b(beVar.c());
                    } catch (SQLiteException e) {
                        e("Failed to remove hit that was send for delivery", e);
                        G();
                        return;
                    }
                }
            } catch (SQLiteException e2) {
                e("Failed to read hits from store", e2);
                G();
                return;
            }
        }
    }

    public final void f() {
        com.google.android.gms.analytics.s.d();
        y();
        c("Sync dispatching local hits");
        long j = this.j;
        C();
        try {
            D();
            r().e();
            g();
            if (this.j != j) {
                this.f5856d.c();
            }
        } catch (Exception e) {
            e("Sync local dispatch failed", e);
            g();
        }
    }

    public final void g() {
        boolean zD;
        long jMin;
        com.google.android.gms.analytics.s.d();
        y();
        if (!(!this.k && H() > 0)) {
            this.f5856d.b();
            G();
            return;
        }
        if (this.f5854b.e()) {
            this.f5856d.b();
            G();
            return;
        }
        if (az.z.a().booleanValue()) {
            zD = true;
        } else {
            this.f5856d.a();
            zD = this.f5856d.d();
        }
        if (!zD) {
            G();
            F();
            return;
        }
        F();
        long jH = H();
        long jD = r().d();
        if (jD != 0) {
            jMin = jH - Math.abs(i().a() - jD);
            if (jMin <= 0) {
                jMin = Math.min(ar.d(), jH);
            }
        } else {
            jMin = Math.min(ar.d(), jH);
        }
        a("Dispatch scheduled (ms)", Long.valueOf(jMin));
        if (this.g.c()) {
            this.g.b(Math.max(1L, jMin + this.g.b()));
        } else {
            this.g.a(jMin);
        }
    }
}
