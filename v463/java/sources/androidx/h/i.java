package androidx.h;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f1863a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f1864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile androidx.i.a.f f1865c;

    protected abstract String a();

    public i(e eVar) {
        this.f1864b = eVar;
    }

    protected void b() {
        this.f1864b.e();
    }

    private androidx.i.a.f d() {
        return this.f1864b.a(a());
    }

    private androidx.i.a.f a(boolean z) {
        if (z) {
            if (this.f1865c == null) {
                this.f1865c = d();
            }
            return this.f1865c;
        }
        return d();
    }

    public androidx.i.a.f c() {
        b();
        return a(this.f1863a.compareAndSet(false, true));
    }

    public void a(androidx.i.a.f fVar) {
        if (fVar == this.f1865c) {
            this.f1863a.set(false);
        }
    }
}
