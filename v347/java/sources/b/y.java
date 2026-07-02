package b;

import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class y implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    z f2104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w f2105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b.a.d.l f2106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2107d;

    protected y(w wVar, z zVar) {
        this.f2105b = wVar;
        this.f2104a = zVar;
        this.f2106c = new b.a.d.l(wVar);
    }

    @Override // b.e
    public ab a() throws IOException {
        synchronized (this) {
            if (this.f2107d) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2107d = true;
        }
        try {
            this.f2105b.s().a(this);
            ab abVarE = e();
            if (abVarE == null) {
                throw new IOException("Canceled");
            }
            return abVarE;
        } finally {
            this.f2105b.s().b(this);
        }
    }

    @Override // b.e
    public void a(f fVar) {
        synchronized (this) {
            if (this.f2107d) {
                throw new IllegalStateException("Already Executed");
            }
            this.f2107d = true;
        }
        this.f2105b.s().a(new a(fVar));
    }

    @Override // b.e
    public void b() {
        this.f2106c.a();
    }

    final class a extends b.a.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f f2109c;

        private a(f fVar) {
            super("OkHttp %s", y.this.c().toString());
            this.f2109c = fVar;
        }

        String a() {
            return y.this.f2104a.a().f();
        }

        @Override // b.a.b
        protected void b() {
            boolean z = true;
            try {
                try {
                    ab abVarE = y.this.e();
                    try {
                        if (y.this.f2106c.b()) {
                            this.f2109c.a(y.this, new IOException("Canceled"));
                        } else {
                            this.f2109c.a(y.this, abVarE);
                        }
                    } catch (IOException e) {
                        e = e;
                        if (z) {
                            b.a.f.e.b().a(4, "Callback failure for " + y.this.d(), e);
                        } else {
                            this.f2109c.a(y.this, e);
                        }
                    }
                } finally {
                    y.this.f2105b.s().b(this);
                }
            } catch (IOException e2) {
                e = e2;
                z = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        return (this.f2106c.b() ? "canceled call" : "call") + " to " + c();
    }

    s c() {
        return this.f2104a.a().c("/...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ab e() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f2105b.v());
        arrayList.add(this.f2106c);
        arrayList.add(new b.a.d.a(this.f2105b.f()));
        arrayList.add(new b.a.a.a(this.f2105b.g()));
        arrayList.add(new b.a.b.a(this.f2105b));
        if (!this.f2106c.c()) {
            arrayList.addAll(this.f2105b.w());
        }
        arrayList.add(new b.a.d.b(this.f2106c.c()));
        return new b.a.d.i(arrayList, null, null, null, 0, this.f2104a).a(this.f2104a);
    }
}
