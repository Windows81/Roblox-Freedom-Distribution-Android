package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends j {
    private int ak = 0;
    private ArrayList<m> al = new ArrayList<>(4);
    private boolean am = true;

    @Override // androidx.constraintlayout.a.a.f
    public boolean a() {
        return true;
    }

    public void a(int i) {
        this.ak = i;
    }

    public void a(boolean z) {
        this.am = z;
    }

    @Override // androidx.constraintlayout.a.a.f
    public void b() {
        super.b();
        this.al.clear();
    }

    @Override // androidx.constraintlayout.a.a.f
    public void b(int i) {
        m mVarA;
        m mVarA2;
        if (this.D != null && ((g) this.D).u(2)) {
            int i2 = this.ak;
            if (i2 == 0) {
                mVarA = this.s.a();
            } else if (i2 == 1) {
                mVarA = this.u.a();
            } else if (i2 == 2) {
                mVarA = this.t.a();
            } else if (i2 != 3) {
                return;
            } else {
                mVarA = this.v.a();
            }
            mVarA.b(5);
            int i3 = this.ak;
            if (i3 == 0 || i3 == 1) {
                this.t.a().a((m) null, 0.0f);
                this.v.a().a((m) null, 0.0f);
            } else {
                this.s.a().a((m) null, 0.0f);
                this.u.a().a((m) null, 0.0f);
            }
            this.al.clear();
            for (int i4 = 0; i4 < this.aj; i4++) {
                f fVar = this.ai[i4];
                if (this.am || fVar.a()) {
                    int i5 = this.ak;
                    if (i5 == 0) {
                        mVarA2 = fVar.s.a();
                    } else if (i5 == 1) {
                        mVarA2 = fVar.u.a();
                    } else if (i5 == 2) {
                        mVarA2 = fVar.t.a();
                    } else {
                        mVarA2 = i5 != 3 ? null : fVar.v.a();
                    }
                    if (mVarA2 != null) {
                        this.al.add(mVarA2);
                        mVarA2.a(mVarA);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void c() {
        m mVarA;
        int i = this.ak;
        float f = Float.MAX_VALUE;
        if (i != 0) {
            if (i == 1) {
                mVarA = this.u.a();
            } else if (i == 2) {
                mVarA = this.t.a();
            } else if (i != 3) {
                return;
            } else {
                mVarA = this.v.a();
            }
            f = 0.0f;
        } else {
            mVarA = this.s.a();
        }
        int size = this.al.size();
        m mVar = null;
        for (int i2 = 0; i2 < size; i2++) {
            m mVar2 = this.al.get(i2);
            if (mVar2.i != 1) {
                return;
            }
            int i3 = this.ak;
            if (i3 == 0 || i3 == 2) {
                if (mVar2.f < f) {
                    f = mVar2.f;
                    mVar = mVar2.f1159e;
                }
            } else if (mVar2.f > f) {
                f = mVar2.f;
                mVar = mVar2.f1159e;
            }
        }
        if (androidx.constraintlayout.a.e.a() != null) {
            androidx.constraintlayout.a.e.a().z++;
        }
        mVarA.f1159e = mVar;
        mVarA.f = f;
        mVarA.f();
        int i4 = this.ak;
        if (i4 == 0) {
            this.u.a().a(mVar, f);
            return;
        }
        if (i4 == 1) {
            this.s.a().a(mVar, f);
        } else if (i4 == 2) {
            this.v.a().a(mVar, f);
        } else {
            if (i4 != 3) {
                return;
            }
            this.t.a().a(mVar, f);
        }
    }

    @Override // androidx.constraintlayout.a.a.f
    public void a(androidx.constraintlayout.a.e eVar) {
        boolean z;
        int i;
        int i2;
        this.A[0] = this.s;
        this.A[2] = this.t;
        this.A[1] = this.u;
        this.A[3] = this.v;
        for (int i3 = 0; i3 < this.A.length; i3++) {
            this.A[i3].f = eVar.a(this.A[i3]);
        }
        int i4 = this.ak;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        e eVar2 = this.A[this.ak];
        for (int i5 = 0; i5 < this.aj; i5++) {
            f fVar = this.ai[i5];
            if ((this.am || fVar.a()) && ((((i = this.ak) == 0 || i == 1) && fVar.F() == f.a.MATCH_CONSTRAINT) || (((i2 = this.ak) == 2 || i2 == 3) && fVar.G() == f.a.MATCH_CONSTRAINT))) {
                z = true;
                break;
            }
        }
        z = false;
        int i6 = this.ak;
        if (i6 == 0 || i6 == 1 ? k().F() == f.a.WRAP_CONTENT : k().G() == f.a.WRAP_CONTENT) {
            z = false;
        }
        for (int i7 = 0; i7 < this.aj; i7++) {
            f fVar2 = this.ai[i7];
            if (this.am || fVar2.a()) {
                androidx.constraintlayout.a.h hVarA = eVar.a(fVar2.A[this.ak]);
                fVar2.A[this.ak].f = hVarA;
                int i8 = this.ak;
                if (i8 == 0 || i8 == 2) {
                    eVar.b(eVar2.f, hVarA, z);
                } else {
                    eVar.a(eVar2.f, hVarA, z);
                }
            }
        }
        int i9 = this.ak;
        if (i9 == 0) {
            eVar.c(this.u.f, this.s.f, 0, 6);
            if (z) {
                return;
            }
            eVar.c(this.s.f, this.D.u.f, 0, 5);
            return;
        }
        if (i9 == 1) {
            eVar.c(this.s.f, this.u.f, 0, 6);
            if (z) {
                return;
            }
            eVar.c(this.s.f, this.D.s.f, 0, 5);
            return;
        }
        if (i9 == 2) {
            eVar.c(this.v.f, this.t.f, 0, 6);
            if (z) {
                return;
            }
            eVar.c(this.t.f, this.D.v.f, 0, 5);
            return;
        }
        if (i9 == 3) {
            eVar.c(this.t.f, this.v.f, 0, 6);
            if (z) {
                return;
            }
            eVar.c(this.t.f, this.D.t.f, 0, 5);
        }
    }
}
