package c;

import c.s;
import java.io.Closeable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ac implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aa f2726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f2727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final r f2730e;
    private final s f;
    private final ad g;
    private final ac h;
    private final ac i;
    private final ac j;
    private final long k;
    private final long l;
    private volatile d m;

    private ac(a aVar) {
        this.f2726a = aVar.f2731a;
        this.f2727b = aVar.f2732b;
        this.f2728c = aVar.f2733c;
        this.f2729d = aVar.f2734d;
        this.f2730e = aVar.f2735e;
        this.f = aVar.f.a();
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
    }

    public aa a() {
        return this.f2726a;
    }

    public int b() {
        return this.f2728c;
    }

    public boolean c() {
        int i = this.f2728c;
        return i >= 200 && i < 300;
    }

    public String d() {
        return this.f2729d;
    }

    public r e() {
        return this.f2730e;
    }

    public String a(String str) {
        return a(str, null);
    }

    public String a(String str, String str2) {
        String strA = this.f.a(str);
        return strA != null ? strA : str2;
    }

    public s f() {
        return this.f;
    }

    public ad g() {
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
        return "Response{protocol=" + this.f2727b + ", code=" + this.f2728c + ", message=" + this.f2729d + ", url=" + this.f2726a.a() + '}';
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private aa f2731a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private y f2732b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2733c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2734d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private r f2735e;
        private s.a f;
        private ad g;
        private ac h;
        private ac i;
        private ac j;
        private long k;
        private long l;

        public a() {
            this.f2733c = -1;
            this.f = new s.a();
        }

        private a(ac acVar) {
            this.f2733c = -1;
            this.f2731a = acVar.f2726a;
            this.f2732b = acVar.f2727b;
            this.f2733c = acVar.f2728c;
            this.f2734d = acVar.f2729d;
            this.f2735e = acVar.f2730e;
            this.f = acVar.f.b();
            this.g = acVar.g;
            this.h = acVar.h;
            this.i = acVar.i;
            this.j = acVar.j;
            this.k = acVar.k;
            this.l = acVar.l;
        }

        public a a(aa aaVar) {
            this.f2731a = aaVar;
            return this;
        }

        public a a(y yVar) {
            this.f2732b = yVar;
            return this;
        }

        public a a(int i) {
            this.f2733c = i;
            return this;
        }

        public a a(String str) {
            this.f2734d = str;
            return this;
        }

        public a a(r rVar) {
            this.f2735e = rVar;
            return this;
        }

        public a a(String str, String str2) {
            this.f.a(str, str2);
            return this;
        }

        public a a(s sVar) {
            this.f = sVar.b();
            return this;
        }

        public a a(ad adVar) {
            this.g = adVar;
            return this;
        }

        public a a(ac acVar) {
            if (acVar != null) {
                a("networkResponse", acVar);
            }
            this.h = acVar;
            return this;
        }

        public a b(ac acVar) {
            if (acVar != null) {
                a("cacheResponse", acVar);
            }
            this.i = acVar;
            return this;
        }

        private void a(String str, ac acVar) {
            if (acVar.g == null) {
                if (acVar.h == null) {
                    if (acVar.i == null) {
                        if (acVar.j == null) {
                            return;
                        }
                        throw new IllegalArgumentException(str + ".priorResponse != null");
                    }
                    throw new IllegalArgumentException(str + ".cacheResponse != null");
                }
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            throw new IllegalArgumentException(str + ".body != null");
        }

        public a c(ac acVar) {
            if (acVar != null) {
                d(acVar);
            }
            this.j = acVar;
            return this;
        }

        private void d(ac acVar) {
            if (acVar.g != null) {
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

        public ac a() {
            if (this.f2731a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f2732b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f2733c < 0) {
                throw new IllegalStateException("code < 0: " + this.f2733c);
            }
            return new ac(this);
        }
    }
}
