package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"StaticFieldLeak"})
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile r f6009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f6010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f6011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.util.d f6012d;
    private final ar e;
    private final bj f;
    private final com.google.android.gms.analytics.s g;
    private final i h;
    private final aw i;
    private final cb j;
    private final bn k;
    private final com.google.android.gms.analytics.d l;
    private final aj m;
    private final h n;
    private final ac o;
    private final av p;

    private r(t tVar) {
        Context contextA = tVar.a();
        com.google.android.gms.common.internal.w.a(contextA, "Application context can't be null");
        Context contextB = tVar.b();
        com.google.android.gms.common.internal.w.a(contextB);
        this.f6010b = contextA;
        this.f6011c = contextB;
        this.f6012d = com.google.android.gms.common.util.g.d();
        this.e = new ar(this);
        bj bjVar = new bj(this);
        bjVar.z();
        this.f = bjVar;
        bj bjVarE = e();
        String str = q.f6007a;
        bjVarE.d(new StringBuilder(String.valueOf(str).length() + 134).append("Google Analytics ").append(str).append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4").toString());
        bn bnVar = new bn(this);
        bnVar.z();
        this.k = bnVar;
        cb cbVar = new cb(this);
        cbVar.z();
        this.j = cbVar;
        i iVar = new i(this, tVar);
        aj ajVar = new aj(this);
        h hVar = new h(this);
        ac acVar = new ac(this);
        av avVar = new av(this);
        com.google.android.gms.analytics.s sVarA = com.google.android.gms.analytics.s.a(contextA);
        sVarA.a(new s(this));
        this.g = sVarA;
        com.google.android.gms.analytics.d dVar = new com.google.android.gms.analytics.d(this);
        ajVar.z();
        this.m = ajVar;
        hVar.z();
        this.n = hVar;
        acVar.z();
        this.o = acVar;
        avVar.z();
        this.p = avVar;
        aw awVar = new aw(this);
        awVar.z();
        this.i = awVar;
        iVar.z();
        this.h = iVar;
        dVar.a();
        this.l = dVar;
        iVar.b();
    }

    public static r a(Context context) {
        com.google.android.gms.common.internal.w.a(context);
        if (f6009a == null) {
            synchronized (r.class) {
                if (f6009a == null) {
                    com.google.android.gms.common.util.d dVarD = com.google.android.gms.common.util.g.d();
                    long jB = dVarD.b();
                    r rVar = new r(new t(context));
                    f6009a = rVar;
                    com.google.android.gms.analytics.d.c();
                    long jB2 = dVarD.b() - jB;
                    long jLongValue = az.E.a().longValue();
                    if (jB2 > jLongValue) {
                        rVar.e().c("Slow initialization (ms)", Long.valueOf(jB2), Long.valueOf(jLongValue));
                    }
                }
            }
        }
        return f6009a;
    }

    private static void a(p pVar) {
        com.google.android.gms.common.internal.w.a(pVar, "Analytics service not created/initialized");
        com.google.android.gms.common.internal.w.b(pVar.x(), "Analytics service not initialized");
    }

    public final Context a() {
        return this.f6010b;
    }

    public final Context b() {
        return this.f6011c;
    }

    public final com.google.android.gms.common.util.d c() {
        return this.f6012d;
    }

    public final ar d() {
        return this.e;
    }

    public final bj e() {
        a(this.f);
        return this.f;
    }

    public final bj f() {
        return this.f;
    }

    public final com.google.android.gms.analytics.s g() {
        com.google.android.gms.common.internal.w.a(this.g);
        return this.g;
    }

    public final i h() {
        a(this.h);
        return this.h;
    }

    public final aw i() {
        a(this.i);
        return this.i;
    }

    public final com.google.android.gms.analytics.d j() {
        com.google.android.gms.common.internal.w.a(this.l);
        com.google.android.gms.common.internal.w.b(this.l.b(), "Analytics instance not initialized");
        return this.l;
    }

    public final cb k() {
        a(this.j);
        return this.j;
    }

    public final bn l() {
        a(this.k);
        return this.k;
    }

    public final bn m() {
        if (this.k == null || !this.k.x()) {
            return null;
        }
        return this.k;
    }

    public final h n() {
        a(this.n);
        return this.n;
    }

    public final aj o() {
        a(this.m);
        return this.m;
    }

    public final ac p() {
        a(this.o);
        return this.o;
    }

    public final av q() {
        return this.p;
    }
}
