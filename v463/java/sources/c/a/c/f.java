package c.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d.f f2560a = d.f.a(":status");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d.f f2561b = d.f.a(":method");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d.f f2562c = d.f.a(":path");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final d.f f2563d = d.f.a(":scheme");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final d.f f2564e = d.f.a(":authority");
    public static final d.f f = d.f.a(":host");
    public static final d.f g = d.f.a(":version");
    public final d.f h;
    public final d.f i;
    final int j;

    public f(String str, String str2) {
        this(d.f.a(str), d.f.a(str2));
    }

    public f(d.f fVar, String str) {
        this(fVar, d.f.a(str));
    }

    public f(d.f fVar, d.f fVar2) {
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
        return ((527 + this.h.hashCode()) * 31) + this.i.hashCode();
    }

    public String toString() {
        return c.a.c.a("%s: %s", this.h.a(), this.i.a());
    }
}
