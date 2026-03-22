package b;

import b.r;
import java.io.Closeable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ab implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f1982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f1983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1985d;
    private final q e;
    private final r f;
    private final ac g;
    private final ab h;
    private final ab i;
    private final ab j;
    private final long k;
    private final long l;
    private volatile d m;

    private ab(a aVar) {
        this.f1982a = aVar.f1986a;
        this.f1983b = aVar.f1987b;
        this.f1984c = aVar.f1988c;
        this.f1985d = aVar.f1989d;
        this.e = aVar.e;
        this.f = aVar.f.a();
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
    }

    public z a() {
        return this.f1982a;
    }

    public int b() {
        return this.f1984c;
    }

    public boolean c() {
        return this.f1984c >= 200 && this.f1984c < 300;
    }

    public String d() {
        return this.f1985d;
    }

    public q e() {
        return this.e;
    }

    public String a(String str) {
        return a(str, null);
    }

    public String a(String str, String str2) {
        String strA = this.f.a(str);
        return strA != null ? strA : str2;
    }

    public r f() {
        return this.f;
    }

    public ac g() {
        return this.g;
    }

    public a h() {
        return new a();
    }

    public d i() {
        d dVar = this.m;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f);
        this.m = dVarA;
        return dVarA;
    }

    public long j() {
        return this.k;
    }

    public long k() {
        return this.l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.g.close();
    }

    public String toString() {
        return "Response{protocol=" + this.f1983b + ", code=" + this.f1984c + ", message=" + this.f1985d + ", url=" + this.f1982a.a() + '}';
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private z f1986a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private x f1987b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1988c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f1989d;
        private q e;
        private r.a f;
        private ac g;
        private ab h;
        private ab i;
        private ab j;
        private long k;
        private long l;

        public a() {
            this.f1988c = -1;
            this.f = new r.a();
        }

        private a(ab abVar) {
            this.f1988c = -1;
            this.f1986a = abVar.f1982a;
            this.f1987b = abVar.f1983b;
            this.f1988c = abVar.f1984c;
            this.f1989d = abVar.f1985d;
            this.e = abVar.e;
            this.f = abVar.f.b();
            this.g = abVar.g;
            this.h = abVar.h;
            this.i = abVar.i;
            this.j = abVar.j;
            this.k = abVar.k;
            this.l = abVar.l;
        }

        public a a(z zVar) {
            this.f1986a = zVar;
            return this;
        }

        public a a(x xVar) {
            this.f1987b = xVar;
            return this;
        }

        public a a(int i) {
            this.f1988c = i;
            return this;
        }

        public a a(String str) {
            this.f1989d = str;
            return this;
        }

        public a a(q qVar) {
            this.e = qVar;
            return this;
        }

        public a a(String str, String str2) {
            this.f.a(str, str2);
            return this;
        }

        public a a(r rVar) {
            this.f = rVar.b();
            return this;
        }

        public a a(ac acVar) {
            this.g = acVar;
            return this;
        }

        public a a(ab abVar) {
            if (abVar != null) {
                a("networkResponse", abVar);
            }
            this.h = abVar;
            return this;
        }

        public a b(ab abVar) {
            if (abVar != null) {
                a("cacheResponse", abVar);
            }
            this.i = abVar;
            return this;
        }

        private void a(String str, ab abVar) {
            if (abVar.g == null) {
                if (abVar.h == null) {
                    if (abVar.i == null) {
                        if (abVar.j != null) {
                            throw new IllegalArgumentException(str + ".priorResponse != null");
                        }
                        return;
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public a c(ab abVar) {
            if (abVar != null) {
                d(abVar);
            }
            this.j = abVar;
            return this;
        }

        private void d(ab abVar) {
            if (abVar.g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(long j) {
            this.k = j;
            return this;
        }

        public a b(long j) {
            this.l = j;
            return this;
        }

        public ab a() {
            if (this.f1986a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f1987b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f1988c < 0) {
                throw new IllegalStateException("code < 0: " + this.f1988c);
            }
            return new ab(this);
        }
    }
}
