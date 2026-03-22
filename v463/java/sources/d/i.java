package d;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t f7774a;

    public i(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7774a = tVar;
    }

    public final t a() {
        return this.f7774a;
    }

    public final i a(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f7774a = tVar;
        return this;
    }

    @Override // d.t
    public t a(long j, TimeUnit timeUnit) {
        return this.f7774a.a(j, timeUnit);
    }

    @Override // d.t
    public long s_() {
        return this.f7774a.s_();
    }

    @Override // d.t
    public boolean t_() {
        return this.f7774a.t_();
    }

    @Override // d.t
    public long d() {
        return this.f7774a.d();
    }

    @Override // d.t
    public t a(long j) {
        return this.f7774a.a(j);
    }

    @Override // d.t
    public t u_() {
        return this.f7774a.u_();
    }

    @Override // d.t
    public t f() {
        return this.f7774a.f();
    }

    @Override // d.t
    public void g() throws IOException {
        this.f7774a.g();
    }
}
