package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends q {
    private p aB;
    int aj;
    int ak;
    int al;
    int am;
    private boolean aA = false;
    protected androidx.constraintlayout.a.e ai = new androidx.constraintlayout.a.e();
    int an = 0;
    int ao = 0;
    d[] ap = new d[4];
    d[] aq = new d[4];
    public List<h> ar = new ArrayList();
    public boolean as = false;
    public boolean at = false;
    public boolean au = false;
    public int av = 0;
    public int aw = 0;
    private int aC = 7;
    public boolean ax = false;
    private boolean aD = false;
    private boolean aE = false;
    int ay = 0;

    public boolean S() {
        return false;
    }

    public void a(int i) {
        this.aC = i;
    }

    public int J() {
        return this.aC;
    }

    public boolean u(int i) {
        return (this.aC & i) == i;
    }

    @Override // androidx.constraintlayout.a.a.q, androidx.constraintlayout.a.a.f
    public void f() {
        this.ai.b();
        this.aj = 0;
        this.al = 0;
        this.ak = 0;
        this.am = 0;
        this.ar.clear();
        this.ax = false;
        super.f();
    }

    public boolean K() {
        return this.aD;
    }

    public boolean L() {
        return this.aE;
    }

    public boolean d(androidx.constraintlayout.a.e eVar) {
        a(eVar);
        int size = this.az.size();
        for (int i = 0; i < size; i++) {
            f fVar = this.az.get(i);
            if (fVar instanceof g) {
                f.a aVar = fVar.C[0];
                f.a aVar2 = fVar.C[1];
                if (aVar == f.a.WRAP_CONTENT) {
                    fVar.a(f.a.FIXED);
                }
                if (aVar2 == f.a.WRAP_CONTENT) {
                    fVar.b(f.a.FIXED);
                }
                fVar.a(eVar);
                if (aVar == f.a.WRAP_CONTENT) {
                    fVar.a(aVar);
                }
                if (aVar2 == f.a.WRAP_CONTENT) {
                    fVar.b(aVar2);
                }
            } else {
                k.a(this, eVar, fVar);
                fVar.a(eVar);
            }
        }
        if (this.an > 0) {
            c.a(this, eVar, 0);
        }
        if (this.ao > 0) {
            c.a(this, eVar, 1);
        }
        return true;
    }

    public void a(androidx.constraintlayout.a.e eVar, boolean[] zArr) {
        zArr[2] = false;
        c(eVar);
        int size = this.az.size();
        for (int i = 0; i < size; i++) {
            f fVar = this.az.get(i);
            fVar.c(eVar);
            if (fVar.C[0] == f.a.MATCH_CONSTRAINT && fVar.p() < fVar.q()) {
                zArr[2] = true;
            }
            if (fVar.C[1] == f.a.MATCH_CONSTRAINT && fVar.r() < fVar.s()) {
                zArr[2] = true;
            }
        }
    }

    public void a(boolean z) {
        this.aA = z;
    }

    public boolean M() {
        return this.aA;
    }

    @Override // androidx.constraintlayout.a.a.f
    public void b(int i) {
        super.b(i);
        int size = this.az.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.az.get(i2).b(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02d1 A[PHI: r0 r9
  0x02d1: PHI (r0v36 boolean) = (r0v35 boolean), (r0v38 boolean), (r0v38 boolean), (r0v38 boolean) binds: [B:113:0x0292, B:121:0x02b9, B:122:0x02bb, B:124:0x02c1] A[DONT_GENERATE, DONT_INLINE]
  0x02d1: PHI (r9v11 boolean) = (r9v10 boolean), (r9v12 boolean), (r9v12 boolean), (r9v12 boolean) binds: [B:113:0x0292, B:121:0x02b9, B:122:0x02bb, B:124:0x02c1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0191  */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v27 */
    @Override // androidx.constraintlayout.a.a.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void N() {
        /*
            Method dump skipped, instruction units count: 845
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.g.N():void");
    }

    public void O() {
        Q();
        b(this.aC);
    }

    public void P() {
        m mVarA = a(e.c.LEFT).a();
        m mVarA2 = a(e.c.TOP).a();
        mVarA.a((m) null, 0.0f);
        mVarA2.a((m) null, 0.0f);
    }

    public void f(int i, int i2) {
        if (this.C[0] != f.a.WRAP_CONTENT && this.f1138c != null) {
            this.f1138c.a(i);
        }
        if (this.C[1] == f.a.WRAP_CONTENT || this.f1139d == null) {
            return;
        }
        this.f1139d.a(i2);
    }

    public void Q() {
        int size = this.az.size();
        b();
        for (int i = 0; i < size; i++) {
            this.az.get(i).b();
        }
    }

    public void R() {
        if (!u(8)) {
            b(this.aC);
        }
        P();
    }

    private void V() {
        this.an = 0;
        this.ao = 0;
    }

    void a(f fVar, int i) {
        if (i == 0) {
            d(fVar);
        } else if (i == 1) {
            e(fVar);
        }
    }

    private void d(f fVar) {
        int i = this.an + 1;
        d[] dVarArr = this.aq;
        if (i >= dVarArr.length) {
            this.aq = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.aq[this.an] = new d(fVar, 0, M());
        this.an++;
    }

    private void e(f fVar) {
        int i = this.ao + 1;
        d[] dVarArr = this.ap;
        if (i >= dVarArr.length) {
            this.ap = (d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.ap[this.ao] = new d(fVar, 1, M());
        this.ao++;
    }
}
