package d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static o f7802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static long f7803b;

    private p() {
    }

    static o a() {
        synchronized (p.class) {
            if (f7802a != null) {
                o oVar = f7802a;
                f7802a = oVar.f;
                oVar.f = null;
                f7803b -= 8192;
                return oVar;
            }
            return new o();
        }
    }

    static void a(o oVar) {
        if (oVar.f != null || oVar.g != null) {
            throw new IllegalArgumentException();
        }
        if (oVar.f7800d) {
            return;
        }
        synchronized (p.class) {
            if (f7803b + 8192 > 65536) {
                return;
            }
            f7803b += 8192;
            oVar.f = f7802a;
            oVar.f7799c = 0;
            oVar.f7798b = 0;
            f7802a = oVar;
        }
    }
}
