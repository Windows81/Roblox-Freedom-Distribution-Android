package androidx.constraintlayout.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.h;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {
    public static f g = null;
    private static int h = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b[] f1180b;
    final c f;
    private a j;
    private final a r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f1179a = 0;
    private HashMap<String, h> i = null;
    private int k = 32;
    private int l = 32;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1181c = false;
    private boolean[] m = new boolean[32];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1182d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1183e = 0;
    private int n = 32;
    private h[] o = new h[h];
    private int p = 0;
    private b[] q = new b[32];

    interface a {
        h a(e eVar, boolean[] zArr);

        void a(a aVar);

        void d(h hVar);

        void f();

        h g();
    }

    public e() {
        this.f1180b = null;
        this.f1180b = new b[32];
        i();
        c cVar = new c();
        this.f = cVar;
        this.j = new d(cVar);
        this.r = new b(this.f);
    }

    public static f a() {
        return g;
    }

    private void h() {
        int i = this.k * 2;
        this.k = i;
        this.f1180b = (b[]) Arrays.copyOf(this.f1180b, i);
        c cVar = this.f;
        cVar.f1178c = (h[]) Arrays.copyOf(cVar.f1178c, this.k);
        int i2 = this.k;
        this.m = new boolean[i2];
        this.l = i2;
        this.n = i2;
        f fVar = g;
        if (fVar != null) {
            fVar.f1187d++;
            f fVar2 = g;
            fVar2.p = Math.max(fVar2.p, this.k);
            f fVar3 = g;
            fVar3.D = fVar3.p;
        }
    }

    private void i() {
        int i = 0;
        while (true) {
            b[] bVarArr = this.f1180b;
            if (i >= bVarArr.length) {
                return;
            }
            b bVar = bVarArr[i];
            if (bVar != null) {
                this.f.f1176a.a(bVar);
            }
            this.f1180b[i] = null;
            i++;
        }
    }

    public void b() {
        for (int i = 0; i < this.f.f1178c.length; i++) {
            h hVar = this.f.f1178c[i];
            if (hVar != null) {
                hVar.b();
            }
        }
        this.f.f1177b.a(this.o, this.p);
        this.p = 0;
        Arrays.fill(this.f.f1178c, (Object) null);
        HashMap<String, h> map = this.i;
        if (map != null) {
            map.clear();
        }
        this.f1179a = 0;
        this.j.f();
        this.f1182d = 1;
        for (int i2 = 0; i2 < this.f1183e; i2++) {
            this.f1180b[i2].f1173c = false;
        }
        i();
        this.f1183e = 0;
    }

    public h a(Object obj) {
        h hVarB = null;
        if (obj == null) {
            return null;
        }
        if (this.f1182d + 1 >= this.l) {
            h();
        }
        if (obj instanceof androidx.constraintlayout.a.a.e) {
            androidx.constraintlayout.a.a.e eVar = (androidx.constraintlayout.a.a.e) obj;
            hVarB = eVar.b();
            if (hVarB == null) {
                eVar.a(this.f);
                hVarB = eVar.b();
            }
            if (hVarB.f1191a == -1 || hVarB.f1191a > this.f1179a || this.f.f1178c[hVarB.f1191a] == null) {
                if (hVarB.f1191a != -1) {
                    hVarB.b();
                }
                int i = this.f1179a + 1;
                this.f1179a = i;
                this.f1182d++;
                hVarB.f1191a = i;
                hVarB.f = h.a.UNRESTRICTED;
                this.f.f1178c[this.f1179a] = hVarB;
            }
        }
        return hVarB;
    }

    public b c() {
        b bVarA = this.f.f1176a.a();
        if (bVarA == null) {
            bVarA = new b(this.f);
        } else {
            bVarA.c();
        }
        h.a();
        return bVarA;
    }

    public h d() {
        f fVar = g;
        if (fVar != null) {
            fVar.n++;
        }
        if (this.f1182d + 1 >= this.l) {
            h();
        }
        h hVarA = a(h.a.SLACK, (String) null);
        int i = this.f1179a + 1;
        this.f1179a = i;
        this.f1182d++;
        hVarA.f1191a = i;
        this.f.f1178c[this.f1179a] = hVarA;
        return hVarA;
    }

    public h e() {
        f fVar = g;
        if (fVar != null) {
            fVar.o++;
        }
        if (this.f1182d + 1 >= this.l) {
            h();
        }
        h hVarA = a(h.a.SLACK, (String) null);
        int i = this.f1179a + 1;
        this.f1179a = i;
        this.f1182d++;
        hVarA.f1191a = i;
        this.f.f1178c[this.f1179a] = hVarA;
        return hVarA;
    }

    private void b(b bVar) {
        bVar.a(this, 0);
    }

    void a(b bVar, int i, int i2) {
        bVar.c(a(i2, (String) null), i);
    }

    public h a(int i, String str) {
        f fVar = g;
        if (fVar != null) {
            fVar.m++;
        }
        if (this.f1182d + 1 >= this.l) {
            h();
        }
        h hVarA = a(h.a.ERROR, str);
        int i2 = this.f1179a + 1;
        this.f1179a = i2;
        this.f1182d++;
        hVarA.f1191a = i2;
        hVarA.f1193c = i;
        this.f.f1178c[this.f1179a] = hVarA;
        this.j.d(hVarA);
        return hVarA;
    }

    private h a(h.a aVar, String str) {
        h hVarA = this.f.f1177b.a();
        if (hVarA == null) {
            hVarA = new h(aVar, str);
            hVarA.a(aVar, str);
        } else {
            hVarA.b();
            hVarA.a(aVar, str);
        }
        int i = this.p;
        int i2 = h;
        if (i >= i2) {
            int i3 = i2 * 2;
            h = i3;
            this.o = (h[]) Arrays.copyOf(this.o, i3);
        }
        h[] hVarArr = this.o;
        int i4 = this.p;
        this.p = i4 + 1;
        hVarArr[i4] = hVarA;
        return hVarA;
    }

    public int b(Object obj) {
        h hVarB = ((androidx.constraintlayout.a.a.e) obj).b();
        if (hVarB != null) {
            return (int) (hVarB.f1194d + 0.5f);
        }
        return 0;
    }

    public void f() throws Exception {
        f fVar = g;
        if (fVar != null) {
            fVar.f1188e++;
        }
        if (this.f1181c) {
            f fVar2 = g;
            if (fVar2 != null) {
                fVar2.r++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.f1183e) {
                    z = true;
                    break;
                } else if (!this.f1180b[i].f1175e) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                a(this.j);
                return;
            }
            f fVar3 = g;
            if (fVar3 != null) {
                fVar3.q++;
            }
            j();
            return;
        }
        a(this.j);
    }

    void a(a aVar) throws Exception {
        f fVar = g;
        if (fVar != null) {
            fVar.t++;
            f fVar2 = g;
            fVar2.u = Math.max(fVar2.u, this.f1182d);
            f fVar3 = g;
            fVar3.v = Math.max(fVar3.v, this.f1183e);
        }
        c((b) aVar);
        b(aVar);
        a(aVar, false);
        j();
    }

    private final void c(b bVar) {
        if (this.f1183e > 0) {
            bVar.f1174d.a(bVar, this.f1180b);
            if (bVar.f1174d.f1108a == 0) {
                bVar.f1175e = true;
            }
        }
    }

    public void a(b bVar) {
        h hVarB;
        if (bVar == null) {
            return;
        }
        f fVar = g;
        if (fVar != null) {
            fVar.f++;
            if (bVar.f1175e) {
                g.g++;
            }
        }
        boolean z = true;
        if (this.f1183e + 1 >= this.n || this.f1182d + 1 >= this.l) {
            h();
        }
        boolean z2 = false;
        if (!bVar.f1175e) {
            c(bVar);
            if (bVar.e()) {
                return;
            }
            bVar.d();
            if (bVar.a(this)) {
                h hVarE = e();
                bVar.f1171a = hVarE;
                d(bVar);
                this.r.a(bVar);
                a(this.r, true);
                if (hVarE.f1192b == -1) {
                    if (bVar.f1171a == hVarE && (hVarB = bVar.b(hVarE)) != null) {
                        f fVar2 = g;
                        if (fVar2 != null) {
                            fVar2.j++;
                        }
                        bVar.c(hVarB);
                    }
                    if (!bVar.f1175e) {
                        bVar.f1171a.c(bVar);
                    }
                    this.f1183e--;
                }
            } else {
                z = false;
            }
            if (!bVar.a()) {
                return;
            } else {
                z2 = z;
            }
        }
        if (z2) {
            return;
        }
        d(bVar);
    }

    private final void d(b bVar) {
        if (this.f1180b[this.f1183e] != null) {
            this.f.f1176a.a(this.f1180b[this.f1183e]);
        }
        this.f1180b[this.f1183e] = bVar;
        bVar.f1171a.f1192b = this.f1183e;
        this.f1183e++;
        bVar.f1171a.c(bVar);
    }

    private final int a(a aVar, boolean z) {
        f fVar = g;
        if (fVar != null) {
            fVar.h++;
        }
        for (int i = 0; i < this.f1182d; i++) {
            this.m[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            f fVar2 = g;
            if (fVar2 != null) {
                fVar2.i++;
            }
            i2++;
            if (i2 >= this.f1182d * 2) {
                return i2;
            }
            if (aVar.g() != null) {
                this.m[aVar.g().f1191a] = true;
            }
            h hVarA = aVar.a(this, this.m);
            if (hVarA != null) {
                if (this.m[hVarA.f1191a]) {
                    return i2;
                }
                this.m[hVarA.f1191a] = true;
            }
            if (hVarA != null) {
                float f = Float.MAX_VALUE;
                int i3 = -1;
                for (int i4 = 0; i4 < this.f1183e; i4++) {
                    b bVar = this.f1180b[i4];
                    if (bVar.f1171a.f != h.a.UNRESTRICTED && !bVar.f1175e && bVar.a(hVarA)) {
                        float fB = bVar.f1174d.b(hVarA);
                        if (fB < 0.0f) {
                            float f2 = (-bVar.f1172b) / fB;
                            if (f2 < f) {
                                i3 = i4;
                                f = f2;
                            }
                        }
                    }
                }
                if (i3 > -1) {
                    b bVar2 = this.f1180b[i3];
                    bVar2.f1171a.f1192b = -1;
                    f fVar3 = g;
                    if (fVar3 != null) {
                        fVar3.j++;
                    }
                    bVar2.c(hVarA);
                    bVar2.f1171a.f1192b = i3;
                    bVar2.f1171a.c(bVar2);
                }
            }
            z2 = true;
        }
        return i2;
    }

    private int b(a aVar) throws Exception {
        float f;
        boolean z;
        int i = 0;
        while (true) {
            f = 0.0f;
            if (i >= this.f1183e) {
                z = false;
                break;
            }
            if (this.f1180b[i].f1171a.f != h.a.UNRESTRICTED && this.f1180b[i].f1172b < 0.0f) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            f fVar = g;
            if (fVar != null) {
                fVar.k++;
            }
            i2++;
            float f2 = Float.MAX_VALUE;
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            while (i3 < this.f1183e) {
                b bVar = this.f1180b[i3];
                if (bVar.f1171a.f != h.a.UNRESTRICTED && !bVar.f1175e && bVar.f1172b < f) {
                    int i7 = 1;
                    while (i7 < this.f1182d) {
                        h hVar = this.f.f1178c[i7];
                        float fB = bVar.f1174d.b(hVar);
                        if (fB > f) {
                            for (int i8 = 0; i8 < 7; i8++) {
                                float f3 = hVar.f1195e[i8] / fB;
                                if ((f3 < f2 && i8 == i6) || i8 > i6) {
                                    i5 = i7;
                                    i6 = i8;
                                    f2 = f3;
                                    i4 = i3;
                                }
                            }
                        }
                        i7++;
                        f = 0.0f;
                    }
                }
                i3++;
                f = 0.0f;
            }
            if (i4 != -1) {
                b bVar2 = this.f1180b[i4];
                bVar2.f1171a.f1192b = -1;
                f fVar2 = g;
                if (fVar2 != null) {
                    fVar2.j++;
                }
                bVar2.c(this.f.f1178c[i5]);
                bVar2.f1171a.f1192b = i4;
                bVar2.f1171a.c(bVar2);
            } else {
                z2 = true;
            }
            if (i2 > this.f1182d / 2) {
                z2 = true;
            }
            f = 0.0f;
        }
        return i2;
    }

    private void j() {
        for (int i = 0; i < this.f1183e; i++) {
            b bVar = this.f1180b[i];
            bVar.f1171a.f1194d = bVar.f1172b;
        }
    }

    public c g() {
        return this.f;
    }

    public void a(h hVar, h hVar2, int i, int i2) {
        b bVarC = c();
        h hVarD = d();
        hVarD.f1193c = 0;
        bVarC.a(hVar, hVar2, hVarD, i);
        if (i2 != 6) {
            a(bVarC, (int) (bVarC.f1174d.b(hVarD) * (-1.0f)), i2);
        }
        a(bVarC);
    }

    public void a(h hVar, h hVar2, boolean z) {
        b bVarC = c();
        h hVarD = d();
        hVarD.f1193c = 0;
        bVarC.a(hVar, hVar2, hVarD, 0);
        if (z) {
            a(bVarC, (int) (bVarC.f1174d.b(hVarD) * (-1.0f)), 1);
        }
        a(bVarC);
    }

    public void b(h hVar, h hVar2, int i, int i2) {
        b bVarC = c();
        h hVarD = d();
        hVarD.f1193c = 0;
        bVarC.b(hVar, hVar2, hVarD, i);
        if (i2 != 6) {
            a(bVarC, (int) (bVarC.f1174d.b(hVarD) * (-1.0f)), i2);
        }
        a(bVarC);
    }

    public void b(h hVar, h hVar2, boolean z) {
        b bVarC = c();
        h hVarD = d();
        hVarD.f1193c = 0;
        bVarC.b(hVar, hVar2, hVarD, 0);
        if (z) {
            a(bVarC, (int) (bVarC.f1174d.b(hVarD) * (-1.0f)), 1);
        }
        a(bVarC);
    }

    public void a(h hVar, h hVar2, int i, float f, h hVar3, h hVar4, int i2, int i3) {
        b bVarC = c();
        bVarC.a(hVar, hVar2, i, f, hVar3, hVar4, i2);
        if (i3 != 6) {
            bVarC.a(this, i3);
        }
        a(bVarC);
    }

    public void a(h hVar, h hVar2, h hVar3, h hVar4, float f, int i) {
        b bVarC = c();
        bVarC.a(hVar, hVar2, hVar3, hVar4, f);
        if (i != 6) {
            bVarC.a(this, i);
        }
        a(bVarC);
    }

    public b c(h hVar, h hVar2, int i, int i2) {
        b bVarC = c();
        bVarC.a(hVar, hVar2, i);
        if (i2 != 6) {
            bVarC.a(this, i2);
        }
        a(bVarC);
        return bVarC;
    }

    public void a(h hVar, int i) {
        int i2 = hVar.f1192b;
        if (hVar.f1192b != -1) {
            b bVar = this.f1180b[i2];
            if (bVar.f1175e) {
                bVar.f1172b = i;
                return;
            }
            if (bVar.f1174d.f1108a == 0) {
                bVar.f1175e = true;
                bVar.f1172b = i;
                return;
            } else {
                b bVarC = c();
                bVarC.b(hVar, i);
                a(bVarC);
                return;
            }
        }
        b bVarC2 = c();
        bVarC2.a(hVar, i);
        a(bVarC2);
    }

    public static b a(e eVar, h hVar, h hVar2, h hVar3, float f, boolean z) {
        b bVarC = eVar.c();
        if (z) {
            eVar.b(bVarC);
        }
        return bVarC.a(hVar, hVar2, hVar3, f);
    }

    public void a(androidx.constraintlayout.a.a.f fVar, androidx.constraintlayout.a.a.f fVar2, float f, int i) {
        h hVarA = a(fVar.a(e.c.LEFT));
        h hVarA2 = a(fVar.a(e.c.TOP));
        h hVarA3 = a(fVar.a(e.c.RIGHT));
        h hVarA4 = a(fVar.a(e.c.BOTTOM));
        h hVarA5 = a(fVar2.a(e.c.LEFT));
        h hVarA6 = a(fVar2.a(e.c.TOP));
        h hVarA7 = a(fVar2.a(e.c.RIGHT));
        h hVarA8 = a(fVar2.a(e.c.BOTTOM));
        b bVarC = c();
        double d2 = f;
        double dSin = Math.sin(d2);
        double d3 = i;
        Double.isNaN(d3);
        bVarC.b(hVarA2, hVarA4, hVarA6, hVarA8, (float) (dSin * d3));
        a(bVarC);
        b bVarC2 = c();
        double dCos = Math.cos(d2);
        Double.isNaN(d3);
        bVarC2.b(hVarA, hVarA3, hVarA5, hVarA7, (float) (dCos * d3));
        a(bVarC2);
    }
}
