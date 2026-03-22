package c;

import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class z implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    aa f2867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f2868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.d.l f2869c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2870d;

    protected z(x xVar, aa aaVar) {
        this.f2868b = xVar;
        this.f2867a = aaVar;
        this.f2869c = new c.a.d.l(xVar);
    }

    @Override // c.e
    public aa a() {
        return this.f2867a;
    }

    @Override // c.e
    public ac b() throws IOException {
        synchronized (this) {
            if (this.f2870d) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2870d = true;
        }
        try {
            this.f2868b.s().a(this);
            ac acVarF = f();
            if (acVarF != null) {
                return acVarF;
            }
            throw new IOException("Canceled");
        } finally {
            this.f2868b.s().b(this);
        }
    }

    @Override // c.e
    public void a(f fVar) {
        synchronized (this) {
            if (this.f2870d) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2870d = true;
        }
        this.f2868b.s().a(new a(fVar));
    }

    @Override // c.e
    public void c() {
        this.f2869c.a();
    }

    final class a extends c.a.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f f2872c;

        private a(f fVar) {
            super("OkHttp %s", z.this.d().toString());
            this.f2872c = fVar;
        }

        String a() {
            return z.this.f2867a.a().f();
        }

        @Override // c.a.b
        protected void b() {
            IOException e2;
            ac acVarF;
            boolean z = true;
            try {
                try {
                    acVarF = z.this.f();
                } catch (IOException e3) {
                    e2 = e3;
                    z = false;
                }
                try {
                    if (z.this.f2869c.b()) {
                        this.f2872c.a(z.this, new IOException("Canceled"));
                    } else {
                        this.f2872c.a(z.this, acVarF);
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    if (z) {
                        c.a.f.e.b().a(4, "Callback failure for " + z.this.e(), e2);
                    } else {
                        this.f2872c.a(z.this, e2);
                    }
                }
            } finally {
                z.this.f2868b.s().b(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e() {
        return (this.f2869c.b() ? "canceled call" : "call") + " to " + d();
    }

    t d() {
        return this.f2867a.a().c("/...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ac f() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f2868b.v());
        arrayList.add(this.f2869c);
        arrayList.add(new c.a.d.a(this.f2868b.f()));
        arrayList.add(new c.a.a.a(this.f2868b.g()));
        arrayList.add(new c.a.b.a(this.f2868b));
        if (!this.f2869c.c()) {
            arrayList.addAll(this.f2868b.w());
        }
        arrayList.add(new c.a.d.b(this.f2869c.c()));
        return new c.a.d.i(arrayList, null, null, null, 0, this.f2867a).a(this.f2867a);
    }
}
