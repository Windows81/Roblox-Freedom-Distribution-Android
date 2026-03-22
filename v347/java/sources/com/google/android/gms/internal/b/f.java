package com.google.android.gms.internal.b;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class f extends WeakReference<Throwable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5837a;

    public f(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.f5837a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        f fVar = (f) obj;
        return this.f5837a == fVar.f5837a && get() == fVar.get();
    }

    public final int hashCode() {
        return this.f5837a;
    }
}
