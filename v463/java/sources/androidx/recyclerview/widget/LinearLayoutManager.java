package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LinearLayoutManager extends RecyclerView.i implements RecyclerView.s.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f2172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2174c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2175d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2176e;
    private boolean f;
    private final b g;
    private int h;
    int i;
    h j;
    boolean k;
    int l;
    int m;
    SavedState n;
    final a o;

    void a(RecyclerView.p pVar, RecyclerView.t tVar, a aVar, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean c() {
        return true;
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.i = 1;
        this.f2174c = false;
        this.k = false;
        this.f2175d = false;
        this.f2176e = true;
        this.l = -1;
        this.m = Integer.MIN_VALUE;
        this.n = null;
        this.o = new a();
        this.g = new b();
        this.h = 2;
        b(i);
        b(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = 1;
        this.f2174c = false;
        this.k = false;
        this.f2175d = false;
        this.f2176e = true;
        this.l = -1;
        this.m = Integer.MIN_VALUE;
        this.n = null;
        this.o = new a();
        this.g = new b();
        this.h = 2;
        RecyclerView.i.b bVarA = a(context, attributeSet, i, i2);
        b(bVarA.f2224a);
        b(bVarA.f2226c);
        a(bVarA.f2227d);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a() {
        return new RecyclerView.j(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.p pVar) {
        super.a(recyclerView, pVar);
        if (this.f) {
            c(pVar);
            pVar.a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (v() > 0) {
            accessibilityEvent.setFromIndex(m());
            accessibilityEvent.setToIndex(n());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public Parcelable d() {
        SavedState savedState = this.n;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (v() > 0) {
            i();
            boolean z = this.f2173b ^ this.k;
            savedState2.f2179c = z;
            if (z) {
                View viewM = M();
                savedState2.f2178b = this.j.d() - this.j.b(viewM);
                savedState2.f2177a = d(viewM);
            } else {
                View viewL = L();
                savedState2.f2177a = d(viewL);
                savedState2.f2178b = this.j.a(viewL) - this.j.c();
            }
        } else {
            savedState2.b();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.n = (SavedState) parcelable;
            o();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean e() {
        return this.i == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean f() {
        return this.i == 1;
    }

    public void a(boolean z) {
        a((String) null);
        if (this.f2175d == z) {
            return;
        }
        this.f2175d = z;
        o();
    }

    public int g() {
        return this.i;
    }

    public void b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        a((String) null);
        if (i != this.i || this.j == null) {
            h hVarA = h.a(this, i);
            this.j = hVarA;
            this.o.f2180a = hVarA;
            this.i = i;
            o();
        }
    }

    private void K() {
        if (this.i == 1 || !h()) {
            this.k = this.f2174c;
        } else {
            this.k = !this.f2174c;
        }
    }

    public void b(boolean z) {
        a((String) null);
        if (z == this.f2174c) {
            return;
        }
        this.f2174c = z;
        o();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public View c(int i) {
        int iV = v();
        if (iV == 0) {
            return null;
        }
        int iD = i - d(i(0));
        if (iD >= 0 && iD < iV) {
            View viewI = i(iD);
            if (d(viewI) == i) {
                return viewI;
            }
        }
        return super.c(i);
    }

    protected int b(RecyclerView.t tVar) {
        if (tVar.d()) {
            return this.j.f();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s.b
    public PointF d(int i) {
        if (v() == 0) {
            return null;
        }
        int i2 = (i < d(i(0))) != this.k ? -1 : 1;
        if (this.i == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void c(RecyclerView.p pVar, RecyclerView.t tVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int iA;
        int i6;
        View viewC;
        int iA2;
        int iD;
        int i7 = -1;
        if ((this.n != null || this.l != -1) && tVar.e() == 0) {
            c(pVar);
            return;
        }
        SavedState savedState = this.n;
        if (savedState != null && savedState.a()) {
            this.l = this.n.f2177a;
        }
        i();
        this.f2172a.f2189a = false;
        K();
        View viewE = E();
        if (!this.o.f2184e || this.l != -1 || this.n != null) {
            this.o.a();
            this.o.f2183d = this.k ^ this.f2175d;
            a(pVar, tVar, this.o);
            this.o.f2184e = true;
        } else if (viewE != null && (this.j.a(viewE) >= this.j.d() || this.j.b(viewE) <= this.j.c())) {
            this.o.a(viewE, d(viewE));
        }
        int iB = b(tVar);
        if (this.f2172a.j >= 0) {
            i = iB;
            iB = 0;
        } else {
            i = 0;
        }
        int iC = iB + this.j.c();
        int iG = i + this.j.g();
        if (tVar.a() && (i6 = this.l) != -1 && this.m != Integer.MIN_VALUE && (viewC = c(i6)) != null) {
            if (this.k) {
                iD = this.j.d() - this.j.b(viewC);
                iA2 = this.m;
            } else {
                iA2 = this.j.a(viewC) - this.j.c();
                iD = this.m;
            }
            int i8 = iD - iA2;
            if (i8 > 0) {
                iC += i8;
            } else {
                iG -= i8;
            }
        }
        if (!this.o.f2183d ? !this.k : this.k) {
            i7 = 1;
        }
        a(pVar, tVar, this.o, i7);
        a(pVar);
        this.f2172a.l = k();
        this.f2172a.i = tVar.a();
        if (this.o.f2183d) {
            b(this.o);
            this.f2172a.h = iC;
            a(pVar, this.f2172a, tVar, false);
            i3 = this.f2172a.f2190b;
            int i9 = this.f2172a.f2192d;
            if (this.f2172a.f2191c > 0) {
                iG += this.f2172a.f2191c;
            }
            a(this.o);
            this.f2172a.h = iG;
            this.f2172a.f2192d += this.f2172a.f2193e;
            a(pVar, this.f2172a, tVar, false);
            i2 = this.f2172a.f2190b;
            if (this.f2172a.f2191c > 0) {
                int i10 = this.f2172a.f2191c;
                g(i9, i3);
                this.f2172a.h = i10;
                a(pVar, this.f2172a, tVar, false);
                i3 = this.f2172a.f2190b;
            }
        } else {
            a(this.o);
            this.f2172a.h = iG;
            a(pVar, this.f2172a, tVar, false);
            i2 = this.f2172a.f2190b;
            int i11 = this.f2172a.f2192d;
            if (this.f2172a.f2191c > 0) {
                iC += this.f2172a.f2191c;
            }
            b(this.o);
            this.f2172a.h = iC;
            this.f2172a.f2192d += this.f2172a.f2193e;
            a(pVar, this.f2172a, tVar, false);
            i3 = this.f2172a.f2190b;
            if (this.f2172a.f2191c > 0) {
                int i12 = this.f2172a.f2191c;
                a(i11, i2);
                this.f2172a.h = i12;
                a(pVar, this.f2172a, tVar, false);
                i2 = this.f2172a.f2190b;
            }
        }
        if (v() > 0) {
            if (this.k ^ this.f2175d) {
                int iA3 = a(i2, pVar, tVar, true);
                i4 = i3 + iA3;
                i5 = i2 + iA3;
                iA = b(i4, pVar, tVar, false);
            } else {
                int iB2 = b(i3, pVar, tVar, true);
                i4 = i3 + iB2;
                i5 = i2 + iB2;
                iA = a(i5, pVar, tVar, false);
            }
            i3 = i4 + iA;
            i2 = i5 + iA;
        }
        b(pVar, tVar, i3, i2);
        if (!tVar.a()) {
            this.j.a();
        } else {
            this.o.a();
        }
        this.f2173b = this.f2175d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.t tVar) {
        super.a(tVar);
        this.n = null;
        this.l = -1;
        this.m = Integer.MIN_VALUE;
        this.o.a();
    }

    private void b(RecyclerView.p pVar, RecyclerView.t tVar, int i, int i2) {
        if (!tVar.b() || v() == 0 || tVar.a() || !b()) {
            return;
        }
        List<RecyclerView.w> listC = pVar.c();
        int size = listC.size();
        int iD = d(i(0));
        int iE = 0;
        int iE2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView.w wVar = listC.get(i3);
            if (!wVar.q()) {
                if (((wVar.d() < iD) != this.k ? (byte) -1 : (byte) 1) == -1) {
                    iE += this.j.e(wVar.f2263a);
                } else {
                    iE2 += this.j.e(wVar.f2263a);
                }
            }
        }
        this.f2172a.k = listC;
        if (iE > 0) {
            g(d(L()), i);
            this.f2172a.h = iE;
            this.f2172a.f2191c = 0;
            this.f2172a.a();
            a(pVar, this.f2172a, tVar, false);
        }
        if (iE2 > 0) {
            a(d(M()), i2);
            this.f2172a.h = iE2;
            this.f2172a.f2191c = 0;
            this.f2172a.a();
            a(pVar, this.f2172a, tVar, false);
        }
        this.f2172a.k = null;
    }

    private void a(RecyclerView.p pVar, RecyclerView.t tVar, a aVar) {
        if (a(tVar, aVar) || b(pVar, tVar, aVar)) {
            return;
        }
        aVar.b();
        aVar.f2181b = this.f2175d ? tVar.e() - 1 : 0;
    }

    private boolean b(RecyclerView.p pVar, RecyclerView.t tVar, a aVar) {
        View viewG;
        int iC;
        if (v() == 0) {
            return false;
        }
        View viewE = E();
        if (viewE != null && aVar.a(viewE, tVar)) {
            aVar.a(viewE, d(viewE));
            return true;
        }
        if (this.f2173b != this.f2175d) {
            return false;
        }
        if (aVar.f2183d) {
            viewG = f(pVar, tVar);
        } else {
            viewG = g(pVar, tVar);
        }
        if (viewG == null) {
            return false;
        }
        aVar.b(viewG, d(viewG));
        if (!tVar.a() && b()) {
            if (this.j.a(viewG) >= this.j.d() || this.j.b(viewG) < this.j.c()) {
                if (aVar.f2183d) {
                    iC = this.j.d();
                } else {
                    iC = this.j.c();
                }
                aVar.f2182c = iC;
            }
        }
        return true;
    }

    private boolean a(RecyclerView.t tVar, a aVar) {
        int i;
        int iA;
        if (!tVar.a() && (i = this.l) != -1) {
            if (i < 0 || i >= tVar.e()) {
                this.l = -1;
                this.m = Integer.MIN_VALUE;
            } else {
                aVar.f2181b = this.l;
                SavedState savedState = this.n;
                if (savedState != null && savedState.a()) {
                    aVar.f2183d = this.n.f2179c;
                    if (aVar.f2183d) {
                        aVar.f2182c = this.j.d() - this.n.f2178b;
                    } else {
                        aVar.f2182c = this.j.c() + this.n.f2178b;
                    }
                    return true;
                }
                if (this.m == Integer.MIN_VALUE) {
                    View viewC = c(this.l);
                    if (viewC != null) {
                        if (this.j.e(viewC) > this.j.f()) {
                            aVar.b();
                            return true;
                        }
                        if (this.j.a(viewC) - this.j.c() < 0) {
                            aVar.f2182c = this.j.c();
                            aVar.f2183d = false;
                            return true;
                        }
                        if (this.j.d() - this.j.b(viewC) < 0) {
                            aVar.f2182c = this.j.d();
                            aVar.f2183d = true;
                            return true;
                        }
                        if (aVar.f2183d) {
                            iA = this.j.b(viewC) + this.j.b();
                        } else {
                            iA = this.j.a(viewC);
                        }
                        aVar.f2182c = iA;
                    } else {
                        if (v() > 0) {
                            aVar.f2183d = (this.l < d(i(0))) == this.k;
                        }
                        aVar.b();
                    }
                    return true;
                }
                aVar.f2183d = this.k;
                if (this.k) {
                    aVar.f2182c = this.j.d() - this.m;
                } else {
                    aVar.f2182c = this.j.c() + this.m;
                }
                return true;
            }
        }
        return false;
    }

    private int a(int i, RecyclerView.p pVar, RecyclerView.t tVar, boolean z) {
        int iD;
        int iD2 = this.j.d() - i;
        if (iD2 <= 0) {
            return 0;
        }
        int i2 = -c(-iD2, pVar, tVar);
        int i3 = i + i2;
        if (!z || (iD = this.j.d() - i3) <= 0) {
            return i2;
        }
        this.j.a(iD);
        return iD + i2;
    }

    private int b(int i, RecyclerView.p pVar, RecyclerView.t tVar, boolean z) {
        int iC;
        int iC2 = i - this.j.c();
        if (iC2 <= 0) {
            return 0;
        }
        int i2 = -c(iC2, pVar, tVar);
        int i3 = i + i2;
        if (!z || (iC = i3 - this.j.c()) <= 0) {
            return i2;
        }
        this.j.a(-iC);
        return i2 - iC;
    }

    private void a(a aVar) {
        a(aVar.f2181b, aVar.f2182c);
    }

    private void a(int i, int i2) {
        this.f2172a.f2191c = this.j.d() - i2;
        this.f2172a.f2193e = this.k ? -1 : 1;
        this.f2172a.f2192d = i;
        this.f2172a.f = 1;
        this.f2172a.f2190b = i2;
        this.f2172a.g = Integer.MIN_VALUE;
    }

    private void b(a aVar) {
        g(aVar.f2181b, aVar.f2182c);
    }

    private void g(int i, int i2) {
        this.f2172a.f2191c = i2 - this.j.c();
        this.f2172a.f2192d = i;
        this.f2172a.f2193e = this.k ? 1 : -1;
        this.f2172a.f = -1;
        this.f2172a.f2190b = i2;
        this.f2172a.g = Integer.MIN_VALUE;
    }

    protected boolean h() {
        return t() == 1;
    }

    void i() {
        if (this.f2172a == null) {
            this.f2172a = j();
        }
    }

    c j() {
        return new c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void e(int i) {
        this.l = i;
        this.m = Integer.MIN_VALUE;
        SavedState savedState = this.n;
        if (savedState != null) {
            savedState.b();
        }
        o();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 1) {
            return 0;
        }
        return c(i, pVar, tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 0) {
            return 0;
        }
        return c(i, pVar, tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int c(RecyclerView.t tVar) {
        return i(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int d(RecyclerView.t tVar) {
        return i(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int e(RecyclerView.t tVar) {
        return j(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int f(RecyclerView.t tVar) {
        return j(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int g(RecyclerView.t tVar) {
        return k(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int h(RecyclerView.t tVar) {
        return k(tVar);
    }

    private int i(RecyclerView.t tVar) {
        if (v() == 0) {
            return 0;
        }
        i();
        return j.a(tVar, this.j, a(!this.f2176e, true), b(!this.f2176e, true), this, this.f2176e, this.k);
    }

    private int j(RecyclerView.t tVar) {
        if (v() == 0) {
            return 0;
        }
        i();
        return j.a(tVar, this.j, a(!this.f2176e, true), b(!this.f2176e, true), this, this.f2176e);
    }

    private int k(RecyclerView.t tVar) {
        if (v() == 0) {
            return 0;
        }
        i();
        return j.b(tVar, this.j, a(!this.f2176e, true), b(!this.f2176e, true), this, this.f2176e);
    }

    private void a(int i, int i2, boolean z, RecyclerView.t tVar) {
        int iC;
        this.f2172a.l = k();
        this.f2172a.h = b(tVar);
        this.f2172a.f = i;
        if (i == 1) {
            this.f2172a.h += this.j.g();
            View viewM = M();
            this.f2172a.f2193e = this.k ? -1 : 1;
            this.f2172a.f2192d = d(viewM) + this.f2172a.f2193e;
            this.f2172a.f2190b = this.j.b(viewM);
            iC = this.j.b(viewM) - this.j.d();
        } else {
            View viewL = L();
            this.f2172a.h += this.j.c();
            this.f2172a.f2193e = this.k ? 1 : -1;
            this.f2172a.f2192d = d(viewL) + this.f2172a.f2193e;
            this.f2172a.f2190b = this.j.a(viewL);
            iC = (-this.j.a(viewL)) + this.j.c();
        }
        this.f2172a.f2191c = i2;
        if (z) {
            this.f2172a.f2191c -= iC;
        }
        this.f2172a.g = iC;
    }

    boolean k() {
        return this.j.h() == 0 && this.j.e() == 0;
    }

    void a(RecyclerView.t tVar, c cVar, RecyclerView.i.a aVar) {
        int i = cVar.f2192d;
        if (i < 0 || i >= tVar.e()) {
            return;
        }
        aVar.b(i, Math.max(0, cVar.g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(int i, RecyclerView.i.a aVar) {
        boolean z;
        int i2;
        SavedState savedState = this.n;
        if (savedState != null && savedState.a()) {
            z = this.n.f2179c;
            i2 = this.n.f2177a;
        } else {
            K();
            z = this.k;
            i2 = this.l;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.h && i2 >= 0 && i2 < i; i4++) {
            aVar.b(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(int i, int i2, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        if (this.i != 0) {
            i = i2;
        }
        if (v() == 0 || i == 0) {
            return;
        }
        i();
        a(i > 0 ? 1 : -1, Math.abs(i), true, tVar);
        a(tVar, this.f2172a, aVar);
    }

    int c(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (v() == 0 || i == 0) {
            return 0;
        }
        this.f2172a.f2189a = true;
        i();
        int i2 = i > 0 ? 1 : -1;
        int iAbs = Math.abs(i);
        a(i2, iAbs, true, tVar);
        int iA = this.f2172a.g + a(pVar, this.f2172a, tVar, false);
        if (iA < 0) {
            return 0;
        }
        if (iAbs > iA) {
            i = i2 * iA;
        }
        this.j.a(-i);
        this.f2172a.j = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(String str) {
        if (this.n == null) {
            super.a(str);
        }
    }

    private void a(RecyclerView.p pVar, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                a(i, pVar);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                a(i3, pVar);
            }
        }
    }

    private void a(RecyclerView.p pVar, int i) {
        if (i < 0) {
            return;
        }
        int iV = v();
        if (!this.k) {
            for (int i2 = 0; i2 < iV; i2++) {
                View viewI = i(i2);
                if (this.j.b(viewI) > i || this.j.c(viewI) > i) {
                    a(pVar, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = iV - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            View viewI2 = i(i4);
            if (this.j.b(viewI2) > i || this.j.c(viewI2) > i) {
                a(pVar, i3, i4);
                return;
            }
        }
    }

    private void b(RecyclerView.p pVar, int i) {
        int iV = v();
        if (i < 0) {
            return;
        }
        int iE = this.j.e() - i;
        if (this.k) {
            for (int i2 = 0; i2 < iV; i2++) {
                View viewI = i(i2);
                if (this.j.a(viewI) < iE || this.j.d(viewI) < iE) {
                    a(pVar, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = iV - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            View viewI2 = i(i4);
            if (this.j.a(viewI2) < iE || this.j.d(viewI2) < iE) {
                a(pVar, i3, i4);
                return;
            }
        }
    }

    private void a(RecyclerView.p pVar, c cVar) {
        if (!cVar.f2189a || cVar.l) {
            return;
        }
        if (cVar.f == -1) {
            b(pVar, cVar.g);
        } else {
            a(pVar, cVar.g);
        }
    }

    int a(RecyclerView.p pVar, c cVar, RecyclerView.t tVar, boolean z) {
        int i = cVar.f2191c;
        if (cVar.g != Integer.MIN_VALUE) {
            if (cVar.f2191c < 0) {
                cVar.g += cVar.f2191c;
            }
            a(pVar, cVar);
        }
        int i2 = cVar.f2191c + cVar.h;
        b bVar = this.g;
        while (true) {
            if ((!cVar.l && i2 <= 0) || !cVar.a(tVar)) {
                break;
            }
            bVar.a();
            a(pVar, tVar, cVar, bVar);
            if (!bVar.f2186b) {
                cVar.f2190b += bVar.f2185a * cVar.f;
                if (!bVar.f2187c || this.f2172a.k != null || !tVar.a()) {
                    cVar.f2191c -= bVar.f2185a;
                    i2 -= bVar.f2185a;
                }
                if (cVar.g != Integer.MIN_VALUE) {
                    cVar.g += bVar.f2185a;
                    if (cVar.f2191c < 0) {
                        cVar.g += cVar.f2191c;
                    }
                    a(pVar, cVar);
                }
                if (z && bVar.f2188d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - cVar.f2191c;
    }

    void a(RecyclerView.p pVar, RecyclerView.t tVar, c cVar, b bVar) {
        int i;
        int i2;
        int i3;
        int iA;
        int iF;
        View viewA = cVar.a(pVar);
        if (viewA == null) {
            bVar.f2186b = true;
            return;
        }
        RecyclerView.j jVar = (RecyclerView.j) viewA.getLayoutParams();
        if (cVar.k == null) {
            if (this.k == (cVar.f == -1)) {
                b(viewA);
            } else {
                b(viewA, 0);
            }
        } else {
            if (this.k == (cVar.f == -1)) {
                a(viewA);
            } else {
                a(viewA, 0);
            }
        }
        a(viewA, 0, 0);
        bVar.f2185a = this.j.e(viewA);
        if (this.i == 1) {
            if (h()) {
                iF = y() - C();
                iA = iF - this.j.f(viewA);
            } else {
                iA = A();
                iF = this.j.f(viewA) + iA;
            }
            if (cVar.f == -1) {
                int i4 = cVar.f2190b;
                i2 = cVar.f2190b - bVar.f2185a;
                i = iF;
                i3 = i4;
            } else {
                int i5 = cVar.f2190b;
                i3 = cVar.f2190b + bVar.f2185a;
                i = iF;
                i2 = i5;
            }
        } else {
            int iB = B();
            int iF2 = this.j.f(viewA) + iB;
            if (cVar.f == -1) {
                i2 = iB;
                i = cVar.f2190b;
                i3 = iF2;
                iA = cVar.f2190b - bVar.f2185a;
            } else {
                int i6 = cVar.f2190b;
                i = cVar.f2190b + bVar.f2185a;
                i2 = iB;
                i3 = iF2;
                iA = i6;
            }
        }
        a(viewA, iA, i2, i, i3);
        if (jVar.d() || jVar.e()) {
            bVar.f2187c = true;
        }
        bVar.f2188d = viewA.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    boolean l() {
        return (x() == 1073741824 || w() == 1073741824 || !J()) ? false : true;
    }

    int f(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.i == 1) ? 1 : Integer.MIN_VALUE : this.i == 0 ? 1 : Integer.MIN_VALUE : this.i == 1 ? -1 : Integer.MIN_VALUE : this.i == 0 ? -1 : Integer.MIN_VALUE : (this.i != 1 && h()) ? -1 : 1 : (this.i != 1 && h()) ? 1 : -1;
    }

    private View L() {
        return i(this.k ? v() - 1 : 0);
    }

    private View M() {
        return i(this.k ? 0 : v() - 1);
    }

    private View a(boolean z, boolean z2) {
        if (this.k) {
            return a(v() - 1, -1, z, z2);
        }
        return a(0, v(), z, z2);
    }

    private View b(boolean z, boolean z2) {
        if (this.k) {
            return a(0, v(), z, z2);
        }
        return a(v() - 1, -1, z, z2);
    }

    private View f(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.k ? h(pVar, tVar) : i(pVar, tVar);
    }

    private View g(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.k ? i(pVar, tVar) : h(pVar, tVar);
    }

    private View h(RecyclerView.p pVar, RecyclerView.t tVar) {
        return a(pVar, tVar, 0, v(), tVar.e());
    }

    private View i(RecyclerView.p pVar, RecyclerView.t tVar) {
        return a(pVar, tVar, v() - 1, -1, tVar.e());
    }

    View a(RecyclerView.p pVar, RecyclerView.t tVar, int i, int i2, int i3) {
        i();
        int iC = this.j.c();
        int iD = this.j.d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View viewI = i(i);
            int iD2 = d(viewI);
            if (iD2 >= 0 && iD2 < i3) {
                if (((RecyclerView.j) viewI.getLayoutParams()).d()) {
                    if (view2 == null) {
                        view2 = viewI;
                    }
                } else {
                    if (this.j.a(viewI) < iD && this.j.b(viewI) >= iC) {
                        return viewI;
                    }
                    if (view == null) {
                        view = viewI;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    private View j(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.k ? l(pVar, tVar) : m(pVar, tVar);
    }

    private View k(RecyclerView.p pVar, RecyclerView.t tVar) {
        return this.k ? m(pVar, tVar) : l(pVar, tVar);
    }

    private View l(RecyclerView.p pVar, RecyclerView.t tVar) {
        return b(0, v());
    }

    private View m(RecyclerView.p pVar, RecyclerView.t tVar) {
        return b(v() - 1, -1);
    }

    public int m() {
        View viewA = a(0, v(), false, true);
        if (viewA == null) {
            return -1;
        }
        return d(viewA);
    }

    public int n() {
        View viewA = a(v() - 1, -1, false, true);
        if (viewA == null) {
            return -1;
        }
        return d(viewA);
    }

    View a(int i, int i2, boolean z, boolean z2) {
        i();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        if (this.i == 0) {
            return this.r.a(i, i2, i3, i4);
        }
        return this.s.a(i, i2, i3, i4);
    }

    View b(int i, int i2) {
        int i3;
        int i4;
        i();
        if ((i2 > i ? (byte) 1 : i2 < i ? (byte) -1 : (byte) 0) == 0) {
            return i(i);
        }
        if (this.j.a(i(i)) < this.j.c()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        if (this.i == 0) {
            return this.r.a(i, i2, i3, i4);
        }
        return this.s.a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public View a(View view, int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        int iF;
        View viewJ;
        View viewM;
        K();
        if (v() == 0 || (iF = f(i)) == Integer.MIN_VALUE) {
            return null;
        }
        i();
        i();
        a(iF, (int) (this.j.f() * 0.33333334f), false, tVar);
        this.f2172a.g = Integer.MIN_VALUE;
        this.f2172a.f2189a = false;
        a(pVar, this.f2172a, tVar, true);
        if (iF == -1) {
            viewJ = k(pVar, tVar);
        } else {
            viewJ = j(pVar, tVar);
        }
        if (iF == -1) {
            viewM = L();
        } else {
            viewM = M();
        }
        if (!viewM.hasFocusable()) {
            return viewJ;
        }
        if (viewJ == null) {
            return null;
        }
        return viewM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean b() {
        return this.n == null && this.f2173b == this.f2175d;
    }

    static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2190b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2191c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2192d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2193e;
        int f;
        int g;
        int j;
        boolean l;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f2189a = true;
        int h = 0;
        boolean i = false;
        List<RecyclerView.w> k = null;

        c() {
        }

        boolean a(RecyclerView.t tVar) {
            int i = this.f2192d;
            return i >= 0 && i < tVar.e();
        }

        View a(RecyclerView.p pVar) {
            if (this.k != null) {
                return b();
            }
            View viewC = pVar.c(this.f2192d);
            this.f2192d += this.f2193e;
            return viewC;
        }

        private View b() {
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                View view = this.k.get(i).f2263a;
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                if (!jVar.d() && this.f2192d == jVar.f()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View viewB = b(view);
            if (viewB == null) {
                this.f2192d = -1;
            } else {
                this.f2192d = ((RecyclerView.j) viewB.getLayoutParams()).f();
            }
        }

        public View b(View view) {
            int iF;
            int size = this.k.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.k.get(i2).f2263a;
                RecyclerView.j jVar = (RecyclerView.j) view3.getLayoutParams();
                if (view3 != view && !jVar.d() && (iF = (jVar.f() - this.f2192d) * this.f2193e) >= 0 && iF < i) {
                    view2 = view3;
                    if (iF == 0) {
                        break;
                    }
                    i = iF;
                }
            }
            return view2;
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2178b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f2179c;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f2177a = parcel.readInt();
            this.f2178b = parcel.readInt();
            this.f2179c = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f2177a = savedState.f2177a;
            this.f2178b = savedState.f2178b;
            this.f2179c = savedState.f2179c;
        }

        boolean a() {
            return this.f2177a >= 0;
        }

        void b() {
            this.f2177a = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2177a);
            parcel.writeInt(this.f2178b);
            parcel.writeInt(this.f2179c ? 1 : 0);
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        h f2180a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f2184e;

        a() {
            a();
        }

        void a() {
            this.f2181b = -1;
            this.f2182c = Integer.MIN_VALUE;
            this.f2183d = false;
            this.f2184e = false;
        }

        void b() {
            int iC;
            if (this.f2183d) {
                iC = this.f2180a.d();
            } else {
                iC = this.f2180a.c();
            }
            this.f2182c = iC;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2181b + ", mCoordinate=" + this.f2182c + ", mLayoutFromEnd=" + this.f2183d + ", mValid=" + this.f2184e + '}';
        }

        boolean a(View view, RecyclerView.t tVar) {
            RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
            return !jVar.d() && jVar.f() >= 0 && jVar.f() < tVar.e();
        }

        public void a(View view, int i) {
            int iB = this.f2180a.b();
            if (iB >= 0) {
                b(view, i);
                return;
            }
            this.f2181b = i;
            if (this.f2183d) {
                int iD = (this.f2180a.d() - iB) - this.f2180a.b(view);
                this.f2182c = this.f2180a.d() - iD;
                if (iD > 0) {
                    int iE = this.f2182c - this.f2180a.e(view);
                    int iC = this.f2180a.c();
                    int iMin = iE - (iC + Math.min(this.f2180a.a(view) - iC, 0));
                    if (iMin < 0) {
                        this.f2182c += Math.min(iD, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iA = this.f2180a.a(view);
            int iC2 = iA - this.f2180a.c();
            this.f2182c = iA;
            if (iC2 > 0) {
                int iD2 = (this.f2180a.d() - Math.min(0, (this.f2180a.d() - iB) - this.f2180a.b(view))) - (iA + this.f2180a.e(view));
                if (iD2 < 0) {
                    this.f2182c -= Math.min(iC2, -iD2);
                }
            }
        }

        public void b(View view, int i) {
            if (this.f2183d) {
                this.f2182c = this.f2180a.b(view) + this.f2180a.b();
            } else {
                this.f2182c = this.f2180a.a(view);
            }
            this.f2181b = i;
        }
    }

    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2185a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2187c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2188d;

        protected b() {
        }

        void a() {
            this.f2185a = 0;
            this.f2186b = false;
            this.f2187c = false;
            this.f2188d = false;
        }
    }
}
