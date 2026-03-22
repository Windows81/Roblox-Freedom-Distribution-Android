package android.arch.lifecycle;

import android.arch.lifecycle.a;
import android.arch.lifecycle.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ReflectiveGenericLifecycleObserver implements GenericLifecycleObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a.C0004a f127b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f126a = obj;
        this.f127b = a.f129a.b(this.f126a.getClass());
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void a(g gVar, d.a aVar) {
        this.f127b.a(gVar, aVar, this.f126a);
    }
}
