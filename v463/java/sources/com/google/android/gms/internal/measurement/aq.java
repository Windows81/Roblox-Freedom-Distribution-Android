package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class aq extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final an f4043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final by f4044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bx f4045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ai f4046e;
    private long f;
    private final bg g;
    private final bg h;
    private final cj i;
    private long j;
    private boolean k;

    protected aq(ae aeVar, ag agVar) {
        super(aeVar);
        com.google.android.gms.common.internal.aa.a(agVar);
        this.f = Long.MIN_VALUE;
        this.f4045d = new bx(aeVar);
        this.f4043b = new an(aeVar);
        this.f4044c = new by(aeVar);
        this.f4046e = new ai(aeVar);
        this.i = new cj(i());
        this.g = new ar(this, aeVar);
        this.h = new as(this, aeVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        a((bk) new au(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        try {
            this.f4043b.f();
            g();
        } catch (SQLiteException e2) {
            d("Failed to delete stale hits", e2);
        }
        this.h.a(86400000L);
    }

    private final void C() {
        if (this.k || !be.b() || this.f4046e.b()) {
            return;
        }
        if (this.i.a(bm.C.a().longValue())) {
            this.i.a();
            b("Connecting to service");
            if (this.f4046e.c()) {
                b("Connected to service");
                this.i.b();
                e();
            }
        }
    }

    private final boolean D() {
        com.google.android.gms.analytics.s.d();
        y();
        b("Dispatching a batch of local hits");
        boolean z = !this.f4046e.b();
        boolean z2 = !this.f4044c.b();
        if (z && z2) {
            b("No network or service available. Will retry later");
            return false;
        }
        long jMax = Math.max(be.f(), be.g());
        ArrayList arrayList = new ArrayList();
        long jMax2 = 0;
        while (true) {
            try {
                try {
                    this.f4043b.b();
                    arrayList.clear();
                    try {
                        List<br> listA = this.f4043b.a(jMax);
                        if (listA.isEmpty()) {
                            b("Store is empty, nothing to dispatch");
                            G();
                            try {
                                this.f4043b.c();
                                this.f4043b.d();
                                return false;
                            } catch (SQLiteException e2) {
                                e("Failed to commit local dispatch transaction", e2);
                                G();
                                return false;
                            }
                        }
                        a("Hits loaded from store. count", Integer.valueOf(listA.size()));
                        Iterator<br> it = listA.iterator();
                        while (it.hasNext()) {
                            if (it.next().c() == jMax2) {
                                d("Database contains successfully uploaded hit", Long.valueOf(jMax2), Integer.valueOf(listA.size()));
                                G();
                                try {
                                    this.f4043b.c();
                                    this.f4043b.d();
                                    return false;
                                } catch (SQLiteException e3) {
                                    e("Failed to commit local dispatch transaction", e3);
                                    G();
                                    return false;
                                }
                            }
                        }
                        if (this.f4046e.b()) {
                            b("Service connected, sending hits to the service");
                            while (!listA.isEmpty()) {
                                br brVar = listA.get(0);
                                if (!this.f4046e.a(brVar)) {
                                    break;
                                }
                                jMax2 = Math.max(jMax2, brVar.c());
                                listA.remove(brVar);
                                b("Hit sent do device AnalyticsService for delivery", brVar);
                                try {
                                    this.f4043b.b(brVar.c());
                                    arrayList.add(Long.valueOf(brVar.c()));
                                } catch (SQLiteException e4) {
                                    e("Failed to remove hit that was send for delivery", e4);
                                    G();
                                    try {
                                        this.f4043b.c();
                                        this.f4043b.d();
                                        return false;
                                    } catch (SQLiteException e5) {
                                        e("Failed to commit local dispatch transaction", e5);
                                        G();
                                        return false;
                                    }
                                }
                            }
                        }
                        if (this.f4044c.b()) {
                            List<Long> listA2 = this.f4044c.a(listA);
                            Iterator<Long> it2 = listA2.iterator();
                            while (it2.hasNext()) {
                                jMax2 = Math.max(jMax2, it2.next().longValue());
                            }
                            try {
                                this.f4043b.a(listA2);
                                arrayList.addAll(listA2);
                            } catch (SQLiteException e6) {
                                e("Failed to remove successfully uploaded hits", e6);
                                G();
                                try {
                                    this.f4043b.c();
                                    this.f4043b.d();
                                    return false;
                                } catch (SQLiteException e7) {
                                    e("Failed to commit local dispatch transaction", e7);
                                    G();
                                    return false;
                                }
                            }
                        }
                        if (arrayList.isEmpty()) {
                            try {
                                this.f4043b.c();
                                this.f4043b.d();
                                return false;
                            } catch (SQLiteException e8) {
                                e("Failed to commit local dispatch transaction", e8);
                                G();
                                return false;
                            }
                        }
                        try {
                            this.f4043b.c();
                            this.f4043b.d();
                        } catch (SQLiteException e9) {
                            e("Failed to commit local dispatch transaction", e9);
                            G();
                            return false;
                        }
                    } catch (SQLiteException e10) {
                        d("Failed to read hits from persisted store", e10);
                        G();
                        try {
                            this.f4043b.c();
                            this.f4043b.d();
                            return false;
                        } catch (SQLiteException e11) {
                            e("Failed to commit local dispatch transaction", e11);
                            G();
                            return false;
                        }
                    }
                } catch (Throwable th) {
                    this.f4043b.c();
                    this.f4043b.d();
                    throw th;
                }
                this.f4043b.c();
                this.f4043b.d();
                throw th;
            } catch (SQLiteException e12) {
                e("Failed to commit local dispatch transaction", e12);
                G();
                return false;
            }
        }
    }

    private final long E() {
        com.google.android.gms.analytics.s.d();
        y();
        try {
            return this.f4043b.g();
        } catch (SQLiteException e2) {
            e("Failed to get min/max hit times from local store", e2);
            return 0L;
        }
    }

    private final void F() {
        bj bjVarP = p();
        if (bjVarP.b() && !bjVarP.c()) {
            long jE = E();
            if (jE == 0 || Math.abs(i().a() - jE) > bm.h.a().longValue()) {
                return;
            }
            a("Dispatch alarm scheduled (ms)", Long.valueOf(be.e()));
            bjVarP.d();
        }
    }

    private final void G() {
        if (this.g.c()) {
            b("All hits dispatched or no network/service. Going to power save mode");
        }
        this.g.d();
        bj bjVarP = p();
        if (bjVarP.c()) {
            bjVarP.e();
        }
    }

    private final long H() {
        long j = this.f;
        if (j != Long.MIN_VALUE) {
            return j;
        }
        long jLongValue = bm.f4086e.a().longValue();
        co coVarQ = q();
        coVarQ.y();
        if (!coVarQ.f4153a) {
            return jLongValue;
        }
        co coVarQ2 = q();
        coVarQ2.y();
        return ((long) coVarQ2.f4154b) * 1000;
    }

    private final void I() {
        y();
        com.google.android.gms.analytics.s.d();
        this.k = true;
        this.f4046e.d();
        g();
    }

    private final void a(ah ahVar, jr jrVar) {
        com.google.android.gms.common.internal.aa.a(ahVar);
        com.google.android.gms.common.internal.aa.a(jrVar);
        com.google.android.gms.analytics.i iVar = new com.google.android.gms.analytics.i(h());
        iVar.a(ahVar.c());
        iVar.b(ahVar.d());
        com.google.android.gms.analytics.o oVarH = iVar.h();
        q qVar = (q) oVarH.b(q.class);
        qVar.a("data");
        qVar.b(true);
        oVarH.a(jrVar);
        kk kkVar = (kk) oVarH.b(kk.class);
        jq jqVar = (jq) oVarH.b(jq.class);
        for (Map.Entry<String, String> entry : ahVar.f().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                jqVar.a(value);
            } else if ("av".equals(key)) {
                jqVar.b(value);
            } else if ("aid".equals(key)) {
                jqVar.c(value);
            } else if ("aiid".equals(key)) {
                jqVar.d(value);
            } else if ("uid".equals(key)) {
                qVar.c(value);
            } else {
                kkVar.a(key, value);
            }
        }
        b("Sending installation campaign to", ahVar.c(), jrVar);
        oVarH.a(r().b());
        oVarH.e();
    }

    private final boolean g(String str) {
        return com.google.android.gms.common.d.c.b(j()).a(str) == 0;
    }

    public final long a(ah ahVar, boolean z) {
        com.google.android.gms.common.internal.aa.a(ahVar);
        y();
        com.google.android.gms.analytics.s.d();
        try {
            try {
                this.f4043b.b();
                an anVar = this.f4043b;
                long jA = ahVar.a();
                String strB = ahVar.b();
                com.google.android.gms.common.internal.aa.a(strB);
                anVar.y();
                com.google.android.gms.analytics.s.d();
                int iDelete = anVar.A().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(jA), strB});
                if (iDelete > 0) {
                    anVar.a("Deleted property records", Integer.valueOf(iDelete));
                }
                long jA2 = this.f4043b.a(ahVar.a(), ahVar.b(), ahVar.c());
                ahVar.a(1 + jA2);
                an anVar2 = this.f4043b;
                com.google.android.gms.common.internal.aa.a(ahVar);
                anVar2.y();
                com.google.android.gms.analytics.s.d();
                SQLiteDatabase sQLiteDatabaseA = anVar2.A();
                Map<String, String> mapF = ahVar.f();
                com.google.android.gms.common.internal.aa.a(mapF);
                Uri.Builder builder = new Uri.Builder();
                for (Map.Entry<String, String> entry : mapF.entrySet()) {
                    builder.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                String encodedQuery = builder.build().getEncodedQuery();
                if (encodedQuery == null) {
                    encodedQuery = "";
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_uid", Long.valueOf(ahVar.a()));
                contentValues.put("cid", ahVar.b());
                contentValues.put("tid", ahVar.c());
                contentValues.put("adid", Integer.valueOf(ahVar.d() ? 1 : 0));
                contentValues.put("hits_count", Long.valueOf(ahVar.e()));
                contentValues.put("params", encodedQuery);
                try {
                    if (sQLiteDatabaseA.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                        anVar2.f("Failed to insert/update a property (got -1)");
                    }
                } catch (SQLiteException e2) {
                    anVar2.e("Error storing a property", e2);
                }
                this.f4043b.c();
                try {
                    this.f4043b.d();
                } catch (SQLiteException e3) {
                    e("Failed to end transaction", e3);
                }
                return jA2;
            } catch (SQLiteException e4) {
                e("Failed to update Analytics property", e4);
                try {
                    this.f4043b.d();
                } catch (SQLiteException e5) {
                    e("Failed to end transaction", e5);
                }
                return -1L;
            }
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        this.f4043b.z();
        this.f4044c.z();
        this.f4046e.z();
    }

    protected final void a(ah ahVar) {
        com.google.android.gms.analytics.s.d();
        b("Sending first hit to property", ahVar.c());
        if (r().c().a(be.l())) {
            return;
        }
        String strF = r().f();
        if (TextUtils.isEmpty(strF)) {
            return;
        }
        jr jrVarA = cn.a(k(), strF);
        b("Found relevant installation campaign", jrVarA);
        a(ahVar, jrVarA);
    }

    public final void a(bk bkVar) {
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
            if (bkVar != null) {
                bkVar.a(null);
            }
            if (this.j != j) {
                this.f4045d.c();
            }
        } catch (Exception e2) {
            e("Local dispatch failed", e2);
            r().e();
            g();
            if (bkVar != null) {
                bkVar.a(e2);
            }
        }
    }

    public final void a(br brVar) {
        Pair<String, Long> pairA;
        com.google.android.gms.common.internal.aa.a(brVar);
        com.google.android.gms.analytics.s.d();
        y();
        if (this.k) {
            c("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            a("Delivering hit", brVar);
        }
        if (TextUtils.isEmpty(brVar.h()) && (pairA = r().g().a()) != null) {
            Long l = (Long) pairA.second;
            String str = (String) pairA.first;
            String strValueOf = String.valueOf(l);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(str).length());
            sb.append(strValueOf);
            sb.append(":");
            sb.append(str);
            String string = sb.toString();
            HashMap map = new HashMap(brVar.b());
            map.put("_m", string);
            brVar = new br(this, map, brVar.d(), brVar.f(), brVar.c(), brVar.a(), brVar.e());
        }
        C();
        if (this.f4046e.a(brVar)) {
            c("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.f4043b.a(brVar);
            g();
        } catch (SQLiteException e2) {
            e("Delivery failed to save hit to a database", e2);
            k().a(brVar, "deliver: failed to insert hit to database");
        }
    }

    public final void a(String str) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.analytics.s.d();
        jr jrVarA = cn.a(k(), str);
        if (jrVarA == null) {
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
        if (r().c().a(be.l())) {
            d("Campaign received too late, ignoring", jrVarA);
            return;
        }
        b("Received installation campaign", jrVarA);
        Iterator<ah> it = this.f4043b.c(0L).iterator();
        while (it.hasNext()) {
            a(it.next(), jrVarA);
        }
    }

    final void b() {
        y();
        com.google.android.gms.common.internal.aa.a(!this.f4042a, "Analytics backend already started");
        this.f4042a = true;
        m().a(new at(this));
    }

    protected final void c() {
        y();
        com.google.android.gms.analytics.s.d();
        Context contextA = h().a();
        if (!cd.a(contextA)) {
            e("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!ce.a(contextA)) {
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
        if (ce.a(j())) {
            b("AnalyticsService registered in the app manifest and enabled");
        } else {
            e("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.k && !this.f4043b.e()) {
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
        if (!be.b()) {
            e("Service client disabled. Can't dispatch local hits to device AnalyticsService");
        }
        if (!this.f4046e.b()) {
            b("Service not connected");
            return;
        }
        if (this.f4043b.e()) {
            return;
        }
        b("Dispatching local hits to device AnalyticsService");
        while (true) {
            try {
                List<br> listA = this.f4043b.a(be.f());
                if (listA.isEmpty()) {
                    g();
                    return;
                }
                while (!listA.isEmpty()) {
                    br brVar = listA.get(0);
                    if (!this.f4046e.a(brVar)) {
                        g();
                        return;
                    }
                    listA.remove(brVar);
                    try {
                        this.f4043b.b(brVar.c());
                    } catch (SQLiteException e2) {
                        e("Failed to remove hit that was send for delivery", e2);
                        G();
                        return;
                    }
                }
            } catch (SQLiteException e3) {
                e("Failed to read hits from store", e3);
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
                this.f4045d.c();
            }
        } catch (Exception e2) {
            e("Sync local dispatch failed", e2);
            g();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void g() {
        /*
            r8 = this;
            com.google.android.gms.analytics.s.d()
            r8.y()
            boolean r0 = r8.k
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L17
            long r4 = r8.H()
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L17
            r0 = 1
            goto L18
        L17:
            r0 = 0
        L18:
            if (r0 != 0) goto L23
            com.google.android.gms.internal.measurement.bx r0 = r8.f4045d
            r0.b()
            r8.G()
            return
        L23:
            com.google.android.gms.internal.measurement.an r0 = r8.f4043b
            boolean r0 = r0.e()
            if (r0 == 0) goto L34
            com.google.android.gms.internal.measurement.bx r0 = r8.f4045d
            r0.b()
            r8.G()
            return
        L34:
            com.google.android.gms.internal.measurement.bn<java.lang.Boolean> r0 = com.google.android.gms.internal.measurement.bm.z
            java.lang.Object r0 = r0.a()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L4d
            com.google.android.gms.internal.measurement.bx r0 = r8.f4045d
            r0.a()
            com.google.android.gms.internal.measurement.bx r0 = r8.f4045d
            boolean r1 = r0.d()
        L4d:
            if (r1 == 0) goto La8
            r8.F()
            long r0 = r8.H()
            com.google.android.gms.internal.measurement.ca r4 = r8.r()
            long r4 = r4.d()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L76
            com.google.android.gms.common.util.d r6 = r8.i()
            long r6 = r6.a()
            long r6 = r6 - r4
            long r4 = java.lang.Math.abs(r6)
            long r4 = r0 - r4
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 <= 0) goto L76
            goto L7e
        L76:
            long r2 = com.google.android.gms.internal.measurement.be.d()
            long r4 = java.lang.Math.min(r2, r0)
        L7e:
            java.lang.Long r0 = java.lang.Long.valueOf(r4)
            java.lang.String r1 = "Dispatch scheduled (ms)"
            r8.a(r1, r0)
            com.google.android.gms.internal.measurement.bg r0 = r8.g
            boolean r0 = r0.c()
            if (r0 == 0) goto La2
            r0 = 1
            com.google.android.gms.internal.measurement.bg r2 = r8.g
            long r2 = r2.b()
            long r4 = r4 + r2
            long r0 = java.lang.Math.max(r0, r4)
            com.google.android.gms.internal.measurement.bg r2 = r8.g
            r2.b(r0)
            return
        La2:
            com.google.android.gms.internal.measurement.bg r0 = r8.g
            r0.a(r4)
            return
        La8:
            r8.G()
            r8.F()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aq.g():void");
    }
}
