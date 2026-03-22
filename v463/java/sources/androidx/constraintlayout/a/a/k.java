package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean[] f1154a = new boolean[3];

    static void a(g gVar, androidx.constraintlayout.a.e eVar, f fVar) {
        if (gVar.C[0] != f.a.WRAP_CONTENT && fVar.C[0] == f.a.MATCH_PARENT) {
            int i = fVar.s.f1121d;
            int iP = gVar.p() - fVar.u.f1121d;
            fVar.s.f = eVar.a(fVar.s);
            fVar.u.f = eVar.a(fVar.u);
            eVar.a(fVar.s.f, i);
            eVar.a(fVar.u.f, iP);
            fVar.f1136a = 2;
            fVar.c(i, iP);
        }
        if (gVar.C[1] == f.a.WRAP_CONTENT || fVar.C[1] != f.a.MATCH_PARENT) {
            return;
        }
        int i2 = fVar.t.f1121d;
        int iR = gVar.r() - fVar.v.f1121d;
        fVar.t.f = eVar.a(fVar.t);
        fVar.v.f = eVar.a(fVar.v);
        eVar.a(fVar.t.f, i2);
        eVar.a(fVar.v.f, iR);
        if (fVar.O > 0 || fVar.l() == 8) {
            fVar.w.f = eVar.a(fVar.w);
            eVar.a(fVar.w.f, fVar.O + i2);
        }
        fVar.f1137b = 2;
        fVar.d(i2, iR);
    }

    private static boolean a(f fVar, int i) {
        if (fVar.C[i] != f.a.MATCH_CONSTRAINT) {
            return false;
        }
        if (fVar.G != 0.0f) {
            if (fVar.C[i != 0 ? (char) 0 : (char) 1] == f.a.MATCH_CONSTRAINT) {
            }
            return false;
        }
        if (i == 0) {
            if (fVar.f1140e != 0 || fVar.h != 0 || fVar.i != 0) {
                return false;
            }
        } else if (fVar.f != 0 || fVar.k != 0 || fVar.l != 0) {
            return false;
        }
        return true;
    }

    static void a(int i, f fVar) {
        fVar.g();
        m mVarA = fVar.s.a();
        m mVarA2 = fVar.t.a();
        m mVarA3 = fVar.u.a();
        m mVarA4 = fVar.v.a();
        boolean z = (i & 8) == 8;
        boolean z2 = fVar.C[0] == f.a.MATCH_CONSTRAINT && a(fVar, 0);
        if (mVarA.g != 4 && mVarA3.g != 4) {
            if (fVar.C[0] == f.a.FIXED || (z2 && fVar.l() == 8)) {
                if (fVar.s.f1120c == null && fVar.u.f1120c == null) {
                    mVarA.b(1);
                    mVarA3.b(1);
                    if (z) {
                        mVarA3.a(mVarA, 1, fVar.i());
                    } else {
                        mVarA3.a(mVarA, fVar.p());
                    }
                } else if (fVar.s.f1120c != null && fVar.u.f1120c == null) {
                    mVarA.b(1);
                    mVarA3.b(1);
                    if (z) {
                        mVarA3.a(mVarA, 1, fVar.i());
                    } else {
                        mVarA3.a(mVarA, fVar.p());
                    }
                } else if (fVar.s.f1120c == null && fVar.u.f1120c != null) {
                    mVarA.b(1);
                    mVarA3.b(1);
                    mVarA.a(mVarA3, -fVar.p());
                    if (z) {
                        mVarA.a(mVarA3, -1, fVar.i());
                    } else {
                        mVarA.a(mVarA3, -fVar.p());
                    }
                } else if (fVar.s.f1120c != null && fVar.u.f1120c != null) {
                    mVarA.b(2);
                    mVarA3.b(2);
                    if (z) {
                        fVar.i().a(mVarA);
                        fVar.i().a(mVarA3);
                        mVarA.b(mVarA3, -1, fVar.i());
                        mVarA3.b(mVarA, 1, fVar.i());
                    } else {
                        mVarA.b(mVarA3, -fVar.p());
                        mVarA3.b(mVarA, fVar.p());
                    }
                }
            } else if (z2) {
                int iP = fVar.p();
                mVarA.b(1);
                mVarA3.b(1);
                if (fVar.s.f1120c == null && fVar.u.f1120c == null) {
                    if (z) {
                        mVarA3.a(mVarA, 1, fVar.i());
                    } else {
                        mVarA3.a(mVarA, iP);
                    }
                } else if (fVar.s.f1120c == null || fVar.u.f1120c != null) {
                    if (fVar.s.f1120c != null || fVar.u.f1120c == null) {
                        if (fVar.s.f1120c != null && fVar.u.f1120c != null) {
                            if (z) {
                                fVar.i().a(mVarA);
                                fVar.i().a(mVarA3);
                            }
                            if (fVar.G == 0.0f) {
                                mVarA.b(3);
                                mVarA3.b(3);
                                mVarA.b(mVarA3, 0.0f);
                                mVarA3.b(mVarA, 0.0f);
                            } else {
                                mVarA.b(2);
                                mVarA3.b(2);
                                mVarA.b(mVarA3, -iP);
                                mVarA3.b(mVarA, iP);
                                fVar.j(iP);
                            }
                        }
                    } else if (z) {
                        mVarA.a(mVarA3, -1, fVar.i());
                    } else {
                        mVarA.a(mVarA3, -iP);
                    }
                } else if (z) {
                    mVarA3.a(mVarA, 1, fVar.i());
                } else {
                    mVarA3.a(mVarA, iP);
                }
            }
        }
        boolean z3 = fVar.C[1] == f.a.MATCH_CONSTRAINT && a(fVar, 1);
        if (mVarA2.g == 4 || mVarA4.g == 4) {
            return;
        }
        if (fVar.C[1] != f.a.FIXED && (!z3 || fVar.l() != 8)) {
            if (z3) {
                int iR = fVar.r();
                mVarA2.b(1);
                mVarA4.b(1);
                if (fVar.t.f1120c == null && fVar.v.f1120c == null) {
                    if (z) {
                        mVarA4.a(mVarA2, 1, fVar.j());
                        return;
                    } else {
                        mVarA4.a(mVarA2, iR);
                        return;
                    }
                }
                if (fVar.t.f1120c != null && fVar.v.f1120c == null) {
                    if (z) {
                        mVarA4.a(mVarA2, 1, fVar.j());
                        return;
                    } else {
                        mVarA4.a(mVarA2, iR);
                        return;
                    }
                }
                if (fVar.t.f1120c == null && fVar.v.f1120c != null) {
                    if (z) {
                        mVarA2.a(mVarA4, -1, fVar.j());
                        return;
                    } else {
                        mVarA2.a(mVarA4, -iR);
                        return;
                    }
                }
                if (fVar.t.f1120c == null || fVar.v.f1120c == null) {
                    return;
                }
                if (z) {
                    fVar.j().a(mVarA2);
                    fVar.i().a(mVarA4);
                }
                if (fVar.G == 0.0f) {
                    mVarA2.b(3);
                    mVarA4.b(3);
                    mVarA2.b(mVarA4, 0.0f);
                    mVarA4.b(mVarA2, 0.0f);
                    return;
                }
                mVarA2.b(2);
                mVarA4.b(2);
                mVarA2.b(mVarA4, -iR);
                mVarA4.b(mVarA2, iR);
                fVar.k(iR);
                if (fVar.O > 0) {
                    fVar.w.a().a(1, mVarA2, fVar.O);
                    return;
                }
                return;
            }
            return;
        }
        if (fVar.t.f1120c == null && fVar.v.f1120c == null) {
            mVarA2.b(1);
            mVarA4.b(1);
            if (z) {
                mVarA4.a(mVarA2, 1, fVar.j());
            } else {
                mVarA4.a(mVarA2, fVar.r());
            }
            if (fVar.w.f1120c != null) {
                fVar.w.a().b(1);
                mVarA2.a(1, fVar.w.a(), -fVar.O);
                return;
            }
            return;
        }
        if (fVar.t.f1120c != null && fVar.v.f1120c == null) {
            mVarA2.b(1);
            mVarA4.b(1);
            if (z) {
                mVarA4.a(mVarA2, 1, fVar.j());
            } else {
                mVarA4.a(mVarA2, fVar.r());
            }
            if (fVar.O > 0) {
                fVar.w.a().a(1, mVarA2, fVar.O);
                return;
            }
            return;
        }
        if (fVar.t.f1120c == null && fVar.v.f1120c != null) {
            mVarA2.b(1);
            mVarA4.b(1);
            if (z) {
                mVarA2.a(mVarA4, -1, fVar.j());
            } else {
                mVarA2.a(mVarA4, -fVar.r());
            }
            if (fVar.O > 0) {
                fVar.w.a().a(1, mVarA2, fVar.O);
                return;
            }
            return;
        }
        if (fVar.t.f1120c == null || fVar.v.f1120c == null) {
            return;
        }
        mVarA2.b(2);
        mVarA4.b(2);
        if (z) {
            mVarA2.b(mVarA4, -1, fVar.j());
            mVarA4.b(mVarA2, 1, fVar.j());
            fVar.j().a(mVarA2);
            fVar.i().a(mVarA4);
        } else {
            mVarA2.b(mVarA4, -fVar.r());
            mVarA4.b(mVarA2, fVar.r());
        }
        if (fVar.O > 0) {
            fVar.w.a().a(1, mVarA2, fVar.O);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034 A[PHI: r11 r12
  0x0034: PHI (r11v21 boolean) = (r11v2 boolean), (r11v24 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]
  0x0034: PHI (r12v10 boolean) = (r12v2 boolean), (r12v13 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[PHI: r11 r12
  0x0036: PHI (r11v4 boolean) = (r11v2 boolean), (r11v24 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]
  0x0036: PHI (r12v4 boolean) = (r12v2 boolean), (r12v13 boolean) binds: [B:25:0x0048, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0329 A[PHI: r7
  0x0329: PHI (r7v26 float) = (r7v22 float), (r7v20 float) binds: [B:199:0x0381, B:189:0x0326] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean a(androidx.constraintlayout.a.a.g r23, androidx.constraintlayout.a.e r24, int r25, int r26, androidx.constraintlayout.a.a.d r27) {
        /*
            Method dump skipped, instruction units count: 916
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.k.a(androidx.constraintlayout.a.a.g, androidx.constraintlayout.a.e, int, int, androidx.constraintlayout.a.a.d):boolean");
    }

    static void a(f fVar, int i, int i2) {
        int i3 = i * 2;
        int i4 = i3 + 1;
        fVar.A[i3].a().f1159e = fVar.k().s.a();
        fVar.A[i3].a().f = i2;
        fVar.A[i3].a().i = 1;
        fVar.A[i4].a().f1159e = fVar.A[i3].a();
        fVar.A[i4].a().f = fVar.f(i);
        fVar.A[i4].a().i = 1;
    }
}
