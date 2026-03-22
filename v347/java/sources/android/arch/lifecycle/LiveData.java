package android.arch.lifecycle;

import android.arch.lifecycle.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f118a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.arch.a.b.b<l<T>, LiveData<T>.a> f119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Object f121d;
    private int e;
    private boolean f;
    private boolean g;

    private void a(LiveData<T>.a aVar) {
        if (aVar.f125d) {
            if (!aVar.a()) {
                aVar.a(false);
            } else if (aVar.e < this.e) {
                aVar.e = this.e;
                aVar.f124c.a((T) this.f121d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(LiveData<T>.a aVar) {
        if (this.f) {
            this.g = true;
            return;
        }
        this.f = true;
        do {
            this.g = false;
            if (aVar != null) {
                a(aVar);
                aVar = null;
            } else {
                android.arch.a.b.b<l<T>, LiveData<T>.a>.d dVarC = this.f119b.c();
                while (dVarC.hasNext()) {
                    a((a) dVarC.next().getValue());
                    if (this.g) {
                        break;
                    }
                }
            }
        } while (this.g);
        this.f = false;
    }

    public void a(l<T> lVar) {
        a("removeObserver");
        LiveData<T>.a aVarB = this.f119b.b(lVar);
        if (aVarB != null) {
            aVarB.b();
            aVarB.a(false);
        }
    }

    protected void a() {
    }

    protected void b() {
    }

    class LifecycleBoundObserver extends LiveData<T>.a implements GenericLifecycleObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g f122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LiveData f123b;

        @Override // android.arch.lifecycle.LiveData.a
        boolean a() {
            return this.f122a.getLifecycle().a().a(d.b.STARTED);
        }

        @Override // android.arch.lifecycle.GenericLifecycleObserver
        public void a(g gVar, d.a aVar) {
            if (this.f122a.getLifecycle().a() == d.b.DESTROYED) {
                this.f123b.a(this.f124c);
            } else {
                a(a());
            }
        }

        @Override // android.arch.lifecycle.LiveData.a
        void b() {
            this.f122a.getLifecycle().b(this);
        }
    }

    private abstract class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final l<T> f124c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f125d;
        int e;
        final /* synthetic */ LiveData f;

        abstract boolean a();

        void b() {
        }

        void a(boolean z) {
            if (z != this.f125d) {
                this.f125d = z;
                boolean z2 = this.f.f120c == 0;
                LiveData liveData = this.f;
                liveData.f120c = (this.f125d ? 1 : -1) + liveData.f120c;
                if (z2 && this.f125d) {
                    this.f.a();
                }
                if (this.f.f120c == 0 && !this.f125d) {
                    this.f.b();
                }
                if (this.f125d) {
                    this.f.b(this);
                }
            }
        }
    }

    private static void a(String str) {
        if (!android.arch.a.a.a.a().b()) {
            throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
        }
    }
}
