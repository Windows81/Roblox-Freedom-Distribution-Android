package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i<L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile L f3660a;

    public static final class a<L> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final L f3661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3662b;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3661a == aVar.f3661a && this.f3662b.equals(aVar.f3662b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f3661a) * 31) + this.f3662b.hashCode();
        }
    }

    public final void a() {
        this.f3660a = null;
    }
}
