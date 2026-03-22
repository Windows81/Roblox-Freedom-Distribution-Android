package com.b.a.a.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f2327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b f2328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2329c = Long.MIN_VALUE;

    protected abstract void a();

    protected b(i iVar) {
        this.f2327a = iVar;
    }

    final void b() {
        this.f2328b = null;
        this.f2329c = Long.MIN_VALUE;
        a();
    }
}
