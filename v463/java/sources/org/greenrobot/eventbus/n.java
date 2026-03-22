package org.greenrobot.eventbus;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f8005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final l f8006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f8007c = true;

    n(Object obj, l lVar) {
        this.f8005a = obj;
        this.f8006b = lVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f8005a == nVar.f8005a && this.f8006b.equals(nVar.f8006b);
    }

    public int hashCode() {
        return this.f8005a.hashCode() + this.f8006b.f.hashCode();
    }
}
