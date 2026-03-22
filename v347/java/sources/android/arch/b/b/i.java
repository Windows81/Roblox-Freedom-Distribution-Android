package android.arch.b.b;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f112a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile android.arch.b.a.f f114c;

    protected abstract String a();

    public i(e eVar) {
        this.f113b = eVar;
    }

    protected void b() {
        this.f113b.e();
    }

    private android.arch.b.a.f d() {
        return this.f113b.a(a());
    }

    private android.arch.b.a.f a(boolean z) {
        if (z) {
            if (this.f114c == null) {
                this.f114c = d();
            }
            return this.f114c;
        }
        return d();
    }

    public android.arch.b.a.f c() {
        b();
        return a(this.f112a.compareAndSet(false, true));
    }

    public void a(android.arch.b.a.f fVar) {
        if (fVar == this.f114c) {
            this.f112a.set(false);
        }
    }
}
