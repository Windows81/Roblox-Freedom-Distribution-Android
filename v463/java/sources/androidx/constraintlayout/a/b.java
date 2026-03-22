package androidx.constraintlayout.a;

import androidx.constraintlayout.a.e;
import androidx.constraintlayout.a.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements e.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f1174d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f1171a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f1172b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1173c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1175e = false;

    public b(c cVar) {
        this.f1174d = new a(this, cVar);
    }

    boolean a() {
        h hVar = this.f1171a;
        return hVar != null && (hVar.f == h.a.UNRESTRICTED || this.f1172b >= 0.0f);
    }

    public String toString() {
        return b();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String b() {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.b.b():java.lang.String");
    }

    public void c() {
        this.f1171a = null;
        this.f1174d.a();
        this.f1172b = 0.0f;
        this.f1175e = false;
    }

    boolean a(h hVar) {
        return this.f1174d.a(hVar);
    }

    b a(h hVar, int i) {
        this.f1171a = hVar;
        float f = i;
        hVar.f1194d = f;
        this.f1172b = f;
        this.f1175e = true;
        return this;
    }

    public b b(h hVar, int i) {
        if (i < 0) {
            this.f1172b = i * (-1);
            this.f1174d.a(hVar, 1.0f);
        } else {
            this.f1172b = i;
            this.f1174d.a(hVar, -1.0f);
        }
        return this;
    }

    public b a(h hVar, h hVar2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1172b = i;
        }
        if (!z) {
            this.f1174d.a(hVar, -1.0f);
            this.f1174d.a(hVar2, 1.0f);
        } else {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
        }
        return this;
    }

    b c(h hVar, int i) {
        this.f1174d.a(hVar, i);
        return this;
    }

    public b a(h hVar, h hVar2, h hVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1172b = i;
        }
        if (!z) {
            this.f1174d.a(hVar, -1.0f);
            this.f1174d.a(hVar2, 1.0f);
            this.f1174d.a(hVar3, 1.0f);
        } else {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
            this.f1174d.a(hVar3, -1.0f);
        }
        return this;
    }

    public b b(h hVar, h hVar2, h hVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1172b = i;
        }
        if (!z) {
            this.f1174d.a(hVar, -1.0f);
            this.f1174d.a(hVar2, 1.0f);
            this.f1174d.a(hVar3, -1.0f);
        } else {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
            this.f1174d.a(hVar3, 1.0f);
        }
        return this;
    }

    public b a(float f, float f2, float f3, h hVar, h hVar2, h hVar3, h hVar4) {
        this.f1172b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
            this.f1174d.a(hVar4, 1.0f);
            this.f1174d.a(hVar3, -1.0f);
        } else if (f == 0.0f) {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
        } else if (f3 == 0.0f) {
            this.f1174d.a(hVar3, 1.0f);
            this.f1174d.a(hVar4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
            this.f1174d.a(hVar4, f4);
            this.f1174d.a(hVar3, -f4);
        }
        return this;
    }

    b a(h hVar, h hVar2, int i, float f, h hVar3, h hVar4, int i2) {
        if (hVar2 == hVar3) {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar4, 1.0f);
            this.f1174d.a(hVar2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.f1174d.a(hVar, 1.0f);
            this.f1174d.a(hVar2, -1.0f);
            this.f1174d.a(hVar3, -1.0f);
            this.f1174d.a(hVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f1172b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.f1174d.a(hVar, -1.0f);
            this.f1174d.a(hVar2, 1.0f);
            this.f1172b = i;
        } else if (f >= 1.0f) {
            this.f1174d.a(hVar3, -1.0f);
            this.f1174d.a(hVar4, 1.0f);
            this.f1172b = i2;
        } else {
            float f2 = 1.0f - f;
            this.f1174d.a(hVar, f2 * 1.0f);
            this.f1174d.a(hVar2, f2 * (-1.0f));
            this.f1174d.a(hVar3, (-1.0f) * f);
            this.f1174d.a(hVar4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f1172b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    public b a(e eVar, int i) {
        this.f1174d.a(eVar.a(i, "ep"), 1.0f);
        this.f1174d.a(eVar.a(i, "em"), -1.0f);
        return this;
    }

    b a(h hVar, h hVar2, h hVar3, float f) {
        this.f1174d.a(hVar, -1.0f);
        this.f1174d.a(hVar2, 1.0f - f);
        this.f1174d.a(hVar3, f);
        return this;
    }

    public b a(h hVar, h hVar2, h hVar3, h hVar4, float f) {
        this.f1174d.a(hVar, -1.0f);
        this.f1174d.a(hVar2, 1.0f);
        this.f1174d.a(hVar3, f);
        this.f1174d.a(hVar4, -f);
        return this;
    }

    public b b(h hVar, h hVar2, h hVar3, h hVar4, float f) {
        this.f1174d.a(hVar3, 0.5f);
        this.f1174d.a(hVar4, 0.5f);
        this.f1174d.a(hVar, -0.5f);
        this.f1174d.a(hVar2, -0.5f);
        this.f1172b = -f;
        return this;
    }

    void d() {
        float f = this.f1172b;
        if (f < 0.0f) {
            this.f1172b = f * (-1.0f);
            this.f1174d.b();
        }
    }

    boolean a(e eVar) {
        boolean z;
        h hVarA = this.f1174d.a(eVar);
        if (hVarA == null) {
            z = true;
        } else {
            c(hVarA);
            z = false;
        }
        if (this.f1174d.f1108a == 0) {
            this.f1175e = true;
        }
        return z;
    }

    h b(h hVar) {
        return this.f1174d.a((boolean[]) null, hVar);
    }

    void c(h hVar) {
        h hVar2 = this.f1171a;
        if (hVar2 != null) {
            this.f1174d.a(hVar2, -1.0f);
            this.f1171a = null;
        }
        float fA = this.f1174d.a(hVar, true) * (-1.0f);
        this.f1171a = hVar;
        if (fA == 1.0f) {
            return;
        }
        this.f1172b /= fA;
        this.f1174d.a(fA);
    }

    public boolean e() {
        return this.f1171a == null && this.f1172b == 0.0f && this.f1174d.f1108a == 0;
    }

    @Override // androidx.constraintlayout.a.e.a
    public h a(e eVar, boolean[] zArr) {
        return this.f1174d.a(zArr, (h) null);
    }

    @Override // androidx.constraintlayout.a.e.a
    public void f() {
        this.f1174d.a();
        this.f1171a = null;
        this.f1172b = 0.0f;
    }

    @Override // androidx.constraintlayout.a.e.a
    public void a(e.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f1171a = null;
            this.f1174d.a();
            for (int i = 0; i < bVar.f1174d.f1108a; i++) {
                this.f1174d.a(bVar.f1174d.a(i), bVar.f1174d.b(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.a.e.a
    public void d(h hVar) {
        float f = 1.0f;
        if (hVar.f1193c != 1) {
            if (hVar.f1193c == 2) {
                f = 1000.0f;
            } else if (hVar.f1193c == 3) {
                f = 1000000.0f;
            } else if (hVar.f1193c == 4) {
                f = 1.0E9f;
            } else if (hVar.f1193c == 5) {
                f = 1.0E12f;
            }
        }
        this.f1174d.a(hVar, f);
    }

    @Override // androidx.constraintlayout.a.e.a
    public h g() {
        return this.f1171a;
    }
}
