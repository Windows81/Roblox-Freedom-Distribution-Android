package b.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c.f f1842a = c.f.a(":status");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c.f f1843b = c.f.a(":method");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c.f f1844c = c.f.a(":path");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c.f f1845d = c.f.a(":scheme");
    public static final c.f e = c.f.a(":authority");
    public static final c.f f = c.f.a(":host");
    public static final c.f g = c.f.a(":version");
    public final c.f h;
    public final c.f i;
    final int j;

    public f(String str, String str2) {
        this(c.f.a(str), c.f.a(str2));
    }

    public f(c.f fVar, String str) {
        this(fVar, c.f.a(str));
    }

    public f(c.f fVar, c.f fVar2) {
        this.h = fVar;
        this.i = fVar2;
        this.j = fVar.e() + 32 + fVar2.e();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.h.equals(fVar.h) && this.i.equals(fVar.i);
    }

    public int hashCode() {
        return ((this.h.hashCode() + 527) * 31) + this.i.hashCode();
    }

    public String toString() {
        return b.a.c.a("%s: %s", this.h.a(), this.i.a());
    }
}
