package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.h.a.c;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.i implements RecyclerView.s.b {
    private SavedState A;
    private int B;
    private int[] G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c[] f2268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f2269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h f2270c;
    private int j;
    private int k;
    private final f l;
    private BitSet m;
    private boolean o;
    private boolean z;
    private int i = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f2271d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2272e = false;
    int f = -1;
    int g = Integer.MIN_VALUE;
    LazySpanLookup h = new LazySpanLookup();
    private int n = 2;
    private final Rect C = new Rect();
    private final a D = new a();
    private boolean E = false;
    private boolean F = true;
    private final Runnable H = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.g();
        }
    };

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.i.b bVarA = a(context, attributeSet, i, i2);
        b(bVarA.f2224a);
        a(bVarA.f2225b);
        a(bVarA.f2226c);
        this.l = new f();
        M();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean c() {
        return this.n != 0;
    }

    private void M() {
        this.f2269b = h.a(this, this.j);
        this.f2270c = h.a(this, 1 - this.j);
    }

    boolean g() {
        int iL;
        int iK;
        if (v() == 0 || this.n == 0 || !q()) {
            return false;
        }
        if (this.f2272e) {
            iL = K();
            iK = L();
        } else {
            iL = L();
            iK = K();
        }
        if (iL == 0 && h() != null) {
            this.h.a();
            I();
            o();
            return true;
        }
        if (!this.E) {
            return false;
        }
        int i = this.f2272e ? -1 : 1;
        int i2 = iK + 1;
        LazySpanLookup.FullSpanItem fullSpanItemA = this.h.a(iL, i2, i, true);
        if (fullSpanItemA == null) {
            this.E = false;
            this.h.a(i2);
            return false;
        }
        LazySpanLookup.FullSpanItem fullSpanItemA2 = this.h.a(iL, fullSpanItemA.f2276a, i * (-1), true);
        if (fullSpanItemA2 == null) {
            this.h.a(fullSpanItemA.f2276a);
        } else {
            this.h.a(fullSpanItemA2.f2276a + 1);
        }
        I();
        o();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void l(int i) {
        if (i == 0) {
            g();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, RecyclerView.p pVar) {
        super.a(recyclerView, pVar);
        a(this.H);
        for (int i = 0; i < this.i; i++) {
            this.f2268a[i].e();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    android.view.View h() {
        /*
            r12 = this;
            int r0 = r12.v()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.i
            r2.<init>(r3)
            int r3 = r12.i
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.j
            r5 = -1
            if (r3 != r1) goto L20
            boolean r3 = r12.j()
            if (r3 == 0) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = -1
        L21:
            boolean r6 = r12.f2272e
            if (r6 == 0) goto L27
            r6 = -1
            goto L2b
        L27:
            int r0 = r0 + 1
            r6 = r0
            r0 = 0
        L2b:
            if (r0 >= r6) goto L2e
            r5 = 1
        L2e:
            if (r0 == r6) goto Lab
            android.view.View r7 = r12.i(r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.b) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f2290a
            int r9 = r9.f2296e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L54
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f2290a
            boolean r9 = r12.a(r9)
            if (r9 == 0) goto L4d
            return r7
        L4d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f2290a
            int r9 = r9.f2296e
            r2.clear(r9)
        L54:
            boolean r9 = r8.f2291b
            if (r9 == 0) goto L59
            goto La9
        L59:
            int r9 = r0 + r5
            if (r9 == r6) goto La9
            android.view.View r9 = r12.i(r9)
            boolean r10 = r12.f2272e
            if (r10 == 0) goto L77
            androidx.recyclerview.widget.h r10 = r12.f2269b
            int r10 = r10.b(r7)
            androidx.recyclerview.widget.h r11 = r12.f2269b
            int r11 = r11.b(r9)
            if (r10 >= r11) goto L74
            return r7
        L74:
            if (r10 != r11) goto L8a
            goto L88
        L77:
            androidx.recyclerview.widget.h r10 = r12.f2269b
            int r10 = r10.a(r7)
            androidx.recyclerview.widget.h r11 = r12.f2269b
            int r11 = r11.a(r9)
            if (r10 <= r11) goto L86
            return r7
        L86:
            if (r10 != r11) goto L8a
        L88:
            r10 = 1
            goto L8b
        L8a:
            r10 = 0
        L8b:
            if (r10 == 0) goto La9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$b r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.b) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = r8.f2290a
            int r8 = r8.f2296e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r9.f2290a
            int r9 = r9.f2296e
            int r8 = r8 - r9
            if (r8 >= 0) goto La0
            r8 = 1
            goto La1
        La0:
            r8 = 0
        La1:
            if (r3 >= 0) goto La5
            r9 = 1
            goto La6
        La5:
            r9 = 0
        La6:
            if (r8 == r9) goto La9
            return r7
        La9:
            int r0 = r0 + r5
            goto L2e
        Lab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.h():android.view.View");
    }

    private boolean a(c cVar) {
        if (this.f2272e) {
            if (cVar.d() < this.f2269b.d()) {
                return !cVar.c(cVar.f2292a.get(cVar.f2292a.size() - 1)).f2291b;
            }
        } else if (cVar.b() > this.f2269b.c()) {
            return !cVar.c(cVar.f2292a.get(0)).f2291b;
        }
        return false;
    }

    public void a(int i) {
        a((String) null);
        if (i != this.i) {
            i();
            this.i = i;
            this.m = new BitSet(this.i);
            this.f2268a = new c[this.i];
            for (int i2 = 0; i2 < this.i; i2++) {
                this.f2268a[i2] = new c(i2);
            }
            o();
        }
    }

    public void b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        a((String) null);
        if (i == this.j) {
            return;
        }
        this.j = i;
        h hVar = this.f2269b;
        this.f2269b = this.f2270c;
        this.f2270c = hVar;
        o();
    }

    public void a(boolean z) {
        a((String) null);
        SavedState savedState = this.A;
        if (savedState != null && savedState.h != z) {
            this.A.h = z;
        }
        this.f2271d = z;
        o();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(String str) {
        if (this.A == null) {
            super.a(str);
        }
    }

    public void i() {
        this.h.a();
        o();
    }

    private void N() {
        if (this.j == 1 || !j()) {
            this.f2272e = this.f2271d;
        } else {
            this.f2272e = !this.f2271d;
        }
    }

    boolean j() {
        return t() == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Rect rect, int i, int i2) {
        int iA;
        int iA2;
        int iA3 = A() + C();
        int iB = B() + D();
        if (this.j == 1) {
            iA2 = a(i2, rect.height() + iB, G());
            iA = a(i, (this.k * this.i) + iA3, F());
        } else {
            iA = a(i, rect.width() + iA3, F());
            iA2 = a(i2, (this.k * this.i) + iB, G());
        }
        f(iA, iA2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void c(RecyclerView.p pVar, RecyclerView.t tVar) {
        a(pVar, tVar, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(androidx.recyclerview.widget.RecyclerView.p r9, androidx.recyclerview.widget.RecyclerView.t r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 389
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.a(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t, boolean):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.t tVar) {
        super.a(tVar);
        this.f = -1;
        this.g = Integer.MIN_VALUE;
        this.A = null;
        this.D.a();
    }

    private void O() {
        if (this.f2270c.h() == 1073741824) {
            return;
        }
        float fMax = 0.0f;
        int iV = v();
        for (int i = 0; i < iV; i++) {
            View viewI = i(i);
            float fE = this.f2270c.e(viewI);
            if (fE >= fMax) {
                if (((b) viewI.getLayoutParams()).a()) {
                    fE = (fE * 1.0f) / this.i;
                }
                fMax = Math.max(fMax, fE);
            }
        }
        int i2 = this.k;
        int iRound = Math.round(fMax * this.i);
        if (this.f2270c.h() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.f2270c.f());
        }
        f(iRound);
        if (this.k == i2) {
            return;
        }
        for (int i3 = 0; i3 < iV; i3++) {
            View viewI2 = i(i3);
            b bVar = (b) viewI2.getLayoutParams();
            if (!bVar.f2291b) {
                if (j() && this.j == 1) {
                    viewI2.offsetLeftAndRight(((-((this.i - 1) - bVar.f2290a.f2296e)) * this.k) - ((-((this.i - 1) - bVar.f2290a.f2296e)) * i2));
                } else {
                    int i4 = bVar.f2290a.f2296e * this.k;
                    int i5 = bVar.f2290a.f2296e * i2;
                    if (this.j == 1) {
                        viewI2.offsetLeftAndRight(i4 - i5);
                    } else {
                        viewI2.offsetTopAndBottom(i4 - i5);
                    }
                }
            }
        }
    }

    private void a(a aVar) {
        int iC;
        if (this.A.f2282c > 0) {
            if (this.A.f2282c == this.i) {
                for (int i = 0; i < this.i; i++) {
                    this.f2268a[i].e();
                    int i2 = this.A.f2283d[i];
                    if (i2 != Integer.MIN_VALUE) {
                        if (this.A.i) {
                            iC = this.f2269b.d();
                        } else {
                            iC = this.f2269b.c();
                        }
                        i2 += iC;
                    }
                    this.f2268a[i].c(i2);
                }
            } else {
                this.A.a();
                SavedState savedState = this.A;
                savedState.f2280a = savedState.f2281b;
            }
        }
        this.z = this.A.j;
        a(this.A.h);
        N();
        if (this.A.f2280a != -1) {
            this.f = this.A.f2280a;
            aVar.f2287c = this.A.i;
        } else {
            aVar.f2287c = this.f2272e;
        }
        if (this.A.f2284e > 1) {
            this.h.f2274a = this.A.f;
            this.h.f2275b = this.A.g;
        }
    }

    void a(RecyclerView.t tVar, a aVar) {
        if (b(tVar, aVar) || c(tVar, aVar)) {
            return;
        }
        aVar.b();
        aVar.f2285a = 0;
    }

    private boolean c(RecyclerView.t tVar, a aVar) {
        int iV;
        if (this.o) {
            iV = w(tVar.e());
        } else {
            iV = v(tVar.e());
        }
        aVar.f2285a = iV;
        aVar.f2286b = Integer.MIN_VALUE;
        return true;
    }

    boolean b(RecyclerView.t tVar, a aVar) {
        int i;
        int iC;
        if (!tVar.a() && (i = this.f) != -1) {
            if (i < 0 || i >= tVar.e()) {
                this.f = -1;
                this.g = Integer.MIN_VALUE;
            } else {
                SavedState savedState = this.A;
                if (savedState == null || savedState.f2280a == -1 || this.A.f2282c < 1) {
                    View viewC = c(this.f);
                    if (viewC != null) {
                        aVar.f2285a = this.f2272e ? K() : L();
                        if (this.g != Integer.MIN_VALUE) {
                            if (aVar.f2287c) {
                                aVar.f2286b = (this.f2269b.d() - this.g) - this.f2269b.b(viewC);
                            } else {
                                aVar.f2286b = (this.f2269b.c() + this.g) - this.f2269b.a(viewC);
                            }
                            return true;
                        }
                        if (this.f2269b.e(viewC) > this.f2269b.f()) {
                            if (aVar.f2287c) {
                                iC = this.f2269b.d();
                            } else {
                                iC = this.f2269b.c();
                            }
                            aVar.f2286b = iC;
                            return true;
                        }
                        int iA = this.f2269b.a(viewC) - this.f2269b.c();
                        if (iA < 0) {
                            aVar.f2286b = -iA;
                            return true;
                        }
                        int iD = this.f2269b.d() - this.f2269b.b(viewC);
                        if (iD < 0) {
                            aVar.f2286b = iD;
                            return true;
                        }
                        aVar.f2286b = Integer.MIN_VALUE;
                    } else {
                        aVar.f2285a = this.f;
                        int i2 = this.g;
                        if (i2 == Integer.MIN_VALUE) {
                            aVar.f2287c = u(aVar.f2285a) == 1;
                            aVar.b();
                        } else {
                            aVar.a(i2);
                        }
                        aVar.f2288d = true;
                    }
                } else {
                    aVar.f2286b = Integer.MIN_VALUE;
                    aVar.f2285a = this.f;
                }
                return true;
            }
        }
        return false;
    }

    void f(int i) {
        this.k = i / this.i;
        this.B = View.MeasureSpec.makeMeasureSpec(i, this.f2270c.h());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean b() {
        return this.A == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int c(RecyclerView.t tVar) {
        return b(tVar);
    }

    private int b(RecyclerView.t tVar) {
        if (v() == 0) {
            return 0;
        }
        return j.a(tVar, this.f2269b, b(!this.F), c(!this.F), this, this.F, this.f2272e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int d(RecyclerView.t tVar) {
        return b(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int e(RecyclerView.t tVar) {
        return i(tVar);
    }

    private int i(RecyclerView.t tVar) {
        if (v() == 0) {
            return 0;
        }
        return j.a(tVar, this.f2269b, b(!this.F), c(!this.F), this, this.F);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int f(RecyclerView.t tVar) {
        return i(tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int g(RecyclerView.t tVar) {
        return j(tVar);
    }

    private int j(RecyclerView.t tVar) {
        if (v() == 0) {
            return 0;
        }
        return j.b(tVar, this.f2269b, b(!this.F), c(!this.F), this, this.F);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int h(RecyclerView.t tVar) {
        return j(tVar);
    }

    private void a(View view, b bVar, boolean z) {
        if (bVar.f2291b) {
            if (this.j == 1) {
                a(view, this.B, a(z(), x(), B() + D(), bVar.height, true), z);
                return;
            } else {
                a(view, a(y(), w(), A() + C(), bVar.width, true), this.B, z);
                return;
            }
        }
        if (this.j == 1) {
            a(view, a(this.k, w(), 0, bVar.width, false), a(z(), x(), B() + D(), bVar.height, true), z);
        } else {
            a(view, a(y(), w(), A() + C(), bVar.width, true), a(this.k, x(), 0, bVar.height, false), z);
        }
    }

    private void a(View view, int i, int i2, boolean z) {
        boolean zB;
        b(view, this.C);
        b bVar = (b) view.getLayoutParams();
        int iB = b(i, bVar.leftMargin + this.C.left, bVar.rightMargin + this.C.right);
        int iB2 = b(i2, bVar.topMargin + this.C.top, bVar.bottomMargin + this.C.bottom);
        if (z) {
            zB = a(view, iB, iB2, bVar);
        } else {
            zB = b(view, iB, iB2, bVar);
        }
        if (zB) {
            view.measure(iB, iB2);
        }
    }

    private int b(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.A = (SavedState) parcelable;
            o();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public Parcelable d() {
        int iA;
        int iC;
        SavedState savedState = this.A;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        savedState2.h = this.f2271d;
        savedState2.i = this.o;
        savedState2.j = this.z;
        LazySpanLookup lazySpanLookup = this.h;
        if (lazySpanLookup != null && lazySpanLookup.f2274a != null) {
            savedState2.f = this.h.f2274a;
            savedState2.f2284e = savedState2.f.length;
            savedState2.g = this.h.f2275b;
        } else {
            savedState2.f2284e = 0;
        }
        if (v() > 0) {
            savedState2.f2280a = this.o ? K() : L();
            savedState2.f2281b = k();
            savedState2.f2282c = this.i;
            savedState2.f2283d = new int[this.i];
            for (int i = 0; i < this.i; i++) {
                if (this.o) {
                    iA = this.f2268a[i].b(Integer.MIN_VALUE);
                    if (iA != Integer.MIN_VALUE) {
                        iC = this.f2269b.d();
                        iA -= iC;
                    }
                } else {
                    iA = this.f2268a[i].a(Integer.MIN_VALUE);
                    if (iA != Integer.MIN_VALUE) {
                        iC = this.f2269b.c();
                        iA -= iC;
                    }
                }
                savedState2.f2283d[i] = iA;
            }
        } else {
            savedState2.f2280a = -1;
            savedState2.f2281b = -1;
            savedState2.f2282c = 0;
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.p pVar, RecyclerView.t tVar, View view, androidx.core.h.a.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, cVar);
            return;
        }
        b bVar = (b) layoutParams;
        if (this.j == 0) {
            cVar.b(c.b.a(bVar.b(), bVar.f2291b ? this.i : 1, -1, -1, bVar.f2291b, false));
        } else {
            cVar.b(c.b.a(-1, -1, bVar.b(), bVar.f2291b ? this.i : 1, bVar.f2291b, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (v() > 0) {
            View viewB = b(false);
            View viewC = c(false);
            if (viewB == null || viewC == null) {
                return;
            }
            int iD = d(viewB);
            int iD2 = d(viewC);
            if (iD < iD2) {
                accessibilityEvent.setFromIndex(iD);
                accessibilityEvent.setToIndex(iD2);
            } else {
                accessibilityEvent.setFromIndex(iD2);
                accessibilityEvent.setToIndex(iD);
            }
        }
    }

    int k() {
        View viewC = this.f2272e ? c(true) : b(true);
        if (viewC == null) {
            return -1;
        }
        return d(viewC);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.j == 0) {
            return this.i;
        }
        return super.a(pVar, tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.j == 1) {
            return this.i;
        }
        return super.b(pVar, tVar);
    }

    View b(boolean z) {
        int iC = this.f2269b.c();
        int iD = this.f2269b.d();
        int iV = v();
        View view = null;
        for (int i = 0; i < iV; i++) {
            View viewI = i(i);
            int iA = this.f2269b.a(viewI);
            if (this.f2269b.b(viewI) > iC && iA < iD) {
                if (iA >= iC || !z) {
                    return viewI;
                }
                if (view == null) {
                    view = viewI;
                }
            }
        }
        return view;
    }

    View c(boolean z) {
        int iC = this.f2269b.c();
        int iD = this.f2269b.d();
        View view = null;
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewI = i(iV);
            int iA = this.f2269b.a(viewI);
            int iB = this.f2269b.b(viewI);
            if (iB > iC && iA < iD) {
                if (iB <= iD || !z) {
                    return viewI;
                }
                if (view == null) {
                    view = viewI;
                }
            }
        }
        return view;
    }

    private void b(RecyclerView.p pVar, RecyclerView.t tVar, boolean z) {
        int iD;
        int iR = r(Integer.MIN_VALUE);
        if (iR != Integer.MIN_VALUE && (iD = this.f2269b.d() - iR) > 0) {
            int i = iD - (-c(-iD, pVar, tVar));
            if (!z || i <= 0) {
                return;
            }
            this.f2269b.a(i);
        }
    }

    private void c(RecyclerView.p pVar, RecyclerView.t tVar, boolean z) {
        int iC;
        int iQ = q(Integer.MAX_VALUE);
        if (iQ != Integer.MAX_VALUE && (iC = iQ - this.f2269b.c()) > 0) {
            int iC2 = iC - c(iC, pVar, tVar);
            if (!z || iC2 <= 0) {
                return;
            }
            this.f2269b.a(-iC2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(int r5, androidx.recyclerview.widget.RecyclerView.t r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.f r0 = r4.l
            r1 = 0
            r0.f2378b = r1
            androidx.recyclerview.widget.f r0 = r4.l
            r0.f2379c = r5
            boolean r0 = r4.s()
            r2 = 1
            if (r0 == 0) goto L30
            int r6 = r6.c()
            r0 = -1
            if (r6 == r0) goto L30
            boolean r0 = r4.f2272e
            if (r6 >= r5) goto L1d
            r5 = 1
            goto L1e
        L1d:
            r5 = 0
        L1e:
            if (r0 != r5) goto L27
            androidx.recyclerview.widget.h r5 = r4.f2269b
            int r5 = r5.f()
            goto L31
        L27:
            androidx.recyclerview.widget.h r5 = r4.f2269b
            int r5 = r5.f()
            r6 = r5
            r5 = 0
            goto L32
        L30:
            r5 = 0
        L31:
            r6 = 0
        L32:
            boolean r0 = r4.r()
            if (r0 == 0) goto L4f
            androidx.recyclerview.widget.f r0 = r4.l
            androidx.recyclerview.widget.h r3 = r4.f2269b
            int r3 = r3.c()
            int r3 = r3 - r6
            r0.f = r3
            androidx.recyclerview.widget.f r6 = r4.l
            androidx.recyclerview.widget.h r0 = r4.f2269b
            int r0 = r0.d()
            int r0 = r0 + r5
            r6.g = r0
            goto L5f
        L4f:
            androidx.recyclerview.widget.f r0 = r4.l
            androidx.recyclerview.widget.h r3 = r4.f2269b
            int r3 = r3.e()
            int r3 = r3 + r5
            r0.g = r3
            androidx.recyclerview.widget.f r5 = r4.l
            int r6 = -r6
            r5.f = r6
        L5f:
            androidx.recyclerview.widget.f r5 = r4.l
            r5.h = r1
            androidx.recyclerview.widget.f r5 = r4.l
            r5.f2377a = r2
            androidx.recyclerview.widget.f r5 = r4.l
            androidx.recyclerview.widget.h r6 = r4.f2269b
            int r6 = r6.h()
            if (r6 != 0) goto L7a
            androidx.recyclerview.widget.h r6 = r4.f2269b
            int r6 = r6.e()
            if (r6 != 0) goto L7a
            r1 = 1
        L7a:
            r5.i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.b(int, androidx.recyclerview.widget.RecyclerView$t):void");
    }

    private void m(int i) {
        this.l.f2381e = i;
        this.l.f2380d = this.f2272e != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void j(int i) {
        super.j(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f2268a[i2].d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void k(int i) {
        super.k(i);
        for (int i2 = 0; i2 < this.i; i2++) {
            this.f2268a[i2].d(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void b(RecyclerView recyclerView, int i, int i2) {
        c(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2) {
        c(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView) {
        this.h.a();
        o();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        c(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
        c(i, i2, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void c(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.f2272e
            if (r0 == 0) goto L9
            int r0 = r6.K()
            goto Ld
        L9:
            int r0 = r6.L()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.h
            r4.b(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.h
            r9.a(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.h
            r7.b(r8, r4)
            goto L41
        L36:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.h
            r9.a(r7, r8)
            goto L41
        L3c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.h
            r9.b(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.f2272e
            if (r7 == 0) goto L4d
            int r7 = r6.L()
            goto L51
        L4d:
            int r7 = r6.K()
        L51:
            if (r3 > r7) goto L56
            r6.o()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.c(int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    private int a(RecyclerView.p pVar, f fVar, RecyclerView.t tVar) {
        int i;
        int i2;
        int iC;
        int iR;
        c cVarA;
        int iE;
        int i3;
        int iE2;
        int iE3;
        boolean zN;
        ?? r9 = 0;
        this.m.set(0, this.i, true);
        if (this.l.i) {
            i2 = fVar.f2381e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            if (fVar.f2381e == 1) {
                i = fVar.g + fVar.f2378b;
            } else {
                i = fVar.f - fVar.f2378b;
            }
            i2 = i;
        }
        a(fVar.f2381e, i2);
        if (this.f2272e) {
            iC = this.f2269b.d();
        } else {
            iC = this.f2269b.c();
        }
        int i4 = iC;
        boolean z = false;
        while (fVar.a(tVar) && (this.l.i || !this.m.isEmpty())) {
            View viewA = fVar.a(pVar);
            b bVar = (b) viewA.getLayoutParams();
            int iF = bVar.f();
            int iC2 = this.h.c(iF);
            boolean z2 = iC2 == -1;
            if (z2) {
                cVarA = bVar.f2291b ? this.f2268a[r9] : a(fVar);
                this.h.a(iF, cVarA);
            } else {
                cVarA = this.f2268a[iC2];
            }
            c cVar = cVarA;
            bVar.f2290a = cVar;
            if (fVar.f2381e == 1) {
                b(viewA);
            } else {
                b(viewA, (int) r9);
            }
            a(viewA, bVar, (boolean) r9);
            if (fVar.f2381e == 1) {
                int iR2 = bVar.f2291b ? r(i4) : cVar.b(i4);
                int iE4 = this.f2269b.e(viewA) + iR2;
                if (z2 && bVar.f2291b) {
                    LazySpanLookup.FullSpanItem fullSpanItemN = n(iR2);
                    fullSpanItemN.f2277b = -1;
                    fullSpanItemN.f2276a = iF;
                    this.h.a(fullSpanItemN);
                }
                i3 = iE4;
                iE = iR2;
            } else {
                int iQ = bVar.f2291b ? q(i4) : cVar.a(i4);
                iE = iQ - this.f2269b.e(viewA);
                if (z2 && bVar.f2291b) {
                    LazySpanLookup.FullSpanItem fullSpanItemO = o(iQ);
                    fullSpanItemO.f2277b = 1;
                    fullSpanItemO.f2276a = iF;
                    this.h.a(fullSpanItemO);
                }
                i3 = iQ;
            }
            if (bVar.f2291b && fVar.f2380d == -1) {
                if (z2) {
                    this.E = true;
                } else {
                    if (fVar.f2381e == 1) {
                        zN = m();
                    } else {
                        zN = n();
                    }
                    if (!zN) {
                        LazySpanLookup.FullSpanItem fullSpanItemF = this.h.f(iF);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f2279d = true;
                        }
                        this.E = true;
                    }
                }
            }
            a(viewA, bVar, fVar);
            if (j() && this.j == 1) {
                int iD = bVar.f2291b ? this.f2270c.d() : this.f2270c.d() - (((this.i - 1) - cVar.f2296e) * this.k);
                iE3 = iD;
                iE2 = iD - this.f2270c.e(viewA);
            } else {
                int iC3 = bVar.f2291b ? this.f2270c.c() : (cVar.f2296e * this.k) + this.f2270c.c();
                iE2 = iC3;
                iE3 = this.f2270c.e(viewA) + iC3;
            }
            if (this.j == 1) {
                a(viewA, iE2, iE, iE3, i3);
            } else {
                a(viewA, iE, iE2, i3, iE3);
            }
            if (bVar.f2291b) {
                a(this.l.f2381e, i2);
            } else {
                a(cVar, this.l.f2381e, i2);
            }
            a(pVar, this.l);
            if (this.l.h && viewA.hasFocusable()) {
                if (bVar.f2291b) {
                    this.m.clear();
                } else {
                    this.m.set(cVar.f2296e, false);
                }
            }
            z = true;
            r9 = 0;
        }
        if (!z) {
            a(pVar, this.l);
        }
        if (this.l.f2381e == -1) {
            iR = this.f2269b.c() - q(this.f2269b.c());
        } else {
            iR = r(this.f2269b.d()) - this.f2269b.d();
        }
        if (iR > 0) {
            return Math.min(fVar.f2378b, iR);
        }
        return 0;
    }

    private LazySpanLookup.FullSpanItem n(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f2278c = new int[this.i];
        for (int i2 = 0; i2 < this.i; i2++) {
            fullSpanItem.f2278c[i2] = i - this.f2268a[i2].b(i);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem o(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.f2278c = new int[this.i];
        for (int i2 = 0; i2 < this.i; i2++) {
            fullSpanItem.f2278c[i2] = this.f2268a[i2].a(i) - i;
        }
        return fullSpanItem;
    }

    private void a(View view, b bVar, f fVar) {
        if (fVar.f2381e == 1) {
            if (bVar.f2291b) {
                p(view);
                return;
            } else {
                bVar.f2290a.b(view);
                return;
            }
        }
        if (bVar.f2291b) {
            q(view);
        } else {
            bVar.f2290a.a(view);
        }
    }

    private void a(RecyclerView.p pVar, f fVar) {
        int iMin;
        int iMin2;
        if (!fVar.f2377a || fVar.i) {
            return;
        }
        if (fVar.f2378b == 0) {
            if (fVar.f2381e == -1) {
                b(pVar, fVar.g);
                return;
            } else {
                a(pVar, fVar.f);
                return;
            }
        }
        if (fVar.f2381e == -1) {
            int iP = fVar.f - p(fVar.f);
            if (iP < 0) {
                iMin2 = fVar.g;
            } else {
                iMin2 = fVar.g - Math.min(iP, fVar.f2378b);
            }
            b(pVar, iMin2);
            return;
        }
        int iS = s(fVar.g) - fVar.g;
        if (iS < 0) {
            iMin = fVar.f;
        } else {
            iMin = Math.min(iS, fVar.f2378b) + fVar.f;
        }
        a(pVar, iMin);
    }

    private void p(View view) {
        for (int i = this.i - 1; i >= 0; i--) {
            this.f2268a[i].b(view);
        }
    }

    private void q(View view) {
        for (int i = this.i - 1; i >= 0; i--) {
            this.f2268a[i].a(view);
        }
    }

    private void a(int i, int i2) {
        for (int i3 = 0; i3 < this.i; i3++) {
            if (!this.f2268a[i3].f2292a.isEmpty()) {
                a(this.f2268a[i3], i, i2);
            }
        }
    }

    private void a(c cVar, int i, int i2) {
        int i3 = cVar.i();
        if (i == -1) {
            if (cVar.b() + i3 <= i2) {
                this.m.set(cVar.f2296e, false);
            }
        } else if (cVar.d() - i3 >= i2) {
            this.m.set(cVar.f2296e, false);
        }
    }

    private int p(int i) {
        int iA = this.f2268a[0].a(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int iA2 = this.f2268a[i2].a(i);
            if (iA2 > iA) {
                iA = iA2;
            }
        }
        return iA;
    }

    private int q(int i) {
        int iA = this.f2268a[0].a(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int iA2 = this.f2268a[i2].a(i);
            if (iA2 < iA) {
                iA = iA2;
            }
        }
        return iA;
    }

    boolean m() {
        int iB = this.f2268a[0].b(Integer.MIN_VALUE);
        for (int i = 1; i < this.i; i++) {
            if (this.f2268a[i].b(Integer.MIN_VALUE) != iB) {
                return false;
            }
        }
        return true;
    }

    boolean n() {
        int iA = this.f2268a[0].a(Integer.MIN_VALUE);
        for (int i = 1; i < this.i; i++) {
            if (this.f2268a[i].a(Integer.MIN_VALUE) != iA) {
                return false;
            }
        }
        return true;
    }

    private int r(int i) {
        int iB = this.f2268a[0].b(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int iB2 = this.f2268a[i2].b(i);
            if (iB2 > iB) {
                iB = iB2;
            }
        }
        return iB;
    }

    private int s(int i) {
        int iB = this.f2268a[0].b(i);
        for (int i2 = 1; i2 < this.i; i2++) {
            int iB2 = this.f2268a[i2].b(i);
            if (iB2 < iB) {
                iB = iB2;
            }
        }
        return iB;
    }

    private void a(RecyclerView.p pVar, int i) {
        while (v() > 0) {
            View viewI = i(0);
            if (this.f2269b.b(viewI) > i || this.f2269b.c(viewI) > i) {
                return;
            }
            b bVar = (b) viewI.getLayoutParams();
            if (bVar.f2291b) {
                for (int i2 = 0; i2 < this.i; i2++) {
                    if (this.f2268a[i2].f2292a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.i; i3++) {
                    this.f2268a[i3].h();
                }
            } else if (bVar.f2290a.f2292a.size() == 1) {
                return;
            } else {
                bVar.f2290a.h();
            }
            a(viewI, pVar);
        }
    }

    private void b(RecyclerView.p pVar, int i) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            View viewI = i(iV);
            if (this.f2269b.a(viewI) < i || this.f2269b.d(viewI) < i) {
                return;
            }
            b bVar = (b) viewI.getLayoutParams();
            if (bVar.f2291b) {
                for (int i2 = 0; i2 < this.i; i2++) {
                    if (this.f2268a[i2].f2292a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.i; i3++) {
                    this.f2268a[i3].g();
                }
            } else if (bVar.f2290a.f2292a.size() == 1) {
                return;
            } else {
                bVar.f2290a.g();
            }
            a(viewI, pVar);
        }
    }

    private boolean t(int i) {
        if (this.j == 0) {
            return (i == -1) != this.f2272e;
        }
        return ((i == -1) == this.f2272e) == j();
    }

    private c a(f fVar) {
        int i;
        int i2;
        int i3 = -1;
        if (t(fVar.f2381e)) {
            i = this.i - 1;
            i2 = -1;
        } else {
            i = 0;
            i3 = this.i;
            i2 = 1;
        }
        c cVar = null;
        if (fVar.f2381e == 1) {
            int i4 = Integer.MAX_VALUE;
            int iC = this.f2269b.c();
            while (i != i3) {
                c cVar2 = this.f2268a[i];
                int iB = cVar2.b(iC);
                if (iB < i4) {
                    cVar = cVar2;
                    i4 = iB;
                }
                i += i2;
            }
            return cVar;
        }
        int i5 = Integer.MIN_VALUE;
        int iD = this.f2269b.d();
        while (i != i3) {
            c cVar3 = this.f2268a[i];
            int iA = cVar3.a(iD);
            if (iA > i5) {
                cVar = cVar3;
                i5 = iA;
            }
            i += i2;
        }
        return cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean f() {
        return this.j == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean e() {
        return this.j == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        return c(i, pVar, tVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        return c(i, pVar, tVar);
    }

    private int u(int i) {
        if (v() == 0) {
            return this.f2272e ? 1 : -1;
        }
        return (i < L()) != this.f2272e ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s.b
    public PointF d(int i) {
        int iU = u(i);
        PointF pointF = new PointF();
        if (iU == 0) {
            return null;
        }
        if (this.j == 0) {
            pointF.x = iU;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iU;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void e(int i) {
        SavedState savedState = this.A;
        if (savedState != null && savedState.f2280a != i) {
            this.A.b();
        }
        this.f = i;
        this.g = Integer.MIN_VALUE;
        o();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(int i, int i2, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        int iB;
        int iA;
        if (this.j != 0) {
            i = i2;
        }
        if (v() == 0 || i == 0) {
            return;
        }
        a(i, tVar);
        int[] iArr = this.G;
        if (iArr == null || iArr.length < this.i) {
            this.G = new int[this.i];
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.i; i4++) {
            if (this.l.f2380d == -1) {
                iB = this.l.f;
                iA = this.f2268a[i4].a(this.l.f);
            } else {
                iB = this.f2268a[i4].b(this.l.g);
                iA = this.l.g;
            }
            int i5 = iB - iA;
            if (i5 >= 0) {
                this.G[i3] = i5;
                i3++;
            }
        }
        Arrays.sort(this.G, 0, i3);
        for (int i6 = 0; i6 < i3 && this.l.a(tVar); i6++) {
            aVar.b(this.l.f2379c, this.G[i6]);
            this.l.f2379c += this.l.f2380d;
        }
    }

    void a(int i, RecyclerView.t tVar) {
        int iL;
        int i2;
        if (i > 0) {
            iL = K();
            i2 = 1;
        } else {
            iL = L();
            i2 = -1;
        }
        this.l.f2377a = true;
        b(iL, tVar);
        m(i2);
        f fVar = this.l;
        fVar.f2379c = iL + fVar.f2380d;
        this.l.f2378b = Math.abs(i);
    }

    int c(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (v() == 0 || i == 0) {
            return 0;
        }
        a(i, tVar);
        int iA = a(pVar, this.l, tVar);
        if (this.l.f2378b >= iA) {
            i = i < 0 ? -iA : iA;
        }
        this.f2269b.a(-i);
        this.o = this.f2272e;
        this.l.f2378b = 0;
        a(pVar, this.l);
        return i;
    }

    int K() {
        int iV = v();
        if (iV == 0) {
            return 0;
        }
        return d(i(iV - 1));
    }

    int L() {
        if (v() == 0) {
            return 0;
        }
        return d(i(0));
    }

    private int v(int i) {
        int iV = v();
        for (int i2 = 0; i2 < iV; i2++) {
            int iD = d(i(i2));
            if (iD >= 0 && iD < i) {
                return iD;
            }
        }
        return 0;
    }

    private int w(int i) {
        for (int iV = v() - 1; iV >= 0; iV--) {
            int iD = d(i(iV));
            if (iD >= 0 && iD < i) {
                return iD;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a() {
        if (this.j == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public boolean a(RecyclerView.j jVar) {
        return jVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public View a(View view, int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        View viewE;
        int iL;
        int iK;
        int iK2;
        int iK3;
        View viewA;
        if (v() == 0 || (viewE = e(view)) == null) {
            return null;
        }
        N();
        int iX = x(i);
        if (iX == Integer.MIN_VALUE) {
            return null;
        }
        b bVar = (b) viewE.getLayoutParams();
        boolean z = bVar.f2291b;
        c cVar = bVar.f2290a;
        if (iX == 1) {
            iL = K();
        } else {
            iL = L();
        }
        b(iL, tVar);
        m(iX);
        f fVar = this.l;
        fVar.f2379c = fVar.f2380d + iL;
        this.l.f2378b = (int) (this.f2269b.f() * 0.33333334f);
        this.l.h = true;
        this.l.f2377a = false;
        a(pVar, this.l, tVar);
        this.o = this.f2272e;
        if (!z && (viewA = cVar.a(iL, iX)) != null && viewA != viewE) {
            return viewA;
        }
        if (t(iX)) {
            for (int i2 = this.i - 1; i2 >= 0; i2--) {
                View viewA2 = this.f2268a[i2].a(iL, iX);
                if (viewA2 != null && viewA2 != viewE) {
                    return viewA2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.i; i3++) {
                View viewA3 = this.f2268a[i3].a(iL, iX);
                if (viewA3 != null && viewA3 != viewE) {
                    return viewA3;
                }
            }
        }
        boolean z2 = (this.f2271d ^ true) == (iX == -1);
        if (!z) {
            if (z2) {
                iK3 = cVar.j();
            } else {
                iK3 = cVar.k();
            }
            View viewC = c(iK3);
            if (viewC != null && viewC != viewE) {
                return viewC;
            }
        }
        if (t(iX)) {
            for (int i4 = this.i - 1; i4 >= 0; i4--) {
                if (i4 != cVar.f2296e) {
                    if (z2) {
                        iK2 = this.f2268a[i4].j();
                    } else {
                        iK2 = this.f2268a[i4].k();
                    }
                    View viewC2 = c(iK2);
                    if (viewC2 != null && viewC2 != viewE) {
                        return viewC2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.i; i5++) {
                if (z2) {
                    iK = this.f2268a[i5].j();
                } else {
                    iK = this.f2268a[i5].k();
                }
                View viewC3 = c(iK);
                if (viewC3 != null && viewC3 != viewE) {
                    return viewC3;
                }
            }
        }
        return null;
    }

    private int x(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.j == 1) ? 1 : Integer.MIN_VALUE : this.j == 0 ? 1 : Integer.MIN_VALUE : this.j == 1 ? -1 : Integer.MIN_VALUE : this.j == 0 ? -1 : Integer.MIN_VALUE : (this.j != 1 && j()) ? -1 : 1 : (this.j != 1 && j()) ? 1 : -1;
    }

    public static class b extends RecyclerView.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c f2290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2291b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(int i, int i2) {
            super(i, i2);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public boolean a() {
            return this.f2291b;
        }

        public final int b() {
            c cVar = this.f2290a;
            if (cVar == null) {
                return -1;
            }
            return cVar.f2296e;
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ArrayList<View> f2292a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2293b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2294c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2295d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f2296e;

        c(int i) {
            this.f2296e = i;
        }

        int a(int i) {
            int i2 = this.f2293b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2292a.size() == 0) {
                return i;
            }
            a();
            return this.f2293b;
        }

        void a() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            View view = this.f2292a.get(0);
            b bVarC = c(view);
            this.f2293b = StaggeredGridLayoutManager.this.f2269b.a(view);
            if (bVarC.f2291b && (fullSpanItemF = StaggeredGridLayoutManager.this.h.f(bVarC.f())) != null && fullSpanItemF.f2277b == -1) {
                this.f2293b -= fullSpanItemF.a(this.f2296e);
            }
        }

        int b() {
            int i = this.f2293b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            a();
            return this.f2293b;
        }

        int b(int i) {
            int i2 = this.f2294c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f2292a.size() == 0) {
                return i;
            }
            c();
            return this.f2294c;
        }

        void c() {
            LazySpanLookup.FullSpanItem fullSpanItemF;
            ArrayList<View> arrayList = this.f2292a;
            View view = arrayList.get(arrayList.size() - 1);
            b bVarC = c(view);
            this.f2294c = StaggeredGridLayoutManager.this.f2269b.b(view);
            if (bVarC.f2291b && (fullSpanItemF = StaggeredGridLayoutManager.this.h.f(bVarC.f())) != null && fullSpanItemF.f2277b == 1) {
                this.f2294c += fullSpanItemF.a(this.f2296e);
            }
        }

        int d() {
            int i = this.f2294c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            c();
            return this.f2294c;
        }

        void a(View view) {
            b bVarC = c(view);
            bVarC.f2290a = this;
            this.f2292a.add(0, view);
            this.f2293b = Integer.MIN_VALUE;
            if (this.f2292a.size() == 1) {
                this.f2294c = Integer.MIN_VALUE;
            }
            if (bVarC.d() || bVarC.e()) {
                this.f2295d += StaggeredGridLayoutManager.this.f2269b.e(view);
            }
        }

        void b(View view) {
            b bVarC = c(view);
            bVarC.f2290a = this;
            this.f2292a.add(view);
            this.f2294c = Integer.MIN_VALUE;
            if (this.f2292a.size() == 1) {
                this.f2293b = Integer.MIN_VALUE;
            }
            if (bVarC.d() || bVarC.e()) {
                this.f2295d += StaggeredGridLayoutManager.this.f2269b.e(view);
            }
        }

        void a(boolean z, int i) {
            int iA;
            if (z) {
                iA = b(Integer.MIN_VALUE);
            } else {
                iA = a(Integer.MIN_VALUE);
            }
            e();
            if (iA == Integer.MIN_VALUE) {
                return;
            }
            if (!z || iA >= StaggeredGridLayoutManager.this.f2269b.d()) {
                if (z || iA <= StaggeredGridLayoutManager.this.f2269b.c()) {
                    if (i != Integer.MIN_VALUE) {
                        iA += i;
                    }
                    this.f2294c = iA;
                    this.f2293b = iA;
                }
            }
        }

        void e() {
            this.f2292a.clear();
            f();
            this.f2295d = 0;
        }

        void f() {
            this.f2293b = Integer.MIN_VALUE;
            this.f2294c = Integer.MIN_VALUE;
        }

        void c(int i) {
            this.f2293b = i;
            this.f2294c = i;
        }

        void g() {
            int size = this.f2292a.size();
            View viewRemove = this.f2292a.remove(size - 1);
            b bVarC = c(viewRemove);
            bVarC.f2290a = null;
            if (bVarC.d() || bVarC.e()) {
                this.f2295d -= StaggeredGridLayoutManager.this.f2269b.e(viewRemove);
            }
            if (size == 1) {
                this.f2293b = Integer.MIN_VALUE;
            }
            this.f2294c = Integer.MIN_VALUE;
        }

        void h() {
            View viewRemove = this.f2292a.remove(0);
            b bVarC = c(viewRemove);
            bVarC.f2290a = null;
            if (this.f2292a.size() == 0) {
                this.f2294c = Integer.MIN_VALUE;
            }
            if (bVarC.d() || bVarC.e()) {
                this.f2295d -= StaggeredGridLayoutManager.this.f2269b.e(viewRemove);
            }
            this.f2293b = Integer.MIN_VALUE;
        }

        public int i() {
            return this.f2295d;
        }

        b c(View view) {
            return (b) view.getLayoutParams();
        }

        void d(int i) {
            int i2 = this.f2293b;
            if (i2 != Integer.MIN_VALUE) {
                this.f2293b = i2 + i;
            }
            int i3 = this.f2294c;
            if (i3 != Integer.MIN_VALUE) {
                this.f2294c = i3 + i;
            }
        }

        public int j() {
            if (StaggeredGridLayoutManager.this.f2271d) {
                return a(this.f2292a.size() - 1, -1, true);
            }
            return a(0, this.f2292a.size(), true);
        }

        public int k() {
            if (StaggeredGridLayoutManager.this.f2271d) {
                return a(0, this.f2292a.size(), true);
            }
            return a(this.f2292a.size() - 1, -1, true);
        }

        int a(int i, int i2, boolean z, boolean z2, boolean z3) {
            int iC = StaggeredGridLayoutManager.this.f2269b.c();
            int iD = StaggeredGridLayoutManager.this.f2269b.d();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f2292a.get(i);
                int iA = StaggeredGridLayoutManager.this.f2269b.a(view);
                int iB = StaggeredGridLayoutManager.this.f2269b.b(view);
                boolean z4 = false;
                boolean z5 = !z3 ? iA >= iD : iA > iD;
                if (!z3 ? iB > iC : iB >= iC) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (iA >= iC && iB <= iD) {
                            return StaggeredGridLayoutManager.this.d(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.d(view);
                        }
                        if (iA < iC || iB > iD) {
                            return StaggeredGridLayoutManager.this.d(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        int a(int i, int i2, boolean z) {
            return a(i, i2, false, false, z);
        }

        public View a(int i, int i2) {
            View view = null;
            if (i2 == -1) {
                int size = this.f2292a.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = this.f2292a.get(i3);
                    if ((StaggeredGridLayoutManager.this.f2271d && StaggeredGridLayoutManager.this.d(view2) <= i) || ((!StaggeredGridLayoutManager.this.f2271d && StaggeredGridLayoutManager.this.d(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
            } else {
                int size2 = this.f2292a.size() - 1;
                while (size2 >= 0) {
                    View view3 = this.f2292a.get(size2);
                    if ((StaggeredGridLayoutManager.this.f2271d && StaggeredGridLayoutManager.this.d(view3) >= i) || ((!StaggeredGridLayoutManager.this.f2271d && StaggeredGridLayoutManager.this.d(view3) <= i) || !view3.hasFocusable())) {
                        break;
                    }
                    size2--;
                    view = view3;
                }
            }
            return view;
        }
    }

    static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int[] f2274a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<FullSpanItem> f2275b;

        LazySpanLookup() {
        }

        int a(int i) {
            List<FullSpanItem> list = this.f2275b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f2275b.get(size).f2276a >= i) {
                        this.f2275b.remove(size);
                    }
                }
            }
            return b(i);
        }

        int b(int i) {
            int[] iArr = this.f2274a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int iG = g(i);
            if (iG == -1) {
                int[] iArr2 = this.f2274a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f2274a.length;
            }
            int i2 = iG + 1;
            Arrays.fill(this.f2274a, i, i2, -1);
            return i2;
        }

        int c(int i) {
            int[] iArr = this.f2274a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        void a(int i, c cVar) {
            e(i);
            this.f2274a[i] = cVar.f2296e;
        }

        int d(int i) {
            int length = this.f2274a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        void e(int i) {
            int[] iArr = this.f2274a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f2274a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[d(i)];
                this.f2274a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2274a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        void a() {
            int[] iArr = this.f2274a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2275b = null;
        }

        void a(int i, int i2) {
            int[] iArr = this.f2274a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            e(i3);
            int[] iArr2 = this.f2274a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f2274a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            c(i, i2);
        }

        private void c(int i, int i2) {
            List<FullSpanItem> list = this.f2275b;
            if (list == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2275b.get(size);
                if (fullSpanItem.f2276a >= i) {
                    if (fullSpanItem.f2276a < i3) {
                        this.f2275b.remove(size);
                    } else {
                        fullSpanItem.f2276a -= i2;
                    }
                }
            }
        }

        void b(int i, int i2) {
            int[] iArr = this.f2274a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            e(i3);
            int[] iArr2 = this.f2274a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f2274a, i, i3, -1);
            d(i, i2);
        }

        private void d(int i, int i2) {
            List<FullSpanItem> list = this.f2275b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2275b.get(size);
                if (fullSpanItem.f2276a >= i) {
                    fullSpanItem.f2276a += i2;
                }
            }
        }

        private int g(int i) {
            if (this.f2275b == null) {
                return -1;
            }
            FullSpanItem fullSpanItemF = f(i);
            if (fullSpanItemF != null) {
                this.f2275b.remove(fullSpanItemF);
            }
            int size = this.f2275b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.f2275b.get(i2).f2276a >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f2275b.get(i2);
            this.f2275b.remove(i2);
            return fullSpanItem.f2276a;
        }

        public void a(FullSpanItem fullSpanItem) {
            if (this.f2275b == null) {
                this.f2275b = new ArrayList();
            }
            int size = this.f2275b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f2275b.get(i);
                if (fullSpanItem2.f2276a == fullSpanItem.f2276a) {
                    this.f2275b.remove(i);
                }
                if (fullSpanItem2.f2276a >= fullSpanItem.f2276a) {
                    this.f2275b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f2275b.add(fullSpanItem);
        }

        public FullSpanItem f(int i) {
            List<FullSpanItem> list = this.f2275b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f2275b.get(size);
                if (fullSpanItem.f2276a == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem a(int i, int i2, int i3, boolean z) {
            List<FullSpanItem> list = this.f2275b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f2275b.get(i4);
                if (fullSpanItem.f2276a >= i2) {
                    return null;
                }
                if (fullSpanItem.f2276a >= i && (i3 == 0 || fullSpanItem.f2277b == i3 || (z && fullSpanItem.f2279d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            };

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f2276a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f2277b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int[] f2278c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            boolean f2279d;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            FullSpanItem(Parcel parcel) {
                this.f2276a = parcel.readInt();
                this.f2277b = parcel.readInt();
                this.f2279d = parcel.readInt() == 1;
                int i = parcel.readInt();
                if (i > 0) {
                    int[] iArr = new int[i];
                    this.f2278c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            FullSpanItem() {
            }

            int a(int i) {
                int[] iArr = this.f2278c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f2276a);
                parcel.writeInt(this.f2277b);
                parcel.writeInt(this.f2279d ? 1 : 0);
                int[] iArr = this.f2278c;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f2278c);
                } else {
                    parcel.writeInt(0);
                }
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.f2276a + ", mGapDir=" + this.f2277b + ", mHasUnwantedGapAfter=" + this.f2279d + ", mGapPerSpan=" + Arrays.toString(this.f2278c) + '}';
            }
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.1
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
        int f2280a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2281b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2282c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int[] f2283d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2284e;
        int[] f;
        List<LazySpanLookup.FullSpanItem> g;
        boolean h;
        boolean i;
        boolean j;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f2280a = parcel.readInt();
            this.f2281b = parcel.readInt();
            int i = parcel.readInt();
            this.f2282c = i;
            if (i > 0) {
                int[] iArr = new int[i];
                this.f2283d = iArr;
                parcel.readIntArray(iArr);
            }
            int i2 = parcel.readInt();
            this.f2284e = i2;
            if (i2 > 0) {
                int[] iArr2 = new int[i2];
                this.f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.h = parcel.readInt() == 1;
            this.i = parcel.readInt() == 1;
            this.j = parcel.readInt() == 1;
            this.g = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.f2282c = savedState.f2282c;
            this.f2280a = savedState.f2280a;
            this.f2281b = savedState.f2281b;
            this.f2283d = savedState.f2283d;
            this.f2284e = savedState.f2284e;
            this.f = savedState.f;
            this.h = savedState.h;
            this.i = savedState.i;
            this.j = savedState.j;
            this.g = savedState.g;
        }

        void a() {
            this.f2283d = null;
            this.f2282c = 0;
            this.f2284e = 0;
            this.f = null;
            this.g = null;
        }

        void b() {
            this.f2283d = null;
            this.f2282c = 0;
            this.f2280a = -1;
            this.f2281b = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2280a);
            parcel.writeInt(this.f2281b);
            parcel.writeInt(this.f2282c);
            if (this.f2282c > 0) {
                parcel.writeIntArray(this.f2283d);
            }
            parcel.writeInt(this.f2284e);
            if (this.f2284e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.h ? 1 : 0);
            parcel.writeInt(this.i ? 1 : 0);
            parcel.writeInt(this.j ? 1 : 0);
            parcel.writeList(this.g);
        }
    }

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f2287c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f2288d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f2289e;
        int[] f;

        a() {
            a();
        }

        void a() {
            this.f2285a = -1;
            this.f2286b = Integer.MIN_VALUE;
            this.f2287c = false;
            this.f2288d = false;
            this.f2289e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        void a(c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f;
            if (iArr == null || iArr.length < length) {
                this.f = new int[StaggeredGridLayoutManager.this.f2268a.length];
            }
            for (int i = 0; i < length; i++) {
                this.f[i] = cVarArr[i].a(Integer.MIN_VALUE);
            }
        }

        void b() {
            this.f2286b = this.f2287c ? StaggeredGridLayoutManager.this.f2269b.d() : StaggeredGridLayoutManager.this.f2269b.c();
        }

        void a(int i) {
            if (this.f2287c) {
                this.f2286b = StaggeredGridLayoutManager.this.f2269b.d() - i;
            } else {
                this.f2286b = StaggeredGridLayoutManager.this.f2269b.c() + i;
            }
        }
    }
}
