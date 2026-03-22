package androidx.lifecycle;

import androidx.lifecycle.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Object f2096b = new Object();
    private boolean h;
    private boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f2097a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.a.a.b.b<q<? super T>, LiveData<T>.b> f2100e = new androidx.a.a.b.b<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2098c = 0;
    private volatile Object f = f2096b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    volatile Object f2099d = f2096b;
    private int g = -1;
    private final Runnable j = new Runnable() { // from class: androidx.lifecycle.LiveData.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f2097a) {
                obj = LiveData.this.f2099d;
                LiveData.this.f2099d = LiveData.f2096b;
            }
            LiveData.this.b(obj);
        }
    };

    protected void d() {
    }

    protected void o_() {
    }

    private void b(LiveData<T>.b bVar) {
        if (bVar.f2106d) {
            if (!bVar.a()) {
                bVar.a(false);
                return;
            }
            int i = bVar.f2107e;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            bVar.f2107e = i2;
            bVar.f2105c.a((Object) this.f);
        }
    }

    void a(LiveData<T>.b bVar) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (bVar != null) {
                b((b) bVar);
                bVar = null;
            } else {
                androidx.a.a.b.b<q<? super T>, LiveData<T>.b>.d dVarC = this.f2100e.c();
                while (dVarC.hasNext()) {
                    b((b) dVarC.next().getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public void a(j jVar, q<? super T> qVar) {
        a("observe");
        if (jVar.g().a() == g.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(jVar, qVar);
        LiveData<T>.b bVarA = this.f2100e.a(qVar, lifecycleBoundObserver);
        if (bVarA != null && !bVarA.a(jVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarA != null) {
            return;
        }
        jVar.g().a(lifecycleBoundObserver);
    }

    public void a(q<? super T> qVar) {
        a("observeForever");
        a aVar = new a(qVar);
        LiveData<T>.b bVarA = this.f2100e.a(qVar, aVar);
        if (bVarA != null && (bVarA instanceof LifecycleBoundObserver)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarA != null) {
            return;
        }
        aVar.a(true);
    }

    public void b(q<? super T> qVar) {
        a("removeObserver");
        LiveData<T>.b bVarB = this.f2100e.b(qVar);
        if (bVarB == null) {
            return;
        }
        bVarB.b();
        bVarB.a(false);
    }

    protected void a(T t) {
        boolean z;
        synchronized (this.f2097a) {
            z = this.f2099d == f2096b;
            this.f2099d = t;
        }
        if (z) {
            androidx.a.a.a.a.a().b(this.j);
        }
    }

    protected void b(T t) {
        a("setValue");
        this.g++;
        this.f = t;
        a((b) null);
    }

    public T m_() {
        T t = (T) this.f;
        if (t != f2096b) {
            return t;
        }
        return null;
    }

    int n_() {
        return this.g;
    }

    public boolean e() {
        return this.f2098c > 0;
    }

    class LifecycleBoundObserver extends LiveData<T>.b implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final j f2102a;

        LifecycleBoundObserver(j jVar, q<? super T> qVar) {
            super(qVar);
            this.f2102a = jVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean a() {
            return this.f2102a.g().a().a(g.b.STARTED);
        }

        @Override // androidx.lifecycle.f
        public void a(j jVar, g.a aVar) {
            if (this.f2102a.g().a() == g.b.DESTROYED) {
                LiveData.this.b((q) this.f2105c);
            } else {
                a(a());
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean a(j jVar) {
            return this.f2102a == jVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        void b() {
            this.f2102a.g().b(this);
        }
    }

    private abstract class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final q<? super T> f2105c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2106d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2107e = -1;

        abstract boolean a();

        boolean a(j jVar) {
            return false;
        }

        void b() {
        }

        b(q<? super T> qVar) {
            this.f2105c = qVar;
        }

        void a(boolean z) {
            if (z == this.f2106d) {
                return;
            }
            this.f2106d = z;
            boolean z2 = LiveData.this.f2098c == 0;
            LiveData.this.f2098c += this.f2106d ? 1 : -1;
            if (z2 && this.f2106d) {
                LiveData.this.o_();
            }
            if (LiveData.this.f2098c == 0 && !this.f2106d) {
                LiveData.this.d();
            }
            if (this.f2106d) {
                LiveData.this.a(this);
            }
        }
    }

    private class a extends LiveData<T>.b {
        @Override // androidx.lifecycle.LiveData.b
        boolean a() {
            return true;
        }

        a(q<? super T> qVar) {
            super(qVar);
        }
    }

    private static void a(String str) {
        if (androidx.a.a.a.a.a().c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}
