package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class im implements dd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    jg f4555a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<Long> f4556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<jd> f4557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ii f4559e;

    private im(ii iiVar) {
        this.f4559e = iiVar;
    }

    /* synthetic */ im(ii iiVar, ij ijVar) {
        this(iiVar);
    }

    private static long a(jd jdVar) {
        return ((jdVar.f4607e.longValue() / 1000) / 60) / 60;
    }

    @Override // com.google.android.gms.internal.measurement.dd
    public final void a(jg jgVar) {
        com.google.android.gms.common.internal.aa.a(jgVar);
        this.f4555a = jgVar;
    }

    @Override // com.google.android.gms.internal.measurement.dd
    public final boolean a(long j, jd jdVar) {
        com.google.android.gms.common.internal.aa.a(jdVar);
        if (this.f4557c == null) {
            this.f4557c = new ArrayList();
        }
        if (this.f4556b == null) {
            this.f4556b = new ArrayList();
        }
        if (this.f4557c.size() > 0 && a(this.f4557c.get(0)) != a(jdVar)) {
            return false;
        }
        long jD = this.f4558d + ((long) jdVar.d());
        if (jD >= Math.max(0, dn.j.b().intValue())) {
            return false;
        }
        this.f4558d = jD;
        this.f4557c.add(jdVar);
        this.f4556b.add(Long.valueOf(j));
        return this.f4557c.size() < Math.max(1, dn.k.b().intValue());
    }
}
