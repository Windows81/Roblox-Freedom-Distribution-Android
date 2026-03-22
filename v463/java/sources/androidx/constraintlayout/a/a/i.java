package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i extends f {
    protected float ai = -1.0f;
    protected int aj = -1;
    protected int ak = -1;
    private e al = this.t;
    private int am = 0;
    private boolean an = false;
    private int ao = 0;
    private l ap = new l();
    private int aq = 8;

    @Override // androidx.constraintlayout.a.a.f
    public boolean a() {
        return true;
    }

    public i() {
        this.B.clear();
        this.B.add(this.al);
        int length = this.A.length;
        for (int i = 0; i < length; i++) {
            this.A[i] = this.al;
        }
    }

    public void a(int i) {
        if (this.am == i) {
            return;
        }
        this.am = i;
        this.B.clear();
        if (this.am == 1) {
            this.al = this.s;
        } else {
            this.al = this.t;
        }
        this.B.add(this.al);
        int length = this.A.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.A[i2] = this.al;
        }
    }

    public int J() {
        return this.am;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.a.a.i$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1153a;

        static {
            int[] iArr = new int[e.c.values().length];
            f1153a = iArr;
            try {
                iArr[e.c.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1153a[e.c.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1153a[e.c.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1153a[e.c.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1153a[e.c.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1153a[e.c.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1153a[e.c.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1153a[e.c.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1153a[e.c.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public e a(e.c cVar) {
        switch (AnonymousClass1.f1153a[cVar.ordinal()]) {
            case 1:
            case 2:
                if (this.am == 1) {
                    return this.al;
                }
                break;
            case 3:
            case 4:
                if (this.am == 0) {
                    return this.al;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(cVar.name());
    }

    @Override // androidx.constraintlayout.a.a.f
    public ArrayList<e> C() {
        return this.B;
    }

    public void e(float f) {
        if (f > -1.0f) {
            this.ai = f;
            this.aj = -1;
            this.ak = -1;
        }
    }

    public void u(int i) {
        if (i > -1) {
            this.ai = -1.0f;
            this.aj = i;
            this.ak = -1;
        }
    }

    public void v(int i) {
        if (i > -1) {
            this.ai = -1.0f;
            this.aj = -1;
            this.ak = i;
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void b(int i) {
        f fVarK = k();
        if (fVarK == null) {
            return;
        }
        if (J() == 1) {
            this.t.a().a(1, fVarK.t.a(), 0);
            this.v.a().a(1, fVarK.t.a(), 0);
            if (this.aj != -1) {
                this.s.a().a(1, fVarK.s.a(), this.aj);
                this.u.a().a(1, fVarK.s.a(), this.aj);
                return;
            } else if (this.ak != -1) {
                this.s.a().a(1, fVarK.u.a(), -this.ak);
                this.u.a().a(1, fVarK.u.a(), -this.ak);
                return;
            } else {
                if (this.ai == -1.0f || fVarK.F() != f.a.FIXED) {
                    return;
                }
                int i2 = (int) (fVarK.E * this.ai);
                this.s.a().a(1, fVarK.s.a(), i2);
                this.u.a().a(1, fVarK.s.a(), i2);
                return;
            }
        }
        this.s.a().a(1, fVarK.s.a(), 0);
        this.u.a().a(1, fVarK.s.a(), 0);
        if (this.aj != -1) {
            this.t.a().a(1, fVarK.t.a(), this.aj);
            this.v.a().a(1, fVarK.t.a(), this.aj);
        } else if (this.ak != -1) {
            this.t.a().a(1, fVarK.v.a(), -this.ak);
            this.v.a().a(1, fVarK.v.a(), -this.ak);
        } else {
            if (this.ai == -1.0f || fVarK.G() != f.a.FIXED) {
                return;
            }
            int i3 = (int) (fVarK.F * this.ai);
            this.t.a().a(1, fVarK.t.a(), i3);
            this.v.a().a(1, fVarK.t.a(), i3);
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void a(androidx.constraintlayout.a.e eVar) {
        g gVar = (g) k();
        if (gVar == null) {
            return;
        }
        e eVarA = gVar.a(e.c.LEFT);
        e eVarA2 = gVar.a(e.c.RIGHT);
        boolean z = this.D != null && this.D.C[0] == f.a.WRAP_CONTENT;
        if (this.am == 0) {
            eVarA = gVar.a(e.c.TOP);
            eVarA2 = gVar.a(e.c.BOTTOM);
            z = this.D != null && this.D.C[1] == f.a.WRAP_CONTENT;
        }
        if (this.aj != -1) {
            androidx.constraintlayout.a.h hVarA = eVar.a(this.al);
            eVar.c(hVarA, eVar.a(eVarA), this.aj, 6);
            if (z) {
                eVar.a(eVar.a(eVarA2), hVarA, 0, 5);
                return;
            }
            return;
        }
        if (this.ak == -1) {
            if (this.ai != -1.0f) {
                eVar.a(androidx.constraintlayout.a.e.a(eVar, eVar.a(this.al), eVar.a(eVarA), eVar.a(eVarA2), this.ai, this.an));
                return;
            }
            return;
        }
        androidx.constraintlayout.a.h hVarA2 = eVar.a(this.al);
        androidx.constraintlayout.a.h hVarA3 = eVar.a(eVarA2);
        eVar.c(hVarA2, hVarA3, -this.ak, 6);
        if (z) {
            eVar.a(hVarA2, eVar.a(eVarA), 0, 5);
            eVar.a(hVarA3, hVarA2, 0, 5);
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void c(androidx.constraintlayout.a.e eVar) {
        if (k() == null) {
            return;
        }
        int iB = eVar.b(this.al);
        if (this.am == 1) {
            h(iB);
            i(0);
            k(k().r());
            j(0);
            return;
        }
        h(0);
        i(iB);
        j(k().p());
        k(0);
    }
}
