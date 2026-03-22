package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public class nu<T> implements nq<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5357a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5358b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BlockingQueue<nv> f5359c = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private T f5360d;

    public final void a() {
        synchronized (this.f5357a) {
            if (this.f5358b != 0) {
                throw new UnsupportedOperationException();
            }
            this.f5358b = -1;
            Iterator it = this.f5359c.iterator();
            while (it.hasNext()) {
                ((nv) it.next()).f5362b.a();
            }
            this.f5359c.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.nq
    public final void a(nt<T> ntVar, nr nrVar) {
        synchronized (this.f5357a) {
            if (this.f5358b == 1) {
                ntVar.a(this.f5360d);
            } else if (this.f5358b == -1) {
                nrVar.a();
            } else if (this.f5358b == 0) {
                this.f5359c.add(new nv(this, ntVar, nrVar));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.nq
    public final void a(T t) {
        synchronized (this.f5357a) {
            if (this.f5358b != 0) {
                throw new UnsupportedOperationException();
            }
            this.f5360d = t;
            this.f5358b = 1;
            Iterator it = this.f5359c.iterator();
            while (it.hasNext()) {
                ((nv) it.next()).f5361a.a(t);
            }
            this.f5359c.clear();
        }
    }

    public final int b() {
        return this.f5358b;
    }
}
