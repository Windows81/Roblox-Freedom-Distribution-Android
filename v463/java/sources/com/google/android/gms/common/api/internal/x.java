package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class x implements au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final av f3677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3678b = false;

    public x(av avVar) {
        this.f3677a = avVar;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        return (T) b(t);
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a() {
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(int i) {
        this.f3677a.a((ConnectionResult) null);
        this.f3677a.f3515e.a(i, this.f3678b);
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        try {
            this.f3677a.f3514d.f3498e.a(t);
            am amVar = this.f3677a.f3514d;
            a.f fVar = amVar.f3495b.get(t.d());
            com.google.android.gms.common.internal.aa.a(fVar, "Appropriate Api was not requested.");
            if (fVar.h() || !this.f3677a.f3512b.containsKey(t.d())) {
                boolean z = fVar instanceof com.google.android.gms.common.internal.ad;
                A aE = fVar;
                if (z) {
                    aE = ((com.google.android.gms.common.internal.ad) fVar).e();
                }
                t.b(aE);
            } else {
                t.b(new Status(17));
            }
        } catch (DeadObjectException unused) {
            this.f3677a.a(new y(this, this));
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final boolean b() {
        if (this.f3678b) {
            return false;
        }
        if (!this.f3677a.f3514d.m()) {
            this.f3677a.a((ConnectionResult) null);
            return true;
        }
        this.f3678b = true;
        Iterator<bw> it = this.f3677a.f3514d.f3497d.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void c() {
        if (this.f3678b) {
            this.f3678b = false;
            this.f3677a.a(new z(this, this));
        }
    }

    final void d() {
        if (this.f3678b) {
            this.f3678b = false;
            this.f3677a.f3514d.f3498e.a();
            b();
        }
    }
}
