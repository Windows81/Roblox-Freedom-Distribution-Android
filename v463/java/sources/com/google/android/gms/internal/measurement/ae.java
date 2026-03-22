package com.google.android.gms.internal.measurement;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile ae f4010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f4012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f4013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final be f4014e;
    private final bw f;
    private final com.google.android.gms.analytics.s g;
    private final v h;
    private final bj i;
    private final co j;
    private final ca k;
    private final com.google.android.gms.analytics.d l;
    private final aw m;
    private final u n;
    private final ap o;
    private final bi p;

    private ae(ag agVar) {
        Context contextA = agVar.a();
        com.google.android.gms.common.internal.aa.a(contextA, "Application context can't be null");
        Context contextB = agVar.b();
        com.google.android.gms.common.internal.aa.a(contextB);
        this.f4011b = contextA;
        this.f4012c = contextB;
        this.f4013d = com.google.android.gms.common.util.f.d();
        this.f4014e = new be(this);
        bw bwVar = new bw(this);
        bwVar.z();
        this.f = bwVar;
        bw bwVarE = e();
        String str = ad.f4008a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 134);
        sb.append("Google Analytics ");
        sb.append(str);
        sb.append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
        bwVarE.d(sb.toString());
        ca caVar = new ca(this);
        caVar.z();
        this.k = caVar;
        co coVar = new co(this);
        coVar.z();
        this.j = coVar;
        v vVar = new v(this, agVar);
        aw awVar = new aw(this);
        u uVar = new u(this);
        ap apVar = new ap(this);
        bi biVar = new bi(this);
        com.google.android.gms.analytics.s sVarA = com.google.android.gms.analytics.s.a(contextA);
        sVarA.a(new af(this));
        this.g = sVarA;
        com.google.android.gms.analytics.d dVar = new com.google.android.gms.analytics.d(this);
        awVar.z();
        this.m = awVar;
        uVar.z();
        this.n = uVar;
        apVar.z();
        this.o = apVar;
        biVar.z();
        this.p = biVar;
        bj bjVar = new bj(this);
        bjVar.z();
        this.i = bjVar;
        vVar.z();
        this.h = vVar;
        dVar.a();
        this.l = dVar;
        vVar.b();
    }

    public static ae a(Context context) {
        com.google.android.gms.common.internal.aa.a(context);
        if (f4010a == null) {
            synchronized (ae.class) {
                if (f4010a == null) {
                    com.google.android.gms.common.util.d dVarD = com.google.android.gms.common.util.f.d();
                    long jB = dVarD.b();
                    ae aeVar = new ae(new ag(context));
                    f4010a = aeVar;
                    com.google.android.gms.analytics.d.c();
                    long jB2 = dVarD.b() - jB;
                    long jLongValue = bm.E.a().longValue();
                    if (jB2 > jLongValue) {
                        aeVar.e().c("Slow initialization (ms)", Long.valueOf(jB2), Long.valueOf(jLongValue));
                    }
                }
            }
        }
        return f4010a;
    }

    private static void a(ac acVar) {
        com.google.android.gms.common.internal.aa.a(acVar, "Analytics service not created/initialized");
        com.google.android.gms.common.internal.aa.b(acVar.x(), "Analytics service not initialized");
    }

    public final Context a() {
        return this.f4011b;
    }

    public final Context b() {
        return this.f4012c;
    }

    public final com.google.android.gms.common.util.d c() {
        return this.f4013d;
    }

    public final be d() {
        return this.f4014e;
    }

    public final bw e() {
        a(this.f);
        return this.f;
    }

    public final bw f() {
        return this.f;
    }

    public final com.google.android.gms.analytics.s g() {
        com.google.android.gms.common.internal.aa.a(this.g);
        return this.g;
    }

    public final v h() {
        a(this.h);
        return this.h;
    }

    public final bj i() {
        a(this.i);
        return this.i;
    }

    public final com.google.android.gms.analytics.d j() {
        com.google.android.gms.common.internal.aa.a(this.l);
        com.google.android.gms.common.internal.aa.b(this.l.b(), "Analytics instance not initialized");
        return this.l;
    }

    public final co k() {
        a(this.j);
        return this.j;
    }

    public final ca l() {
        a(this.k);
        return this.k;
    }

    public final ca m() {
        ca caVar = this.k;
        if (caVar == null || !caVar.x()) {
            return null;
        }
        return this.k;
    }

    public final u n() {
        a(this.n);
        return this.n;
    }

    public final aw o() {
        a(this.m);
        return this.m;
    }

    public final ap p() {
        a(this.o);
        return this.o;
    }

    public final bi q() {
        return this.p;
    }
}
