package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {
    public static float R = 0.5f;
    protected e[] A;
    protected ArrayList<e> B;
    protected a[] C;
    f D;
    int E;
    int F;
    protected float G;
    protected int H;
    protected int I;
    protected int J;
    int K;
    int L;
    protected int M;
    protected int N;
    int O;
    protected int P;
    protected int Q;
    float S;
    float T;
    boolean U;
    boolean V;
    boolean W;
    boolean X;
    boolean Y;
    int Z;
    int aa;
    boolean ab;
    boolean ac;
    float[] ad;
    protected f[] ae;
    protected f[] af;
    f ag;
    f ah;
    private int ak;
    private int al;
    private int am;
    private int an;
    private int ao;
    private int ap;
    private Object aq;
    private int ar;
    private int as;
    private String at;
    private String au;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    n f1138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    n f1139d;
    boolean n;
    boolean o;
    e z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1136a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1137b = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1140e = 0;
    int f = 0;
    int[] g = new int[2];
    int h = 0;
    int i = 0;
    float j = 1.0f;
    int k = 0;
    int l = 0;
    float m = 1.0f;
    int p = -1;
    float q = 1.0f;
    h r = null;
    private int[] ai = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float aj = 0.0f;
    e s = new e(this, e.c.LEFT);
    e t = new e(this, e.c.TOP);
    e u = new e(this, e.c.RIGHT);
    e v = new e(this, e.c.BOTTOM);
    e w = new e(this, e.c.BASELINE);
    e x = new e(this, e.c.CENTER_X);
    e y = new e(this, e.c.CENTER_Y);

    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public void c() {
    }

    public void c(int i) {
        this.ai[0] = i;
    }

    public void d(int i) {
        this.ai[1] = i;
    }

    public boolean d() {
        return this.f1140e == 0 && this.G == 0.0f && this.h == 0 && this.i == 0 && this.C[0] == a.MATCH_CONSTRAINT;
    }

    public boolean e() {
        return this.f == 0 && this.G == 0.0f && this.k == 0 && this.l == 0 && this.C[1] == a.MATCH_CONSTRAINT;
    }

    public void f() {
        this.s.i();
        this.t.i();
        this.u.i();
        this.v.i();
        this.w.i();
        this.x.i();
        this.y.i();
        this.z.i();
        this.D = null;
        this.aj = 0.0f;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.ak = 0;
        this.al = 0;
        this.am = 0;
        this.an = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.ao = 0;
        this.ap = 0;
        float f = R;
        this.S = f;
        this.T = f;
        this.C[0] = a.FIXED;
        this.C[1] = a.FIXED;
        this.aq = null;
        this.ar = 0;
        this.as = 0;
        this.au = null;
        this.U = false;
        this.V = false;
        this.Z = 0;
        this.aa = 0;
        this.ab = false;
        this.ac = false;
        float[] fArr = this.ad;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f1136a = -1;
        this.f1137b = -1;
        int[] iArr = this.ai;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f1140e = 0;
        this.f = 0;
        this.j = 1.0f;
        this.m = 1.0f;
        this.i = Integer.MAX_VALUE;
        this.l = Integer.MAX_VALUE;
        this.h = 0;
        this.k = 0;
        this.p = -1;
        this.q = 1.0f;
        n nVar = this.f1138c;
        if (nVar != null) {
            nVar.b();
        }
        n nVar2 = this.f1139d;
        if (nVar2 != null) {
            nVar2.b();
        }
        this.r = null;
        this.W = false;
        this.X = false;
        this.Y = false;
    }

    public void b() {
        for (int i = 0; i < 6; i++) {
            this.A[i].a().b();
        }
    }

    public void g() {
        for (int i = 0; i < 6; i++) {
            this.A[i].a().c();
        }
    }

    public void b(int i) {
        k.a(i, this);
    }

    public boolean h() {
        return this.s.a().i == 1 && this.u.a().i == 1 && this.t.a().i == 1 && this.v.a().i == 1;
    }

    public n i() {
        if (this.f1138c == null) {
            this.f1138c = new n();
        }
        return this.f1138c;
    }

    public n j() {
        if (this.f1139d == null) {
            this.f1139d = new n();
        }
        return this.f1139d;
    }

    public f() {
        e eVar = new e(this, e.c.CENTER);
        this.z = eVar;
        this.A = new e[]{this.s, this.u, this.t, this.v, this.w, eVar};
        this.B = new ArrayList<>();
        this.C = new a[]{a.FIXED, a.FIXED};
        this.D = null;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.ak = 0;
        this.al = 0;
        this.am = 0;
        this.an = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        float f = R;
        this.S = f;
        this.T = f;
        this.ar = 0;
        this.as = 0;
        this.at = null;
        this.au = null;
        this.W = false;
        this.X = false;
        this.Y = false;
        this.Z = 0;
        this.aa = 0;
        this.ad = new float[]{-1.0f, -1.0f};
        this.ae = new f[]{null, null};
        this.af = new f[]{null, null};
        this.ag = null;
        this.ah = null;
        J();
    }

    public void a(androidx.constraintlayout.a.c cVar) {
        this.s.a(cVar);
        this.t.a(cVar);
        this.u.a(cVar);
        this.v.a(cVar);
        this.w.a(cVar);
        this.z.a(cVar);
        this.x.a(cVar);
        this.y.a(cVar);
    }

    private void J() {
        this.B.add(this.s);
        this.B.add(this.t);
        this.B.add(this.u);
        this.B.add(this.v);
        this.B.add(this.x);
        this.B.add(this.y);
        this.B.add(this.z);
        this.B.add(this.w);
    }

    public f k() {
        return this.D;
    }

    public void a(f fVar) {
        this.D = fVar;
    }

    public void b(boolean z) {
        this.n = z;
    }

    public void c(boolean z) {
        this.o = z;
    }

    public void a(f fVar, float f, int i) {
        a(e.c.CENTER, fVar, e.c.CENTER, i, 0);
        this.aj = f;
    }

    public void e(int i) {
        this.as = i;
    }

    public int l() {
        return this.as;
    }

    public String m() {
        return this.at;
    }

    public void a(String str) {
        this.at = str;
    }

    public void b(androidx.constraintlayout.a.e eVar) {
        eVar.a(this.s);
        eVar.a(this.t);
        eVar.a(this.u);
        eVar.a(this.v);
        if (this.O > 0) {
            eVar.a(this.w);
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.au != null) {
            str = "type: " + this.au + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.at != null) {
            str2 = "id: " + this.at + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.I);
        sb.append(", ");
        sb.append(this.J);
        sb.append(") - (");
        sb.append(this.E);
        sb.append(" x ");
        sb.append(this.F);
        sb.append(") wrap: (");
        sb.append(this.ao);
        sb.append(" x ");
        sb.append(this.ap);
        sb.append(")");
        return sb.toString();
    }

    public int n() {
        return this.I;
    }

    public int o() {
        return this.J;
    }

    public int p() {
        if (this.as == 8) {
            return 0;
        }
        return this.E;
    }

    public int q() {
        return this.ao;
    }

    public int r() {
        if (this.as == 8) {
            return 0;
        }
        return this.F;
    }

    public int s() {
        return this.ap;
    }

    public int f(int i) {
        if (i == 0) {
            return p();
        }
        if (i == 1) {
            return r();
        }
        return 0;
    }

    public int t() {
        return this.ak + this.M;
    }

    public int u() {
        return this.al + this.N;
    }

    protected int v() {
        return this.I + this.M;
    }

    protected int w() {
        return this.J + this.N;
    }

    public int x() {
        return n() + this.E;
    }

    public int y() {
        return o() + this.F;
    }

    public float g(int i) {
        if (i == 0) {
            return this.S;
        }
        if (i == 1) {
            return this.T;
        }
        return -1.0f;
    }

    public boolean z() {
        return this.O > 0;
    }

    public int A() {
        return this.O;
    }

    public Object B() {
        return this.aq;
    }

    public ArrayList<e> C() {
        return this.B;
    }

    public void h(int i) {
        this.I = i;
    }

    public void i(int i) {
        this.J = i;
    }

    public void a(int i, int i2) {
        this.I = i;
        this.J = i2;
    }

    public void b(int i, int i2) {
        this.M = i;
        this.N = i2;
    }

    public void D() {
        int i = this.I;
        int i2 = this.J;
        int i3 = this.E + i;
        int i4 = this.F + i2;
        this.ak = i;
        this.al = i2;
        this.am = i3 - i;
        this.an = i4 - i2;
    }

    public void j(int i) {
        this.E = i;
        int i2 = this.P;
        if (i < i2) {
            this.E = i2;
        }
    }

    public void k(int i) {
        this.F = i;
        int i2 = this.Q;
        if (i < i2) {
            this.F = i2;
        }
    }

    public void a(int i, int i2, int i3, float f) {
        this.f1140e = i;
        this.h = i2;
        this.i = i3;
        this.j = f;
        if (f >= 1.0f || i != 0) {
            return;
        }
        this.f1140e = 2;
    }

    public void b(int i, int i2, int i3, float f) {
        this.f = i;
        this.k = i2;
        this.l = i3;
        this.m = f;
        if (f >= 1.0f || i != 0) {
            return;
        }
        this.f = 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0084 A[PHI: r0
  0x0084: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:45:0x0084, B:35:0x007d, B:23:0x004f, B:25:0x0055, B:27:0x0061, B:29:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L8e
            int r1 = r9.length()
            if (r1 != 0) goto Lb
            goto L8e
        Lb:
            r1 = -1
            int r2 = r9.length()
            r3 = 44
            int r3 = r9.indexOf(r3)
            r4 = 0
            r5 = 1
            if (r3 <= 0) goto L37
            int r6 = r2 + (-1)
            if (r3 >= r6) goto L37
            java.lang.String r6 = r9.substring(r4, r3)
            java.lang.String r7 = "W"
            boolean r7 = r6.equalsIgnoreCase(r7)
            if (r7 == 0) goto L2c
            r1 = 0
            goto L35
        L2c:
            java.lang.String r4 = "H"
            boolean r4 = r6.equalsIgnoreCase(r4)
            if (r4 == 0) goto L35
            r1 = 1
        L35:
            int r4 = r3 + 1
        L37:
            r3 = 58
            int r3 = r9.indexOf(r3)
            if (r3 < 0) goto L75
            int r2 = r2 - r5
            if (r3 >= r2) goto L75
            java.lang.String r2 = r9.substring(r4, r3)
            int r3 = r3 + r5
            java.lang.String r9 = r9.substring(r3)
            int r3 = r2.length()
            if (r3 <= 0) goto L84
            int r3 = r9.length()
            if (r3 <= 0) goto L84
            float r2 = java.lang.Float.parseFloat(r2)     // Catch: java.lang.NumberFormatException -> L84
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L84
            int r3 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r3 <= 0) goto L84
            int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r3 <= 0) goto L84
            if (r1 != r5) goto L6f
            float r9 = r9 / r2
            float r9 = java.lang.Math.abs(r9)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L6f:
            float r2 = r2 / r9
            float r9 = java.lang.Math.abs(r2)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L75:
            java.lang.String r9 = r9.substring(r4)
            int r2 = r9.length()
            if (r2 <= 0) goto L84
            float r9 = java.lang.Float.parseFloat(r9)     // Catch: java.lang.NumberFormatException -> L84
            goto L85
        L84:
            r9 = 0
        L85:
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 <= 0) goto L8d
            r8.G = r9
            r8.H = r1
        L8d:
            return
        L8e:
            r8.G = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.f.b(java.lang.String):void");
    }

    public void a(float f) {
        this.S = f;
    }

    public void b(float f) {
        this.T = f;
    }

    public void l(int i) {
        if (i < 0) {
            this.P = 0;
        } else {
            this.P = i;
        }
    }

    public void m(int i) {
        if (i < 0) {
            this.Q = 0;
        } else {
            this.Q = i;
        }
    }

    public void n(int i) {
        this.ao = i;
    }

    public void o(int i) {
        this.ap = i;
    }

    public void a(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.I = i;
        this.J = i2;
        if (this.as == 8) {
            this.E = 0;
            this.F = 0;
            return;
        }
        if (this.C[0] == a.FIXED && i7 < (i6 = this.E)) {
            i7 = i6;
        }
        if (this.C[1] == a.FIXED && i8 < (i5 = this.F)) {
            i8 = i5;
        }
        this.E = i7;
        this.F = i8;
        int i9 = this.Q;
        if (i8 < i9) {
            this.F = i9;
        }
        int i10 = this.E;
        int i11 = this.P;
        if (i10 < i11) {
            this.E = i11;
        }
        this.X = true;
    }

    public void a(int i, int i2, int i3) {
        if (i3 == 0) {
            c(i, i2);
        } else if (i3 == 1) {
            d(i, i2);
        }
        this.X = true;
    }

    public void c(int i, int i2) {
        this.I = i;
        int i3 = i2 - i;
        this.E = i3;
        int i4 = this.P;
        if (i3 < i4) {
            this.E = i4;
        }
    }

    public void d(int i, int i2) {
        this.J = i;
        int i3 = i2 - i;
        this.F = i3;
        int i4 = this.Q;
        if (i3 < i4) {
            this.F = i4;
        }
    }

    int p(int i) {
        if (i == 0) {
            return this.K;
        }
        if (i == 1) {
            return this.L;
        }
        return 0;
    }

    void e(int i, int i2) {
        if (i2 == 0) {
            this.K = i;
        } else if (i2 == 1) {
            this.L = i;
        }
    }

    public void q(int i) {
        this.O = i;
    }

    public void a(Object obj) {
        this.aq = obj;
    }

    public void c(float f) {
        this.ad[0] = f;
    }

    public void d(float f) {
        this.ad[1] = f;
    }

    public void r(int i) {
        this.Z = i;
    }

    public void s(int i) {
        this.aa = i;
    }

    public boolean a() {
        return this.as != 8;
    }

    public void a(e.c cVar, f fVar, e.c cVar2, int i, int i2) {
        a(cVar).a(fVar.a(cVar2), i, i2, e.b.STRONG, 0, true);
    }

    public void E() {
        f fVarK = k();
        if (fVarK != null && (fVarK instanceof g) && ((g) k()).S()) {
            return;
        }
        int size = this.B.size();
        for (int i = 0; i < size; i++) {
            this.B.get(i).i();
        }
    }

    public e a(e.c cVar) {
        switch (AnonymousClass1.f1141a[cVar.ordinal()]) {
            case 1:
                return this.s;
            case 2:
                return this.t;
            case 3:
                return this.u;
            case 4:
                return this.v;
            case 5:
                return this.w;
            case 6:
                return this.z;
            case 7:
                return this.x;
            case 8:
                return this.y;
            case 9:
                return null;
            default:
                throw new AssertionError(cVar.name());
        }
    }

    public a F() {
        return this.C[0];
    }

    public a G() {
        return this.C[1];
    }

    public a t(int i) {
        if (i == 0) {
            return F();
        }
        if (i == 1) {
            return G();
        }
        return null;
    }

    public void a(a aVar) {
        this.C[0] = aVar;
        if (aVar == a.WRAP_CONTENT) {
            j(this.ao);
        }
    }

    public void b(a aVar) {
        this.C[1] = aVar;
        if (aVar == a.WRAP_CONTENT) {
            k(this.ap);
        }
    }

    public boolean H() {
        if (this.s.f1120c == null || this.s.f1120c.f1120c != this.s) {
            return this.u.f1120c != null && this.u.f1120c.f1120c == this.u;
        }
        return true;
    }

    public boolean I() {
        if (this.t.f1120c == null || this.t.f1120c.f1120c != this.t) {
            return this.v.f1120c != null && this.v.f1120c.f1120c == this.v;
        }
        return true;
    }

    private boolean a(int i) {
        int i2 = i * 2;
        if (this.A[i2].f1120c != null) {
            e eVar = this.A[i2].f1120c.f1120c;
            e[] eVarArr = this.A;
            if (eVar != eVarArr[i2]) {
                int i3 = i2 + 1;
                if (eVarArr[i3].f1120c != null && this.A[i3].f1120c.f1120c == this.A[i3]) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:168:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(androidx.constraintlayout.a.e r39) {
        /*
            Method dump skipped, instruction units count: 858
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.f.a(androidx.constraintlayout.a.e):void");
    }

    public void a(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.p == -1) {
            if (z3 && !z4) {
                this.p = 0;
            } else if (!z3 && z4) {
                this.p = 1;
                if (this.H == -1) {
                    this.q = 1.0f / this.q;
                }
            }
        }
        if (this.p == 0 && (!this.t.j() || !this.v.j())) {
            this.p = 1;
        } else if (this.p == 1 && (!this.s.j() || !this.u.j())) {
            this.p = 0;
        }
        if (this.p == -1 && (!this.t.j() || !this.v.j() || !this.s.j() || !this.u.j())) {
            if (this.t.j() && this.v.j()) {
                this.p = 0;
            } else if (this.s.j() && this.u.j()) {
                this.q = 1.0f / this.q;
                this.p = 1;
            }
        }
        if (this.p == -1) {
            if (z && !z2) {
                this.p = 0;
            } else if (!z && z2) {
                this.q = 1.0f / this.q;
                this.p = 1;
            }
        }
        if (this.p == -1) {
            if (this.h > 0 && this.k == 0) {
                this.p = 0;
            } else if (this.h == 0 && this.k > 0) {
                this.q = 1.0f / this.q;
                this.p = 1;
            }
        }
        if (this.p == -1 && z && z2) {
            this.q = 1.0f / this.q;
            this.p = 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02eb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02f8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:194:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01cc A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(androidx.constraintlayout.a.e r24, boolean r25, androidx.constraintlayout.a.h r26, androidx.constraintlayout.a.h r27, androidx.constraintlayout.a.a.f.a r28, boolean r29, androidx.constraintlayout.a.a.e r30, androidx.constraintlayout.a.a.e r31, int r32, int r33, int r34, int r35, float r36, boolean r37, boolean r38, int r39, int r40, int r41, float r42, boolean r43) {
        /*
            Method dump skipped, instruction units count: 806
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.f.a(androidx.constraintlayout.a.e, boolean, androidx.constraintlayout.a.h, androidx.constraintlayout.a.h, androidx.constraintlayout.a.a.f$a, boolean, androidx.constraintlayout.a.a.e, androidx.constraintlayout.a.a.e, int, int, int, int, float, boolean, boolean, int, int, int, float, boolean):void");
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.a.a.f$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1141a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f1142b;

        static {
            int[] iArr = new int[a.values().length];
            f1142b = iArr;
            try {
                iArr[a.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1142b[a.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1142b[a.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1142b[a.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[e.c.values().length];
            f1141a = iArr2;
            try {
                iArr2[e.c.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1141a[e.c.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1141a[e.c.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1141a[e.c.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1141a[e.c.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f1141a[e.c.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f1141a[e.c.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f1141a[e.c.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f1141a[e.c.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public void c(androidx.constraintlayout.a.e eVar) {
        int iB = eVar.b(this.s);
        int iB2 = eVar.b(this.t);
        int iB3 = eVar.b(this.u);
        int iB4 = eVar.b(this.v);
        int i = iB4 - iB2;
        if (iB3 - iB < 0 || i < 0 || iB == Integer.MIN_VALUE || iB == Integer.MAX_VALUE || iB2 == Integer.MIN_VALUE || iB2 == Integer.MAX_VALUE || iB3 == Integer.MIN_VALUE || iB3 == Integer.MAX_VALUE || iB4 == Integer.MIN_VALUE || iB4 == Integer.MAX_VALUE) {
            iB4 = 0;
            iB = 0;
            iB2 = 0;
            iB3 = 0;
        }
        a(iB, iB2, iB3, iB4);
    }
}
