package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.l;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bw<R extends com.google.android.gms.common.api.l> extends com.google.android.gms.common.api.p<R> implements com.google.android.gms.common.api.m<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.common.api.o<? super R, ? extends com.google.android.gms.common.api.l> f3564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bw<? extends com.google.android.gms.common.api.l> f3565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile com.google.android.gms.common.api.n<? super R> f3566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.common.api.g<R> f3567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f3568e;
    private Status f;
    private final WeakReference<com.google.android.gms.common.api.f> g;
    private final by h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Status status) {
        synchronized (this.f3568e) {
            this.f = status;
            b(status);
        }
    }

    private final void b() {
        if (this.f3564a == null && this.f3566c == null) {
            return;
        }
        com.google.android.gms.common.api.f fVar = this.g.get();
        if (!this.i && this.f3564a != null && fVar != null) {
            fVar.a(this);
            this.i = true;
        }
        Status status = this.f;
        if (status != null) {
            b(status);
            return;
        }
        com.google.android.gms.common.api.g<R> gVar = this.f3567d;
        if (gVar != null) {
            gVar.a(this);
        }
    }

    private final void b(Status status) {
        synchronized (this.f3568e) {
            if (this.f3564a != null) {
                Status statusA = this.f3564a.a(status);
                com.google.android.gms.common.internal.aa.a(statusA, "onFailure must not return null");
                this.f3565b.a(statusA);
            } else if (c()) {
                this.f3566c.a(status);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.google.android.gms.common.api.l lVar) {
        if (lVar instanceof com.google.android.gms.common.api.i) {
            try {
                ((com.google.android.gms.common.api.i) lVar).a();
            } catch (RuntimeException e2) {
                String strValueOf = String.valueOf(lVar);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(strValueOf);
                Log.w("TransformedResultImpl", sb.toString(), e2);
            }
        }
    }

    private final boolean c() {
        return (this.f3566c == null || this.g.get() == null) ? false : true;
    }

    final void a() {
        this.f3566c = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.google.android.gms.common.api.g<?> gVar) {
        synchronized (this.f3568e) {
            this.f3567d = gVar;
            b();
        }
    }

    @Override // com.google.android.gms.common.api.m
    public final void a(R r) {
        synchronized (this.f3568e) {
            if (!r.b().d()) {
                a(r.b());
                b(r);
            } else if (this.f3564a != null) {
                bn.a().submit(new bx(this, r));
            } else if (c()) {
                this.f3566c.b(r);
            }
        }
    }
}
