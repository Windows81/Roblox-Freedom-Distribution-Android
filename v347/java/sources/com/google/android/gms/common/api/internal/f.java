package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f<L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile L f3384a;

    public static final class a<L> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final L f3385a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3386b;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3385a == aVar.f3385a && this.f3386b.equals(aVar.f3386b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f3385a) * 31) + this.f3386b.hashCode();
        }
    }

    public final void a() {
        this.f3384a = null;
    }
}
