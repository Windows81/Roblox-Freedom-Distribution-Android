package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class m extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e f1155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f1156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    m f1157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f1158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    m f1159e;
    float f;
    private m j;
    private float k;
    int g = 0;
    private n l = null;
    private int m = 1;
    private n n = null;
    private int o = 1;

    String a(int i) {
        return i == 1 ? "DIRECT" : i == 2 ? "CENTER" : i == 3 ? "MATCH" : i == 4 ? "CHAIN" : i == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public m(e eVar) {
        this.f1155a = eVar;
    }

    public String toString() {
        if (this.i == 1) {
            if (this.f1159e == this) {
                return "[" + this.f1155a + ", RESOLVED: " + this.f + "]  type: " + a(this.g);
            }
            return "[" + this.f1155a + ", RESOLVED: " + this.f1159e + ":" + this.f + "] type: " + a(this.g);
        }
        return "{ " + this.f1155a + " UNRESOLVED} type: " + a(this.g);
    }

    public void a(m mVar, float f) {
        if (this.i == 0 || !(this.f1159e == mVar || this.f == f)) {
            this.f1159e = mVar;
            this.f = f;
            if (this.i == 1) {
                e();
            }
            f();
        }
    }

    @Override // androidx.constraintlayout.a.a.o
    public void a() {
        m mVar;
        m mVar2;
        m mVar3;
        m mVar4;
        m mVar5;
        m mVar6;
        float f;
        float f2;
        float fP;
        float f3;
        m mVar7;
        boolean z = true;
        if (this.i == 1 || this.g == 4) {
            return;
        }
        n nVar = this.l;
        if (nVar != null) {
            if (nVar.i != 1) {
                return;
            } else {
                this.f1158d = this.m * this.l.f1160a;
            }
        }
        n nVar2 = this.n;
        if (nVar2 != null) {
            if (nVar2.i != 1) {
                return;
            } else {
                this.k = this.o * this.n.f1160a;
            }
        }
        if (this.g == 1 && ((mVar7 = this.f1157c) == null || mVar7.i == 1)) {
            m mVar8 = this.f1157c;
            if (mVar8 == null) {
                this.f1159e = this;
                this.f = this.f1158d;
            } else {
                this.f1159e = mVar8.f1159e;
                this.f = mVar8.f + this.f1158d;
            }
            f();
            return;
        }
        if (this.g == 2 && (mVar4 = this.f1157c) != null && mVar4.i == 1 && (mVar5 = this.j) != null && (mVar6 = mVar5.f1157c) != null && mVar6.i == 1) {
            if (androidx.constraintlayout.a.e.a() != null) {
                androidx.constraintlayout.a.e.a().w++;
            }
            this.f1159e = this.f1157c.f1159e;
            m mVar9 = this.j;
            mVar9.f1159e = mVar9.f1157c.f1159e;
            int i = 0;
            if (this.f1155a.f1119b != e.c.RIGHT && this.f1155a.f1119b != e.c.BOTTOM) {
                z = false;
            }
            if (z) {
                f = this.f1157c.f;
                f2 = this.j.f1157c.f;
            } else {
                f = this.j.f1157c.f;
                f2 = this.f1157c.f;
            }
            float f4 = f - f2;
            if (this.f1155a.f1119b == e.c.LEFT || this.f1155a.f1119b == e.c.RIGHT) {
                fP = f4 - this.f1155a.f1118a.p();
                f3 = this.f1155a.f1118a.S;
            } else {
                fP = f4 - this.f1155a.f1118a.r();
                f3 = this.f1155a.f1118a.T;
            }
            int iE = this.f1155a.e();
            int iE2 = this.j.f1155a.e();
            if (this.f1155a.g() == this.j.f1155a.g()) {
                f3 = 0.5f;
                iE2 = 0;
            } else {
                i = iE;
            }
            float f5 = i;
            float f6 = iE2;
            float f7 = (fP - f5) - f6;
            if (z) {
                m mVar10 = this.j;
                mVar10.f = mVar10.f1157c.f + f6 + (f7 * f3);
                this.f = (this.f1157c.f - f5) - (f7 * (1.0f - f3));
            } else {
                this.f = this.f1157c.f + f5 + (f7 * f3);
                m mVar11 = this.j;
                mVar11.f = (mVar11.f1157c.f - f6) - (f7 * (1.0f - f3));
            }
            f();
            this.j.f();
            return;
        }
        if (this.g == 3 && (mVar = this.f1157c) != null && mVar.i == 1 && (mVar2 = this.j) != null && (mVar3 = mVar2.f1157c) != null && mVar3.i == 1) {
            if (androidx.constraintlayout.a.e.a() != null) {
                androidx.constraintlayout.a.e.a().x++;
            }
            m mVar12 = this.f1157c;
            this.f1159e = mVar12.f1159e;
            m mVar13 = this.j;
            m mVar14 = mVar13.f1157c;
            mVar13.f1159e = mVar14.f1159e;
            this.f = mVar12.f + this.f1158d;
            mVar13.f = mVar14.f + mVar13.f1158d;
            f();
            this.j.f();
            return;
        }
        if (this.g == 5) {
            this.f1155a.f1118a.c();
        }
    }

    public void b(int i) {
        this.g = i;
    }

    @Override // androidx.constraintlayout.a.a.o
    public void b() {
        super.b();
        this.f1157c = null;
        this.f1158d = 0.0f;
        this.l = null;
        this.m = 1;
        this.n = null;
        this.o = 1;
        this.f1159e = null;
        this.f = 0.0f;
        this.f1156b = 0.0f;
        this.j = null;
        this.k = 0.0f;
        this.g = 0;
    }

    public void c() {
        e eVarG = this.f1155a.g();
        if (eVarG == null) {
            return;
        }
        if (eVarG.g() == this.f1155a) {
            this.g = 4;
            eVarG.a().g = 4;
        }
        int iE = this.f1155a.e();
        if (this.f1155a.f1119b == e.c.RIGHT || this.f1155a.f1119b == e.c.BOTTOM) {
            iE = -iE;
        }
        a(eVarG.a(), iE);
    }

    public void a(int i, m mVar, int i2) {
        this.g = i;
        this.f1157c = mVar;
        this.f1158d = i2;
        mVar.a(this);
    }

    public void a(m mVar, int i) {
        this.f1157c = mVar;
        this.f1158d = i;
        mVar.a(this);
    }

    public void a(m mVar, int i, n nVar) {
        this.f1157c = mVar;
        mVar.a(this);
        this.l = nVar;
        this.m = i;
        nVar.a(this);
    }

    public void b(m mVar, float f) {
        this.j = mVar;
        this.k = f;
    }

    public void b(m mVar, int i, n nVar) {
        this.j = mVar;
        this.n = nVar;
        this.o = i;
    }

    void a(androidx.constraintlayout.a.e eVar) {
        androidx.constraintlayout.a.h hVarB = this.f1155a.b();
        m mVar = this.f1159e;
        if (mVar == null) {
            eVar.a(hVarB, (int) (this.f + 0.5f));
        } else {
            eVar.c(hVarB, eVar.a(mVar.f1155a), (int) (this.f + 0.5f), 6);
        }
    }

    public float d() {
        return this.f;
    }
}
