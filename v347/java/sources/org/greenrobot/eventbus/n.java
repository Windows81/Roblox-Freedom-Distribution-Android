package org.greenrobot.eventbus;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f8284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final l f8285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f8286c = true;

    n(Object obj, l lVar) {
        this.f8284a = obj;
        this.f8285b = lVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f8284a == nVar.f8284a && this.f8285b.equals(nVar.f8285b);
    }

    public int hashCode() {
        return this.f8284a.hashCode() + this.f8285b.f.hashCode();
    }
}
