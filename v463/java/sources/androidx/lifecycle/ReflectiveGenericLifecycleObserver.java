package androidx.lifecycle;

import androidx.lifecycle.b;
import androidx.lifecycle.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class ReflectiveGenericLifecycleObserver implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.a f2109b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2108a = obj;
        this.f2109b = b.f2111a.b(this.f2108a.getClass());
    }

    @Override // androidx.lifecycle.f
    public void a(j jVar, g.a aVar) {
        this.f2109b.a(jVar, aVar, this.f2108a);
    }
}
