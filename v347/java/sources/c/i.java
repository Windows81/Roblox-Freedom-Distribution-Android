package c;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t f2140a;

    public i(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f2140a = tVar;
    }

    public final t a() {
        return this.f2140a;
    }

    public final i a(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f2140a = tVar;
        return this;
    }

    @Override // c.t
    public t a(long j, TimeUnit timeUnit) {
        return this.f2140a.a(j, timeUnit);
    }

    @Override // c.t
    public long y_() {
        return this.f2140a.y_();
    }

    @Override // c.t
    public boolean z_() {
        return this.f2140a.z_();
    }

    @Override // c.t
    public long d() {
        return this.f2140a.d();
    }

    @Override // c.t
    public t a(long j) {
        return this.f2140a.a(j);
    }

    @Override // c.t
    public t A_() {
        return this.f2140a.A_();
    }

    @Override // c.t
    public t f() {
        return this.f2140a.f();
    }

    @Override // c.t
    public void g() throws IOException {
        this.f2140a.g();
    }
}
