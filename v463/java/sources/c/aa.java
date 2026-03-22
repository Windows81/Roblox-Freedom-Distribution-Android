package c;

import c.s;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f2710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s f2712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ab f2713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f2714e;
    private volatile d f;

    private aa(a aVar) {
        this.f2710a = aVar.f2715a;
        this.f2711b = aVar.f2716b;
        this.f2712c = aVar.f2717c.a();
        this.f2713d = aVar.f2718d;
        this.f2714e = aVar.f2719e != null ? aVar.f2719e : this;
    }

    public t a() {
        return this.f2710a;
    }

    public String b() {
        return this.f2711b;
    }

    public s c() {
        return this.f2712c;
    }

    public String a(String str) {
        return this.f2712c.a(str);
    }

    public ab d() {
        return this.f2713d;
    }

    public a e() {
        return new a();
    }

    public d f() {
        d dVar = this.f;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f2712c);
        this.f = dVarA;
        return dVarA;
    }

    public boolean g() {
        return this.f2710a.c();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f2711b);
        sb.append(", url=");
        sb.append(this.f2710a);
        sb.append(", tag=");
        Object obj = this.f2714e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private t f2715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private s.a f2717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ab f2718d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Object f2719e;

        public a() {
            this.f2716b = "GET";
            this.f2717c = new s.a();
        }

        private a(aa aaVar) {
            this.f2715a = aaVar.f2710a;
            this.f2716b = aaVar.f2711b;
            this.f2718d = aaVar.f2713d;
            this.f2719e = aaVar.f2714e;
            this.f2717c = aaVar.f2712c.b();
        }

        public a a(t tVar) {
            if (tVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f2715a = tVar;
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
            t tVarE = t.e(str);
            if (tVarE == null) {
                throw new IllegalArgumentException("unexpected url: " + str);
            }
            return a(tVarE);
        }

        public a a(String str, String str2) {
            this.f2717c.c(str, str2);
            return this;
        }

        public a b(String str, String str2) {
            this.f2717c.a(str, str2);
            return this;
        }

        public a b(String str) {
            this.f2717c.b(str);
            return this;
        }

        public a a(s sVar) {
            this.f2717c = sVar.b();
            return this;
        }

        public a a(ab abVar) {
            return a("POST", abVar);
        }

        public a a(String str, ab abVar) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (abVar != null && !c.a.d.g.c(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (abVar == null && c.a.d.g.b(str)) {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
            this.f2716b = str;
            this.f2718d = abVar;
            return this;
        }

        public aa a() {
            if (this.f2715a == null) {
                throw new IllegalStateException("url == null");
            }
            return new aa(this);
        }
    }
}
