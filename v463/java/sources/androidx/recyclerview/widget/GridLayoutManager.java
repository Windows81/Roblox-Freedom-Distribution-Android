package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.h.a.c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f2163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f2165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View[] f2166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final SparseIntArray f2167e;
    final SparseIntArray f;
    c g;
    final Rect h;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f2163a = false;
        this.f2164b = -1;
        this.f2167e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new a();
        this.h = new Rect();
        a(a(context, attributeSet, i, i2).f2225b);
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.f2163a = false;
        this.f2164b = -1;
        this.f2167e = new SparseIntArray();
        this.f = new SparseIntArray();
        this.g = new a();
        this.h = new Rect();
        a(i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void a(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.a(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int a(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 0) {
            return this.f2164b;
        }
        if (tVar.e() < 1) {
            return 0;
        }
        return a(pVar, tVar, tVar.e() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public int b(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.i == 1) {
            return this.f2164b;
        }
        if (tVar.e() < 1) {
            return 0;
        }
        return a(pVar, tVar, tVar.e() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.p pVar, RecyclerView.t tVar, View view, androidx.core.h.a.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, cVar);
            return;
        }
        b bVar = (b) layoutParams;
        int iA = a(pVar, tVar, bVar.f());
        if (this.i == 0) {
            cVar.b(c.b.a(bVar.a(), bVar.b(), iA, 1, this.f2164b > 1 && bVar.b() == this.f2164b, false));
        } else {
            cVar.b(c.b.a(iA, 1, bVar.a(), bVar.b(), this.f2164b > 1 && bVar.b() == this.f2164b, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public void c(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (tVar.a()) {
            L();
        }
        super.c(pVar, tVar);
        K();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView.t tVar) {
        super.a(tVar);
        this.f2163a = false;
    }

    private void K() {
        this.f2167e.clear();
        this.f.clear();
    }

    private void L() {
        int iV = v();
        for (int i = 0; i < iV; i++) {
            b bVar = (b) i(i).getLayoutParams();
            int iF = bVar.f();
            this.f2167e.put(iF, bVar.b());
            this.f.put(iF, bVar.a());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2) {
        this.g.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView) {
        this.g.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void b(RecyclerView recyclerView, int i, int i2) {
        this.g.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.g.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(RecyclerView recyclerView, int i, int i2, int i3) {
        this.g.a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public RecyclerView.j a() {
        if (this.i == 0) {
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

    private void M() {
        int iZ;
        int iB;
        if (g() == 1) {
            iZ = y() - C();
            iB = A();
        } else {
            iZ = z() - D();
            iB = B();
        }
        m(iZ - iB);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public void a(Rect rect, int i, int i2) {
        int iA;
        int iA2;
        if (this.f2165c == null) {
            super.a(rect, i, i2);
        }
        int iA3 = A() + C();
        int iB = B() + D();
        if (this.i == 1) {
            iA2 = a(i2, rect.height() + iB, G());
            int[] iArr = this.f2165c;
            iA = a(i, iArr[iArr.length - 1] + iA3, F());
        } else {
            iA = a(i, rect.width() + iA3, F());
            int[] iArr2 = this.f2165c;
            iA2 = a(i2, iArr2[iArr2.length - 1] + iB, G());
        }
        f(iA, iA2);
    }

    private void m(int i) {
        this.f2165c = a(this.f2165c, this.f2164b, i);
    }

    static int[] a(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    int a(int i, int i2) {
        if (this.i == 1 && h()) {
            int[] iArr = this.f2165c;
            int i3 = this.f2164b;
            return iArr[i3 - i] - iArr[(i3 - i) - i2];
        }
        int[] iArr2 = this.f2165c;
        return iArr2[i2 + i] - iArr2[i];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.a aVar, int i) {
        super.a(pVar, tVar, aVar, i);
        M();
        if (tVar.e() > 0 && !tVar.a()) {
            b(pVar, tVar, aVar, i);
        }
        N();
    }

    private void N() {
        View[] viewArr = this.f2166d;
        if (viewArr == null || viewArr.length != this.f2164b) {
            this.f2166d = new View[this.f2164b];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int a(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        M();
        N();
        return super.a(i, pVar, tVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public int b(int i, RecyclerView.p pVar, RecyclerView.t tVar) {
        M();
        N();
        return super.b(i, pVar, tVar);
    }

    private void b(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.a aVar, int i) {
        boolean z = i == 1;
        int iB = b(pVar, tVar, aVar.f2181b);
        if (z) {
            while (iB > 0 && aVar.f2181b > 0) {
                aVar.f2181b--;
                iB = b(pVar, tVar, aVar.f2181b);
            }
            return;
        }
        int iE = tVar.e() - 1;
        int i2 = aVar.f2181b;
        while (i2 < iE) {
            int i3 = i2 + 1;
            int iB2 = b(pVar, tVar, i3);
            if (iB2 <= iB) {
                break;
            }
            i2 = i3;
            iB = iB2;
        }
        aVar.f2181b = i2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
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
            if (iD2 >= 0 && iD2 < i3 && b(pVar, tVar, iD2) == 0) {
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

    private int a(RecyclerView.p pVar, RecyclerView.t tVar, int i) {
        if (!tVar.a()) {
            return this.g.c(i, this.f2164b);
        }
        int iB = pVar.b(i);
        if (iB == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        return this.g.c(iB, this.f2164b);
    }

    private int b(RecyclerView.p pVar, RecyclerView.t tVar, int i) {
        if (!tVar.a()) {
            return this.g.b(i, this.f2164b);
        }
        int i2 = this.f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iB = pVar.b(i);
        if (iB == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        return this.g.b(iB, this.f2164b);
    }

    private int c(RecyclerView.p pVar, RecyclerView.t tVar, int i) {
        if (!tVar.a()) {
            return this.g.a(i);
        }
        int i2 = this.f2167e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int iB = pVar.b(i);
        if (iB == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        return this.g.a(iB);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.t tVar, LinearLayoutManager.c cVar, RecyclerView.i.a aVar) {
        int iA = this.f2164b;
        for (int i = 0; i < this.f2164b && cVar.a(tVar) && iA > 0; i++) {
            int i2 = cVar.f2192d;
            aVar.b(i2, Math.max(0, cVar.g));
            iA -= this.g.a(i2);
            cVar.f2192d += cVar.f2193e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    void a(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int iF;
        int iF2;
        int iF3;
        int iA;
        int iA2;
        boolean z;
        View viewA;
        int i6 = this.j.i();
        boolean z2 = i6 != 1073741824;
        int i7 = v() > 0 ? this.f2165c[this.f2164b] : 0;
        if (z2) {
            M();
        }
        boolean z3 = cVar.f2193e == 1;
        int iB = this.f2164b;
        if (!z3) {
            iB = b(pVar, tVar, cVar.f2192d) + c(pVar, tVar, cVar.f2192d);
        }
        int i8 = 0;
        int i9 = 0;
        while (i9 < this.f2164b && cVar.a(tVar) && iB > 0) {
            int i10 = cVar.f2192d;
            int iC = c(pVar, tVar, i10);
            if (iC > this.f2164b) {
                throw new IllegalArgumentException("Item at position " + i10 + " requires " + iC + " spans but GridLayoutManager has only " + this.f2164b + " spans.");
            }
            iB -= iC;
            if (iB < 0 || (viewA = cVar.a(pVar)) == null) {
                break;
            }
            i8 += iC;
            this.f2166d[i9] = viewA;
            i9++;
        }
        if (i9 == 0) {
            bVar.f2186b = true;
            return;
        }
        float f = 0.0f;
        int i11 = i9;
        a(pVar, tVar, i9, i8, z3);
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            View view = this.f2166d[i13];
            if (cVar.k != null) {
                z = false;
                if (z3) {
                    a(view);
                } else {
                    a(view, 0);
                }
            } else if (z3) {
                b(view);
                z = false;
            } else {
                z = false;
                b(view, 0);
            }
            b(view, this.h);
            a(view, i6, z);
            int iE = this.j.e(view);
            if (iE > i12) {
                i12 = iE;
            }
            float f2 = (this.j.f(view) * 1.0f) / ((b) view.getLayoutParams()).f2169b;
            if (f2 > f) {
                f = f2;
            }
        }
        if (z2) {
            a(f, i7);
            i12 = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                View view2 = this.f2166d[i14];
                a(view2, 1073741824, true);
                int iE2 = this.j.e(view2);
                if (iE2 > i12) {
                    i12 = iE2;
                }
            }
        }
        for (int i15 = 0; i15 < i11; i15++) {
            View view3 = this.f2166d[i15];
            if (this.j.e(view3) != i12) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.f2229d;
                int i16 = rect.top + rect.bottom + bVar2.topMargin + bVar2.bottomMargin;
                int i17 = rect.left + rect.right + bVar2.leftMargin + bVar2.rightMargin;
                int iA3 = a(bVar2.f2168a, bVar2.f2169b);
                if (this.i == 1) {
                    iA2 = a(iA3, 1073741824, i17, bVar2.width, false);
                    iA = View.MeasureSpec.makeMeasureSpec(i12 - i16, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12 - i17, 1073741824);
                    iA = a(iA3, 1073741824, i16, bVar2.height, false);
                    iA2 = iMakeMeasureSpec;
                }
                a(view3, iA2, iA, true);
            }
        }
        int i18 = 0;
        bVar.f2185a = i12;
        if (this.i == 1) {
            if (cVar.f == -1) {
                int i19 = cVar.f2190b;
                int i20 = i19 - i12;
                i2 = 0;
                i = 0;
                i4 = i20;
                i3 = i19;
            } else {
                i4 = cVar.f2190b;
                i3 = i4 + i12;
                i2 = 0;
                i = 0;
            }
        } else {
            if (cVar.f == -1) {
                int i21 = cVar.f2190b;
                i2 = i21 - i12;
                i = i21;
            } else {
                int i22 = cVar.f2190b;
                i = i22 + i12;
                i2 = i22;
            }
            i3 = 0;
            i4 = 0;
        }
        while (i18 < i11) {
            View view4 = this.f2166d[i18];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.i == 1) {
                if (h()) {
                    int iA4 = A() + this.f2165c[this.f2164b - bVar3.f2168a];
                    iF3 = i3;
                    iF2 = iA4;
                    iF = iA4 - this.j.f(view4);
                } else {
                    int iA5 = A() + this.f2165c[bVar3.f2168a];
                    iF3 = i3;
                    iF = iA5;
                    iF2 = this.j.f(view4) + iA5;
                }
                i5 = i4;
            } else {
                int iB2 = B() + this.f2165c[bVar3.f2168a];
                i5 = iB2;
                iF = i2;
                iF2 = i;
                iF3 = this.j.f(view4) + iB2;
            }
            a(view4, iF, i5, iF2, iF3);
            if (bVar3.d() || bVar3.e()) {
                bVar.f2187c = true;
            }
            bVar.f2188d |= view4.hasFocusable();
            i18++;
            i3 = iF3;
            i2 = iF;
            i = iF2;
            i4 = i5;
        }
        Arrays.fill(this.f2166d, (Object) null);
    }

    private void a(View view, int i, boolean z) {
        int iA;
        int iA2;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f2229d;
        int i2 = rect.top + rect.bottom + bVar.topMargin + bVar.bottomMargin;
        int i3 = rect.left + rect.right + bVar.leftMargin + bVar.rightMargin;
        int iA3 = a(bVar.f2168a, bVar.f2169b);
        if (this.i == 1) {
            iA2 = a(iA3, i, i3, bVar.width, false);
            iA = a(this.j.f(), x(), i2, bVar.height, true);
        } else {
            int iA4 = a(iA3, i, i2, bVar.height, false);
            int iA5 = a(this.j.f(), w(), i3, bVar.width, true);
            iA = iA4;
            iA2 = iA5;
        }
        a(view, iA2, iA, z);
    }

    private void a(float f, int i) {
        m(Math.max(Math.round(f * this.f2164b), i));
    }

    private void a(View view, int i, int i2, boolean z) {
        boolean zB;
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        if (z) {
            zB = a(view, i, i2, jVar);
        } else {
            zB = b(view, i, i2, jVar);
        }
        if (zB) {
            view.measure(i, i2);
        }
    }

    private void a(RecyclerView.p pVar, RecyclerView.t tVar, int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5 = 0;
        int i6 = -1;
        if (z) {
            i6 = i;
            i3 = 0;
            i4 = 1;
        } else {
            i3 = i - 1;
            i4 = -1;
        }
        while (i3 != i6) {
            View view = this.f2166d[i3];
            b bVar = (b) view.getLayoutParams();
            bVar.f2169b = c(pVar, tVar, d(view));
            bVar.f2168a = i5;
            i5 += bVar.f2169b;
            i3 += i4;
        }
    }

    public void a(int i) {
        if (i == this.f2164b) {
            return;
        }
        this.f2163a = true;
        if (i < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
        this.f2164b = i;
        this.g.a();
        o();
    }

    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final SparseIntArray f2170a = new SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f2171b = false;

        public abstract int a(int i);

        public void a() {
            this.f2170a.clear();
        }

        int b(int i, int i2) {
            if (!this.f2171b) {
                return a(i, i2);
            }
            int i3 = this.f2170a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int iA = a(i, i2);
            this.f2170a.put(i, iA);
            return iA;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0031 -> B:19:0x0036). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0033 -> B:19:0x0036). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0035 -> B:19:0x0036). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int a(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.a(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.f2171b
                if (r2 == 0) goto L26
                android.util.SparseIntArray r2 = r5.f2170a
                int r2 = r2.size()
                if (r2 <= 0) goto L26
                int r2 = r5.b(r6)
                if (r2 < 0) goto L26
                android.util.SparseIntArray r3 = r5.f2170a
                int r3 = r3.get(r2)
                int r4 = r5.a(r2)
                int r3 = r3 + r4
                goto L36
            L26:
                r2 = 0
                r3 = 0
            L28:
                if (r2 >= r6) goto L39
                int r4 = r5.a(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L33
                r3 = 0
                goto L36
            L33:
                if (r3 <= r7) goto L36
                r3 = r4
            L36:
                int r2 = r2 + 1
                goto L28
            L39:
                int r0 = r0 + r3
                if (r0 > r7) goto L3d
                return r3
            L3d:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.a(int, int):int");
        }

        int b(int i) {
            int size = this.f2170a.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.f2170a.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.f2170a.size()) {
                return -1;
            }
            return this.f2170a.keyAt(i4);
        }

        public int c(int i, int i2) {
            int iA = a(i);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int iA2 = a(i5);
                i3 += iA2;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = iA2;
                }
            }
            return i3 + iA > i2 ? i4 + 1 : i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d8, code lost:
    
        if (r13 == (r2 > r15)) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0109  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View a(android.view.View r23, int r24, androidx.recyclerview.widget.RecyclerView.p r25, androidx.recyclerview.widget.RecyclerView.t r26) {
        /*
            Method dump skipped, instruction units count: 338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public boolean b() {
        return this.n == null && !this.f2163a;
    }

    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int a(int i) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int a(int i, int i2) {
            return i % i2;
        }
    }

    public static class b extends RecyclerView.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2168a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2169b;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2168a = -1;
            this.f2169b = 0;
        }

        public b(int i, int i2) {
            super(i, i2);
            this.f2168a = -1;
            this.f2169b = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2168a = -1;
            this.f2169b = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2168a = -1;
            this.f2169b = 0;
        }

        public int a() {
            return this.f2168a;
        }

        public int b() {
            return this.f2169b;
        }
    }
}
