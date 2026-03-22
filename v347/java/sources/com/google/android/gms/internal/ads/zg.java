package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class zg extends WeakReference<Throwable> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5731a;

    public zg(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, null);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.f5731a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zg zgVar = (zg) obj;
        return this.f5731a == zgVar.f5731a && get() == zgVar.get();
    }

    public final int hashCode() {
        return this.f5731a;
    }
}
