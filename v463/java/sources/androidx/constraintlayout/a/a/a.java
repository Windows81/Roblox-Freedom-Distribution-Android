package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public static void a(g gVar) {
        if ((gVar.J() & 32) != 32) {
            b(gVar);
            return;
        }
        gVar.ax = true;
        gVar.as = false;
        gVar.at = false;
        gVar.au = false;
        ArrayList<f> arrayList = gVar.az;
        List<h> list = gVar.ar;
        boolean z = gVar.F() == f.a.WRAP_CONTENT;
        boolean z2 = gVar.G() == f.a.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (f fVar : arrayList) {
            fVar.r = null;
            fVar.Y = false;
            fVar.b();
        }
        for (f fVar2 : arrayList) {
            if (fVar2.r == null && !a(fVar2, list, z3)) {
                b(gVar);
                gVar.ax = false;
                return;
            }
        }
        int iMax = 0;
        int iMax2 = 0;
        for (h hVar : list) {
            iMax = Math.max(iMax, a(hVar, 0));
            iMax2 = Math.max(iMax2, a(hVar, 1));
        }
        if (z) {
            gVar.a(f.a.FIXED);
            gVar.j(iMax);
            gVar.as = true;
            gVar.at = true;
            gVar.av = iMax;
        }
        if (z2) {
            gVar.b(f.a.FIXED);
            gVar.k(iMax2);
            gVar.as = true;
            gVar.au = true;
            gVar.aw = iMax2;
        }
        a(list, 0, gVar.p());
        a(list, 1, gVar.r());
    }

    private static boolean a(f fVar, List<h> list, boolean z) {
        h hVar = new h(new ArrayList(), true);
        list.add(hVar);
        return a(fVar, hVar, list, z);
    }

    private static boolean a(f fVar, h hVar, List<h> list, boolean z) {
        if (fVar == null) {
            return true;
        }
        fVar.X = false;
        g gVar = (g) fVar.k();
        if (fVar.r == null) {
            fVar.W = true;
            hVar.f1148a.add(fVar);
            fVar.r = hVar;
            if (fVar.s.f1120c == null && fVar.u.f1120c == null && fVar.t.f1120c == null && fVar.v.f1120c == null && fVar.w.f1120c == null && fVar.z.f1120c == null) {
                a(gVar, fVar, hVar);
                if (z) {
                    return false;
                }
            }
            if (fVar.t.f1120c != null && fVar.v.f1120c != null) {
                gVar.G();
                f.a aVar = f.a.WRAP_CONTENT;
                if (z) {
                    a(gVar, fVar, hVar);
                    return false;
                }
                if (fVar.t.f1120c.f1118a != fVar.k() || fVar.v.f1120c.f1118a != fVar.k()) {
                    a(gVar, fVar, hVar);
                }
            }
            if (fVar.s.f1120c != null && fVar.u.f1120c != null) {
                gVar.F();
                f.a aVar2 = f.a.WRAP_CONTENT;
                if (z) {
                    a(gVar, fVar, hVar);
                    return false;
                }
                if (fVar.s.f1120c.f1118a != fVar.k() || fVar.u.f1120c.f1118a != fVar.k()) {
                    a(gVar, fVar, hVar);
                }
            }
            if (((fVar.F() == f.a.MATCH_CONSTRAINT) ^ (fVar.G() == f.a.MATCH_CONSTRAINT)) && fVar.G != 0.0f) {
                a(fVar);
            } else if (fVar.F() == f.a.MATCH_CONSTRAINT || fVar.G() == f.a.MATCH_CONSTRAINT) {
                a(gVar, fVar, hVar);
                if (z) {
                    return false;
                }
            }
            if (((fVar.s.f1120c == null && fVar.u.f1120c == null) || ((fVar.s.f1120c != null && fVar.s.f1120c.f1118a == fVar.D && fVar.u.f1120c == null) || ((fVar.u.f1120c != null && fVar.u.f1120c.f1118a == fVar.D && fVar.s.f1120c == null) || (fVar.s.f1120c != null && fVar.s.f1120c.f1118a == fVar.D && fVar.u.f1120c != null && fVar.u.f1120c.f1118a == fVar.D)))) && fVar.z.f1120c == null && !(fVar instanceof i) && !(fVar instanceof j)) {
                hVar.f.add(fVar);
            }
            if (((fVar.t.f1120c == null && fVar.v.f1120c == null) || ((fVar.t.f1120c != null && fVar.t.f1120c.f1118a == fVar.D && fVar.v.f1120c == null) || ((fVar.v.f1120c != null && fVar.v.f1120c.f1118a == fVar.D && fVar.t.f1120c == null) || (fVar.t.f1120c != null && fVar.t.f1120c.f1118a == fVar.D && fVar.v.f1120c != null && fVar.v.f1120c.f1118a == fVar.D)))) && fVar.z.f1120c == null && fVar.w.f1120c == null && !(fVar instanceof i) && !(fVar instanceof j)) {
                hVar.g.add(fVar);
            }
            if (fVar instanceof j) {
                a(gVar, fVar, hVar);
                if (z) {
                    return false;
                }
                j jVar = (j) fVar;
                for (int i = 0; i < jVar.aj; i++) {
                    if (!a(jVar.ai[i], hVar, list, z)) {
                        return false;
                    }
                }
            }
            int length = fVar.A.length;
            for (int i2 = 0; i2 < length; i2++) {
                e eVar = fVar.A[i2];
                if (eVar.f1120c != null && eVar.f1120c.f1118a != fVar.k()) {
                    if (eVar.f1119b == e.c.CENTER) {
                        a(gVar, fVar, hVar);
                        if (z) {
                            return false;
                        }
                    } else {
                        a(eVar);
                    }
                    if (!a(eVar.f1120c.f1118a, hVar, list, z)) {
                        return false;
                    }
                }
            }
            return true;
        }
        if (fVar.r != hVar) {
            hVar.f1148a.addAll(fVar.r.f1148a);
            hVar.f.addAll(fVar.r.f);
            hVar.g.addAll(fVar.r.g);
            if (!fVar.r.f1151d) {
                hVar.f1151d = false;
            }
            list.remove(fVar.r);
            Iterator<f> it = fVar.r.f1148a.iterator();
            while (it.hasNext()) {
                it.next().r = hVar;
            }
        }
        return true;
    }

    private static void a(g gVar, f fVar, h hVar) {
        hVar.f1151d = false;
        gVar.ax = false;
        fVar.W = false;
    }

    private static int a(h hVar, int i) {
        int i2 = i * 2;
        List<f> listA = hVar.a(i);
        int size = listA.size();
        int iMax = 0;
        for (int i3 = 0; i3 < size; i3++) {
            f fVar = listA.get(i3);
            int i4 = i2 + 1;
            iMax = Math.max(iMax, a(fVar, i, fVar.A[i4].f1120c == null || !(fVar.A[i2].f1120c == null || fVar.A[i4].f1120c == null), 0));
        }
        hVar.f1152e[i] = iMax;
        return iMax;
    }

    private static int a(f fVar, int i, boolean z, int i2) {
        int iR;
        int iA;
        int i3;
        int i4;
        int i5;
        int iP;
        int i6;
        int i7;
        f fVarK;
        int i8;
        int iMax = 0;
        if (!fVar.W) {
            return 0;
        }
        boolean z2 = fVar.w.f1120c != null && i == 1;
        if (z) {
            iR = fVar.A();
            iA = fVar.r() - fVar.A();
            i4 = i * 2;
            i3 = i4 + 1;
        } else {
            iR = fVar.r() - fVar.A();
            iA = fVar.A();
            i3 = i * 2;
            i4 = i3 + 1;
        }
        if (fVar.A[i3].f1120c == null || fVar.A[i4].f1120c != null) {
            i5 = 1;
        } else {
            i5 = -1;
            int i9 = i3;
            i3 = i4;
            i4 = i9;
        }
        int i10 = z2 ? i2 - iR : i2;
        int iE = (fVar.A[i4].e() * i5) + a(fVar, i);
        int i11 = i10 + iE;
        int iP2 = (i == 0 ? fVar.p() : fVar.r()) * i5;
        Iterator<o> it = fVar.A[i4].a().h.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, a(((m) it.next()).f1155a.f1118a, i, z, i11));
        }
        int iMax2 = 0;
        for (Iterator<o> it2 = fVar.A[i3].a().h.iterator(); it2.hasNext(); it2 = it2) {
            iMax2 = Math.max(iMax2, a(((m) it2.next()).f1155a.f1118a, i, z, iP2 + i11));
        }
        if (z2) {
            iMax -= iR;
            iP = iMax2 + iA;
        } else {
            iP = iMax2 + ((i == 0 ? fVar.p() : fVar.r()) * i5);
        }
        int i12 = 1;
        if (i == 1) {
            Iterator<o> it3 = fVar.w.a().h.iterator();
            int iMax3 = 0;
            while (it3.hasNext()) {
                Iterator<o> it4 = it3;
                m mVar = (m) it3.next();
                if (i5 == i12) {
                    iMax3 = Math.max(iMax3, a(mVar.f1155a.f1118a, i, z, iR + i11));
                    i8 = i3;
                } else {
                    i8 = i3;
                    iMax3 = Math.max(iMax3, a(mVar.f1155a.f1118a, i, z, (iA * i5) + i11));
                }
                it3 = it4;
                i3 = i8;
                i12 = 1;
            }
            i6 = i3;
            int i13 = iMax3;
            i7 = (fVar.w.a().h.size() <= 0 || z2) ? i13 : i5 == 1 ? i13 + iR : i13 - iA;
        } else {
            i6 = i3;
            i7 = 0;
        }
        int iMax4 = iE + Math.max(iMax, Math.max(iP, i7));
        int i14 = iP2 + i11;
        if (i5 == -1) {
            i14 = i11;
            i11 = i14;
        }
        if (z) {
            k.a(fVar, i, i11);
            fVar.a(i11, i14, i);
        } else {
            fVar.r.a(fVar, i);
            fVar.e(i11, i);
        }
        if (fVar.t(i) == f.a.MATCH_CONSTRAINT && fVar.G != 0.0f) {
            fVar.r.a(fVar, i);
        }
        if (fVar.A[i4].f1120c != null && fVar.A[i6].f1120c != null && fVar.A[i4].f1120c.f1118a == (fVarK = fVar.k()) && fVar.A[i6].f1120c.f1118a == fVarK) {
            fVar.r.a(fVar, i);
        }
        return iMax4;
    }

    private static void a(e eVar) {
        m mVarA = eVar.a();
        if (eVar.f1120c == null || eVar.f1120c.f1120c == eVar) {
            return;
        }
        eVar.f1120c.a().a(mVarA);
    }

    private static void b(g gVar) {
        gVar.ar.clear();
        gVar.ar.add(0, new h(gVar.az));
    }

    public static void a(List<h> list, int i, int i2) {
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            for (f fVar : list.get(i3).b(i)) {
                if (fVar.W) {
                    a(fVar, i, i2);
                }
            }
        }
    }

    private static void a(f fVar, int i, int i2) {
        int i3 = i * 2;
        e eVar = fVar.A[i3];
        e eVar2 = fVar.A[i3 + 1];
        if ((eVar.f1120c == null || eVar2.f1120c == null) ? false : true) {
            k.a(fVar, i, a(fVar, i) + eVar.e());
            return;
        }
        if (fVar.G != 0.0f && fVar.t(i) == f.a.MATCH_CONSTRAINT) {
            int iA = a(fVar);
            int i4 = (int) fVar.A[i3].a().f;
            eVar2.a().f1159e = eVar.a();
            eVar2.a().f = iA;
            eVar2.a().i = 1;
            fVar.a(i4, i4 + iA, i);
            return;
        }
        int iP = i2 - fVar.p(i);
        int iF = iP - fVar.f(i);
        fVar.a(iF, iP, i);
        k.a(fVar, i, iF);
    }

    private static int a(f fVar, int i) {
        int i2 = i * 2;
        e eVar = fVar.A[i2];
        e eVar2 = fVar.A[i2 + 1];
        if (eVar.f1120c == null || eVar.f1120c.f1118a != fVar.D || eVar2.f1120c == null || eVar2.f1120c.f1118a != fVar.D) {
            return 0;
        }
        return (int) ((((fVar.D.f(i) - eVar.e()) - eVar2.e()) - fVar.f(i)) * (i == 0 ? fVar.S : fVar.T));
    }

    private static int a(f fVar) {
        float fP;
        float fR;
        if (fVar.F() == f.a.MATCH_CONSTRAINT) {
            if (fVar.H == 0) {
                fR = fVar.r() * fVar.G;
            } else {
                fR = fVar.r() / fVar.G;
            }
            int i = (int) fR;
            fVar.j(i);
            return i;
        }
        if (fVar.G() != f.a.MATCH_CONSTRAINT) {
            return -1;
        }
        if (fVar.H == 1) {
            fP = fVar.p() * fVar.G;
        } else {
            fP = fVar.p() / fVar.G;
        }
        int i2 = (int) fP;
        fVar.k(i2);
        return i2;
    }
}
