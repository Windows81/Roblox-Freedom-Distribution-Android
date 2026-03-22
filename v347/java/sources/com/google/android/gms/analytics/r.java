package com.google.android.gms.analytics;

import com.google.android.gms.analytics.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class r<T extends r> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final o f3269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s f3270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<p> f3271c;

    protected r(s sVar, com.google.android.gms.common.util.d dVar) {
        com.google.android.gms.common.internal.w.a(sVar);
        this.f3270b = sVar;
        this.f3271c = new ArrayList();
        o oVar = new o(this, dVar);
        oVar.j();
        this.f3269a = oVar;
    }

    protected void a(o oVar) {
    }

    protected final void b(o oVar) {
        Iterator<p> it = this.f3271c.iterator();
        while (it.hasNext()) {
            it.next().a(this, oVar);
        }
    }

    public o h() {
        o oVarA = this.f3269a.a();
        b(oVarA);
        return oVarA;
    }

    protected final s i() {
        return this.f3270b;
    }
}
