package android.arch.lifecycle;

import android.arch.lifecycle.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class FullLifecycleObserverAdapter implements GenericLifecycleObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FullLifecycleObserver f116a;

    FullLifecycleObserverAdapter(FullLifecycleObserver fullLifecycleObserver) {
        this.f116a = fullLifecycleObserver;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void a(g gVar, d.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.f116a.a(gVar);
                return;
            case ON_START:
                this.f116a.b(gVar);
                return;
            case ON_RESUME:
                this.f116a.c(gVar);
                return;
            case ON_PAUSE:
                this.f116a.d(gVar);
                return;
            case ON_STOP:
                this.f116a.e(gVar);
                return;
            case ON_DESTROY:
                this.f116a.f(gVar);
                return;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}
