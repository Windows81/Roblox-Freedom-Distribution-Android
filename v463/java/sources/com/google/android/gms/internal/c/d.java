package com.google.android.gms.internal.c;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class d extends WeakReference<Throwable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3995a;

    public d(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.f3995a = System.identityHashCode(th);
    }

    public final int hashCode() {
        return this.f3995a;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            if (this == obj) {
                return true;
            }
            d dVar = (d) obj;
            if (this.f3995a == dVar.f3995a && get() == dVar.get()) {
                return true;
            }
        }
        return false;
    }
}
