package c.a.d;

import c.ad;
import c.s;
import c.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j extends ad {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f2668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.e f2669b;

    public j(s sVar, d.e eVar) {
        this.f2668a = sVar;
        this.f2669b = eVar;
    }

    @Override // c.ad
    public v a() {
        String strA = this.f2668a.a("Content-Type");
        if (strA != null) {
            return v.a(strA);
        }
        return null;
    }

    @Override // c.ad
    public long b() {
        return f.a(this.f2668a);
    }

    @Override // c.ad
    public d.e d() {
        return this.f2669b;
    }
}
