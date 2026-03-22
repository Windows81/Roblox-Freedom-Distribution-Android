package com.google.android.gms.analytics;

import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class r<T extends r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final o f3286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f3287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<p> f3288c;

    protected r(s sVar, com.google.android.gms.common.util.d dVar) {
        aa.a(sVar);
        this.f3287b = sVar;
        this.f3288c = new ArrayList();
        o oVar = new o(this, dVar);
        oVar.j();
        this.f3286a = oVar;
    }

    protected void a(o oVar) {
    }

    protected final void b(o oVar) {
        Iterator<p> it = this.f3288c.iterator();
        while (it.hasNext()) {
            it.next().a(this, oVar);
        }
    }

    public o h() {
        o oVarA = this.f3286a.a();
        b(oVarA);
        return oVarA;
    }

    protected final s i() {
        return this.f3287b;
    }
}
