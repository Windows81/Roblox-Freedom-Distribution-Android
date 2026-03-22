package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cy implements com.google.android.gms.f.c<Map<cg<?>, String>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private l f3633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ cv f3634b;

    cy(cv cvVar, l lVar) {
        this.f3634b = cvVar;
        this.f3633a = lVar;
    }

    final void a() {
        this.f3633a.h();
    }

    @Override // com.google.android.gms.f.c
    public final void a(com.google.android.gms.f.g<Map<cg<?>, String>> gVar) {
        Map map;
        l lVar;
        this.f3634b.f.lock();
        try {
            if (this.f3634b.n) {
                if (gVar.b()) {
                    this.f3634b.p = new androidx.c.a(this.f3634b.f3628b.size());
                    Iterator it = this.f3634b.f3628b.values().iterator();
                    while (it.hasNext()) {
                        this.f3634b.p.put(((cu) it.next()).c(), ConnectionResult.f3415a);
                    }
                } else if (gVar.e() instanceof com.google.android.gms.common.api.c) {
                    com.google.android.gms.common.api.c cVar = (com.google.android.gms.common.api.c) gVar.e();
                    if (this.f3634b.l) {
                        this.f3634b.p = new androidx.c.a(this.f3634b.f3628b.size());
                        for (cu cuVar : this.f3634b.f3628b.values()) {
                            Object objC = cuVar.c();
                            ConnectionResult connectionResultA = cVar.a(cuVar);
                            if (this.f3634b.a((cu<?>) cuVar, connectionResultA)) {
                                map = this.f3634b.p;
                                connectionResultA = new ConnectionResult(16);
                            } else {
                                map = this.f3634b.p;
                            }
                            map.put(objC, connectionResultA);
                        }
                    } else {
                        this.f3634b.p = cVar.a();
                    }
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", gVar.e());
                    this.f3634b.p = Collections.emptyMap();
                }
                if (this.f3634b.f()) {
                    this.f3634b.o.putAll(this.f3634b.p);
                    if (this.f3634b.k() == null) {
                        this.f3634b.g();
                        this.f3634b.j();
                        this.f3634b.i.signalAll();
                    }
                }
                lVar = this.f3633a;
            } else {
                lVar = this.f3633a;
            }
            lVar.h();
        } finally {
            this.f3634b.f.unlock();
        }
    }
}
