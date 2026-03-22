package b.a.d;

import b.ac;
import b.r;
import b.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class j extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f1937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.e f1938b;

    public j(r rVar, c.e eVar) {
        this.f1937a = rVar;
        this.f1938b = eVar;
    }

    @Override // b.ac
    public u a() {
        String strA = this.f1937a.a("Content-Type");
        if (strA != null) {
            return u.a(strA);
        }
        return null;
    }

    @Override // b.ac
    public long b() {
        return f.a(this.f1937a);
    }

    @Override // b.ac
    public c.e d() {
        return this.f1938b;
    }
}
