package c;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f2760a = new a().a().c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f2761b = new a().b().a(Integer.MAX_VALUE, TimeUnit.SECONDS).c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f2762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f2763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f2764e;
    private final int f;
    private final int g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final int k;
    private final int l;
    private final boolean m;
    private final boolean n;

    private d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, String str) {
        this.f2763d = z;
        this.f2764e = z2;
        this.f = i;
        this.g = i2;
        this.h = z3;
        this.i = z4;
        this.j = z5;
        this.k = i3;
        this.l = i4;
        this.m = z6;
        this.n = z7;
        this.f2762c = str;
    }

    private d(a aVar) {
        this.f2763d = aVar.f2765a;
        this.f2764e = aVar.f2766b;
        this.f = aVar.f2767c;
        this.g = -1;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = aVar.f2768d;
        this.l = aVar.f2769e;
        this.m = aVar.f;
        this.n = aVar.g;
    }

    public boolean a() {
        return this.f2763d;
    }

    public boolean b() {
        return this.f2764e;
    }

    public int c() {
        return this.f;
    }

    public boolean d() {
        return this.h;
    }

    public boolean e() {
        return this.i;
    }

    public boolean f() {
        return this.j;
    }

    public int g() {
        return this.k;
    }

    public int h() {
        return this.l;
    }

    public boolean i() {
        return this.m;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static c.d a(c.s r21) {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.d.a(c.s):c.d");
    }

    public String toString() {
        String str = this.f2762c;
        if (str != null) {
            return str;
        }
        String strJ = j();
        this.f2762c = strJ;
        return strJ;
    }

    private String j() {
        StringBuilder sb = new StringBuilder();
        if (this.f2763d) {
            sb.append("no-cache, ");
        }
        if (this.f2764e) {
            sb.append("no-store, ");
        }
        if (this.f != -1) {
            sb.append("max-age=");
            sb.append(this.f);
            sb.append(", ");
        }
        if (this.g != -1) {
            sb.append("s-maxage=");
            sb.append(this.g);
            sb.append(", ");
        }
        if (this.h) {
            sb.append("private, ");
        }
        if (this.i) {
            sb.append("public, ");
        }
        if (this.j) {
            sb.append("must-revalidate, ");
        }
        if (this.k != -1) {
            sb.append("max-stale=");
            sb.append(this.k);
            sb.append(", ");
        }
        if (this.l != -1) {
            sb.append("min-fresh=");
            sb.append(this.l);
            sb.append(", ");
        }
        if (this.m) {
            sb.append("only-if-cached, ");
        }
        if (this.n) {
            sb.append("no-transform, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f2765a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2767c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2768d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2769e = -1;
        boolean f;
        boolean g;

        public a a() {
            this.f2765a = true;
            return this;
        }

        public a a(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException("maxStale < 0: " + i);
            }
            long seconds = timeUnit.toSeconds(i);
            this.f2768d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
            return this;
        }

        public a b() {
            this.f = true;
            return this;
        }

        public d c() {
            return new d(this);
        }
    }
}
