package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3720b;

    aar(Object obj, int i) {
        this.f3719a = obj;
        this.f3720b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof aar)) {
            return false;
        }
        aar aarVar = (aar) obj;
        return this.f3719a == aarVar.f3719a && this.f3720b == aarVar.f3720b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f3719a) * 65535) + this.f3720b;
    }
}
