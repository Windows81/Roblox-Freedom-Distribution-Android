package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cx implements com.google.android.gms.f.c<Map<cg<?>, String>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ cv f3632a;

    private cx(cv cvVar) {
        this.f3632a = cvVar;
    }

    @Override // com.google.android.gms.f.c
    public final void a(com.google.android.gms.f.g<Map<cg<?>, String>> gVar) {
        cv cvVar;
        ConnectionResult connectionResult;
        Map map;
        this.f3632a.f.lock();
        try {
            if (this.f3632a.n) {
                if (gVar.b()) {
                    this.f3632a.o = new androidx.c.a(this.f3632a.f3627a.size());
                    Iterator it = this.f3632a.f3627a.values().iterator();
                    while (it.hasNext()) {
                        this.f3632a.o.put(((cu) it.next()).c(), ConnectionResult.f3415a);
                    }
                } else {
                    if (gVar.e() instanceof com.google.android.gms.common.api.c) {
                        com.google.android.gms.common.api.c cVar = (com.google.android.gms.common.api.c) gVar.e();
                        if (this.f3632a.l) {
                            this.f3632a.o = new androidx.c.a(this.f3632a.f3627a.size());
                            for (cu cuVar : this.f3632a.f3627a.values()) {
                                Object objC = cuVar.c();
                                ConnectionResult connectionResultA = cVar.a(cuVar);
                                if (this.f3632a.a((cu<?>) cuVar, connectionResultA)) {
                                    map = this.f3632a.o;
                                    connectionResultA = new ConnectionResult(16);
                                } else {
                                    map = this.f3632a.o;
                                }
                                map.put(objC, connectionResultA);
                            }
                        } else {
                            this.f3632a.o = cVar.a();
                        }
                        cvVar = this.f3632a;
                        connectionResult = this.f3632a.k();
                    } else {
                        Log.e("ConnectionlessGAC", "Unexpected availability exception", gVar.e());
                        this.f3632a.o = Collections.emptyMap();
                        cvVar = this.f3632a;
                        connectionResult = new ConnectionResult(8);
                    }
                    cvVar.r = connectionResult;
                }
                if (this.f3632a.p != null) {
                    this.f3632a.o.putAll(this.f3632a.p);
                    this.f3632a.r = this.f3632a.k();
                }
                if (this.f3632a.r == null) {
                    this.f3632a.g();
                    this.f3632a.j();
                } else {
                    cv.a(this.f3632a, false);
                    this.f3632a.f3631e.a(this.f3632a.r);
                }
                this.f3632a.i.signalAll();
            }
        } finally {
            this.f3632a.f.unlock();
        }
    }
}
