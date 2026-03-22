package c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static o f2166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static long f2167b;

    private p() {
    }

    static o a() {
        synchronized (p.class) {
            if (f2166a != null) {
                o oVar = f2166a;
                f2166a = oVar.f;
                oVar.f = null;
                f2167b -= 8192;
                return oVar;
            }
            return new o();
        }
    }

    static void a(o oVar) {
        if (oVar.f != null || oVar.g != null) {
            throw new IllegalArgumentException();
        }
        if (!oVar.f2165d) {
            synchronized (p.class) {
                if (f2167b + 8192 <= 65536) {
                    f2167b += 8192;
                    oVar.f = f2166a;
                    oVar.f2164c = 0;
                    oVar.f2163b = 0;
                    f2166a = oVar;
                }
            }
        }
    }
}
