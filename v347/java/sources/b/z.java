package b;

import b.r;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f2110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r f2112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final aa f2113d;
    private final Object e;
    private volatile d f;

    private z(a aVar) {
        this.f2110a = aVar.f2114a;
        this.f2111b = aVar.f2115b;
        this.f2112c = aVar.f2116c.a();
        this.f2113d = aVar.f2117d;
        this.e = aVar.e != null ? aVar.e : this;
    }

    public s a() {
        return this.f2110a;
    }

    public String b() {
        return this.f2111b;
    }

    public r c() {
        return this.f2112c;
    }

    public String a(String str) {
        return this.f2112c.a(str);
    }

    public aa d() {
        return this.f2113d;
    }

    public a e() {
        return new a();
    }

    public d f() {
        d dVar = this.f;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f2112c);
        this.f = dVarA;
        return dVarA;
    }

    public boolean g() {
        return this.f2110a.c();
    }

    public String toString() {
        return "Request{method=" + this.f2111b + ", url=" + this.f2110a + ", tag=" + (this.e != this ? this.e : null) + '}';
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private s f2114a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2115b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private r.a f2116c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private aa f2117d;
        private Object e;

        public a() {
            this.f2115b = Constants.HTTP_GET;
            this.f2116c = new r.a();
        }

        private a(z zVar) {
            this.f2114a = zVar.f2110a;
            this.f2115b = zVar.f2111b;
            this.f2117d = zVar.f2113d;
            this.e = zVar.e;
            this.f2116c = zVar.f2112c.b();
        }

        public a a(s sVar) {
            if (sVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f2114a = sVar;
            return this;
        }

        public a a(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            s sVarE = s.e(str);
            if (sVarE == null) {
                throw new IllegalArgumentException("unexpected url: " + str);
            }
            return a(sVarE);
        }

        public a a(String str, String str2) {
            this.f2116c.c(str, str2);
            return this;
        }

        public a b(String str, String str2) {
            this.f2116c.a(str, str2);
            return this;
        }

        public a b(String str) {
            this.f2116c.b(str);
            return this;
        }

        public a a(r rVar) {
            this.f2116c = rVar.b();
            return this;
        }

        public a a(aa aaVar) {
            return a(Constants.HTTP_POST, aaVar);
        }

        public a a(String str, aa aaVar) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (aaVar != null && !b.a.d.g.c(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (aaVar == null && b.a.d.g.b(str)) {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
            this.f2115b = str;
            this.f2117d = aaVar;
            return this;
        }

        public z a() {
            if (this.f2114a == null) {
                throw new IllegalStateException("url == null");
            }
            return new z(this);
        }
    }
}
