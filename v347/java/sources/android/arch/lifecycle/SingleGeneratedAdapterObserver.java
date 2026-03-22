package android.arch.lifecycle;

import android.arch.lifecycle.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SingleGeneratedAdapterObserver implements GenericLifecycleObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f128a;

    SingleGeneratedAdapterObserver(c cVar) {
        this.f128a = cVar;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void a(g gVar, d.a aVar) {
        this.f128a.a(gVar, aVar, false, null);
        this.f128a.a(gVar, aVar, true, null);
    }
}
